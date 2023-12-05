// Copyright (c) 2023 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

#include <iostream>

class Bulb {
 public:
  void turnOn() {
    std::cout << "Bulb has been lit" << std::endl;
  }

  void turnOff() {
    std::cout << "Darkness!" << std::endl;
  }
};

class Command {
 public:
  void virtual execute() = 0;
  void virtual undo() = 0;
  void virtual redo() = 0;
};

class TurnOn: public Command {
 public:
  explicit TurnOn(Bulb& bulb): bulb_(bulb) {}

  void execute() override {
    bulb_.turnOn();
  }

  void undo() override {
    bulb_.turnOff();
  }

  void redo() override {
    this->execute();
  }

 private:
  Bulb& bulb_;
};

class TurnOff: public Command {
 public:
  explicit TurnOff(Bulb& bulb): bulb_(bulb) {}

  void execute() override {
    bulb_.turnOff();
  }

  void undo() override {
    bulb_.turnOn();
  }

  void redo() override {
    this->execute();
  }

 private:
  Bulb& bulb_;
};

class RemoteControl {
 public:
  void submit(Command& command) {
    command.execute();
  }
};

int main() {
  Bulb bulb;
  TurnOn turn_on(bulb);
  TurnOff turn_off(bulb);

  RemoteControl remote_control;
  remote_control.submit(turn_on);
  remote_control.submit(turn_off);

  return 0;
}