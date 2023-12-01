// Copyright (c) 2023 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be
// found in the LICENSE file.

#include <string>

class Sheep {
 public:
  explicit Sheep(const std::string& name) : name_(name) {}

  Sheep(const Sheep& other) : name_(other.name_) { }

  Sheep& operator=(const Sheep& other) {
    name_ = other.name_;
    return *this;
  }

  const std::string& name() const { return name_; }
  void set_name(const std::string& name) { name_ = name; }

 private:
  std::string name_;
};

int main(void) {
  Sheep dolly("Dolly");

  Sheep jolly = dolly;
  jolly.set_name("Jolly");
  return 0;
}
