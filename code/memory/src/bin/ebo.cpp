// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

#include <cassert>

#include<iostream>

class Empty { };

class ContainsEmpty {
 public:
  int x;
  Empty e;
};

class WithEBO: public Empty {
 public:
  int x;
};

int main() {
  Empty e1;
  Empty e2;
  assert(&e1 != &e2);
  assert(sizeof(Empty) == 1);

  assert(sizeof(ContainsEmpty) == 8);
  assert(sizeof(WithEBO) == sizeof(int));

  return 0;
}
