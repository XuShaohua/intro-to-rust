// Copyright (c) 2023 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

#include <iostream>

class Account {
 public:
  explicit Account(double balance) : next_account_(nullptr), balance_(balance) {}

  void setNext(Account* account) {
    next_account_ = account;
  }

  virtual const std::string& getName() const = 0;

  void pay(double amount) {
    if (this->canPay(amount)) {
      std::cout << "Paid " << amount << " using " << this->getName() << std::endl;
    } else if (this->next_account_ != nullptr) {
      std::cout << "Cannot pay using " << this->getName() << ", go to next account!" << std::endl;
      this->next_account_->pay(amount);
    } else {
      std::cerr << "None of the accounts have enough balance" << std::endl;
    }
  }

  bool canPay(double amount) const {
    return balance_ >= amount;
  }

 protected:
  Account* next_account_;
  double balance_;
};

class Bank: public Account {
 public:
  explicit Bank(double balance) : Account(balance), name_("Bank") { }

  const std::string& getName() const override { return name_; }

 private:
  std::string name_;
};

class Paypal: public Account {
 public:
  explicit Paypal(double balance) : Account(balance), name_("Paypal") { }

  const std::string& getName() const override { return name_; }

 private:
  std::string name_;
};

int main() {
  Bank* bank = new Bank(100.0);
  Paypal* paypal = new Paypal(1000.0);
  bank->setNext(paypal);

  bank->pay(259.0);

  delete bank;
  delete paypal;

  return 0;
}