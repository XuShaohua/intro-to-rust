// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

#include <cassert>

int addr1() {
  int x = 42;
  int& x_ptr = x;
  x_ptr += 1;
  return x;
}

int main(void) {
  assert(addr1() == 43);
  return 0;
}
