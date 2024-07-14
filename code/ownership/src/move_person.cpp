// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

#include <cstdio>
#include <cassert>

#include <string>

class Person {
public:
  explicit Person(std::string&& name) noexcept : name_(std::move(name)) {
    printf("Person(string&&) %s\n", name_.c_str());
  }

  Person(const Person& other) : name_(other.name_) {
    printf("Person(const Person&)\n");
  }

  Person(Person&& other) noexcept : name_(std::move(other.name_)) {
    printf("Person(Person&&)\n");
  }

  ~Person() = default;

  Person& operator=(const Person& other) {
    if (this == &other) {
      return *this;
    }
    this->name_ = other.name_;
    return *this;
  }

  Person& operator=(Person&& other) noexcept {
    if (this == &other) {
      return *this;
    }
    this->name_ = std::move(other.name_);
    return *this;
  }

  const std::string& name() const { return name_; }

private:
  std::string name_;
};

int main(int argc, char** argv) {
  (void)argc;
  (void)argv;

  std::string name = "Julia";
  Person p2(std::move(name));
  assert(name.empty());

  printf("creating p3\n");
  Person p3("Julia");

  // 使用 copy constructor
  printf("creating p4:\n");
  Person p4(p3);

  // 使用 move constructor
  printf("creating p5:\n");
  Person p5(std::move(p4));

  return 0;
}
