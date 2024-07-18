// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

#include <stdlib.h>
#include <stdint.h>

int main(void) {
  // let mut x = Box::new(42);
  int32_t* x = (int32_t*) malloc(sizeof(int32_t));
  *x = 42;

  // let y = &mut x;
  int32_t** y = &x;

  // *y = Box::new(41);
  int32_t* x2 = (int32_t*)malloc(sizeof(int32_t));
  *x2 = 41;
  free(x);
  x = x2;

  free(x);
  return 0;
}
