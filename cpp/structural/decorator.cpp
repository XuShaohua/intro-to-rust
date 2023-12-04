// Copyright (c) 2023 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

#include <iostream>
#include <string>

class Coffee {
 public:
  virtual std::string getDescription() = 0;
  virtual double getCost() = 0;
};

class SimpleCoffee: public Coffee {
 public:
  std::string getDescription() override {
    return "Simple Coffee";
  }

  double getCost() override {
    return 10.0;
  }
};

class MilkCoffee: public Coffee {
 public:
  explicit MilkCoffee(Coffee& coffee): coffee_(coffee) {}

  std::string getDescription() override {
    return coffee_.getDescription() + ", milk";
  }

  double getCost() override {
    return coffee_.getCost() + 2.0;
  }
 private:
  Coffee& coffee_;
};

class WhipCoffee: public Coffee {
 public:
  explicit WhipCoffee(Coffee& coffee) : coffee_(coffee) {}

  std::string getDescription() override {
    return coffee_.getDescription() + ", whip";
  }

  double getCost() override {
    return coffee_.getCost() + 3.0;
  }

 private:
  Coffee& coffee_;
};

int main() {
  SimpleCoffee simple_coffee;
  MilkCoffee milk_coffee(simple_coffee);
  WhipCoffee whip_coffee(milk_coffee);
  std::cout << "whip coffee: " << whip_coffee.getDescription()
            << ", price: " << whip_coffee.getCost() << std::endl;

  return 0;
}