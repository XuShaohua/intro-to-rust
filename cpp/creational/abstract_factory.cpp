// Copyright (c) 2023 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be
// found in the LICENSE file.

#include <iostream>
#include <string>

class IDoor {
 public:
  virtual std::string getDescription() const = 0;
};

class WoodenDoor: public IDoor {
 public:
  std::string getDescription() const override {
    return "Wooden Door";
  }
};

class IronDoor: public IDoor {
 public:
  std::string getDescription() const override {
    return "Iron Door";
  }
};

class DoorFittingExpert {
 public:
  virtual std::string getDescription() const = 0;
};

class Carpenter: public DoorFittingExpert {
 public:
  std::string getDescription() const override {
    return "I am good at fitting wooden door";
  }
};

class Welder: public DoorFittingExpert {
 public:
  std::string getDescription() const override {
    return "I am good at fitting iron door";
  }
};

class DoorFactory {
 public:
  virtual IDoor* makeDoor() = 0;
  virtual DoorFittingExpert* makeFittingExpert() = 0;
};

class WoodenDoorFactory: public DoorFactory {
 public:
  IDoor* makeDoor() override {
    return new WoodenDoor;
  }
  DoorFittingExpert* makeFittingExpert() override {
    return new Carpenter;
  }
};

class IronDoorFactory: public DoorFactory {
 public:
  IDoor* makeDoor() override {
    return new IronDoor;
  }

  DoorFittingExpert* makeFittingExpert() override {
    return new Welder;
  }
};

int main(void) {
  IronDoorFactory iron_door_factory;
  auto* door = iron_door_factory.makeDoor();
  auto* fitting_expert = iron_door_factory.makeFittingExpert();
  std::cout << fitting_expert->getDescription() << "\n"
            << "Door: " << door->getDescription() << std::endl;
  delete door;
  delete fitting_expert;

  return 0;
}
