// Copyright (c) 2023 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

#include <iostream>

class Computer {
 public:
  void getElectricShock() {
    std::cout << "Ouch!" << std::endl;
  }

  void makeSound() {
    std:: cout << "Beep beep!" << std::endl;
  }

  void showLoadingScreen() {
    std::cout << "Loading ..." << std::endl;
  }

  void bam() const {
    std::cout << "Ready to be used!" << std::endl;
  }

  void closeEverything() {
    std::cout << "Bup bup bup buzzzz!" << std::endl;
  }

  void smooth() {
    std::cout << "Zzzzz" << std::endl;
  }

  void pullCurrent() {
    std::cout << "Haaah!" << std::endl;
  }
};

class ComputerFacade {
 public:
  explicit ComputerFacade(const Computer& computer): computer_(computer) {}

  void turnOn() {
    computer_.getElectricShock();
    computer_.makeSound();
    computer_.showLoadingScreen();
    computer_.bam();
  }

  void turnOff() {
    computer_.closeEverything();
    computer_.pullCurrent();
    computer_.smooth();
  }

 private:
  Computer computer_;
};

int main() {
  Computer computer;
  ComputerFacade computer_facade(computer);
  computer_facade.turnOn();
  computer_facade.turnOff();

  return 0;
}