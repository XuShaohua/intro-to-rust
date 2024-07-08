// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

#include <assert.h>

int main() {
  int s = 42;

  {
    int* s2 = &s;
    int num = *s2;
    assert(num == 42);
    *s2 = num + 1;
  }

  assert(s == 43);
  return 0;
}
