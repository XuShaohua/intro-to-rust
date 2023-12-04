// Copyright (c) 2023 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

#include <iostream>
#include <string>
#include <map>
#include <utility>

class KarakTea {

};

class TeaMaker {
 public:
  KarakTea make(const std::string& preference) {
    if (available_tea_.find(preference) == available_tea_.cend()) {
      available_tea_.emplace(preference, KarakTea{});
    }

    return available_tea_.at(preference);
  }

 private:
  std::map<std::string, KarakTea> available_tea_;
};

class TeaShop {
 public:
  explicit TeaShop(const TeaMaker& maker) : maker_(maker), orders_() {}

  void take_order(const std::string& tea_type, int table) {
    orders_[table] = maker_.make(tea_type);
  }
  void serve() {
    for (const auto& item : orders_) {
      std::cout << "Serving tea to table: " << item.first << std::endl;
    }
  }

 private:
  TeaMaker maker_;
  std::map<int, KarakTea> orders_;
};

int main() {
  TeaMaker maker;
  TeaShop shop(maker);
  shop.take_order("less sugar", 1);
  shop.take_order("more milk", 2);
  shop.take_order("without sugar", 3);

  shop.serve();

  return 0;
}