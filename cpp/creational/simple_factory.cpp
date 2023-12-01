// Copyright (c) 2023 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be
// found in the LICENSE file.

class IDoor {
 public:
  virtual double width() const = 0;
  virtual double height() const = 0;
};

class WoodenDoor: public IDoor {
 public:
  WoodenDoor(double width, double height) : width_(width), height_(height) {}

  double width() const override {
    return width_;
  }
  double height() const override {
    return height_;
  }

 private:
  double width_;
  double height_;
};

class DoorFactory {
 public:
  IDoor* makeDoor(double width, double height) {
    return new WoodenDoor(width, height);
  }
};

int main(void) {
  DoorFactory factory;
  IDoor* door = factory.makeDoor(800.0, 2700.0);
  return 0;
}
