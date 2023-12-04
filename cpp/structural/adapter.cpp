// Copyright (c) 2023 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

#include <iostream>

class Lion {
 public:
  virtual void roar() const = 0;
};

class AfricanLion: public Lion {
 public:
  void roar() const override {
    std::cout << "African Lion roar()" << std::endl;
  }
};

class AsianLion: public Lion {
 public:
  void roar() const override  {
    std::cout << "Asian Lion roar()" << std::endl;
  }
};

class WildDog {
 public:
  void bark() const {
    std::cout << "Wild dog bark()" << std::endl;
  }
};

class Hunter {
 public:
  void hunt(const Lion& lion) const {
    lion.roar();
  }
};

class WildDogAdapter: public Lion {
 public:
  explicit WildDogAdapter(const WildDog& dog): dog_(dog) {}

  void roar() const override {
    dog_.bark();
  }

 private:
  WildDog dog_;
};

int main() {
  Hunter hunter;
  hunter.hunt(AfricanLion{});
  hunter.hunt(AsianLion{});
  hunter.hunt(WildDogAdapter(WildDog{}));

  return 0;
}