// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

#include <assert.h>

int main(int argc, char** argv) {
  int accum;
  switch (argc) {
    case 1: {
      accum = 100;
      break;
    }
    case 2: {
      accum = 200;
      break;
    }
    case 3: {
      accum = 300;
      break;
    }
    default: {
      accum = 0;
    }
  }

  assert(accum == 100);
  
  return 0;
}