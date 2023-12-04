// Copyright (c) 2023 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

#include <iostream>

class Door {
 public:
  virtual void open() = 0;
  virtual void close() = 0;
};

class LabDoor: public Door {
 public:
  void open() override {
    std::cout << "Opening lab door" << std::endl;
  }

  void close() override {
    std::cout << "Closing the lab door" << std::endl;
  }
};

class SecureDoor {
 public:
  explicit SecureDoor(Door& door): door_(door) {}

  void open(const std::string& password) {
    if (authenticate(password)) {
      door_.open();
    } else {
      std::cout << "Big no! It's not possible!" << std::endl;
    }
  }

  void close() {
    door_.close();
  }

 private:
  bool authenticate(const std::string& password) { return password == "secret"; }

  Door& door_;
};

int main() {
  LabDoor lab_door;
  SecureDoor secure_door(lab_door);
  secure_door.open("Invalid");

  secure_door.open("secret");
  secure_door.close();

  return 0;
}