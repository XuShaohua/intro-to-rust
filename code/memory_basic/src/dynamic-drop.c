// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <stdint.h>
#include <time.h>

int main(void) {
  bool x_drop_flag = false;
  int32_t* x;

  struct timespec now;
  if (clock_gettime(CLOCK_REALTIME, &now) == -1) {
    // Ignored
  }

  int64_t millis = now.tv_sec * 1000 + now.tv_nsec / 1000000;
  if (millis % 2 == 0) {
    x = (int32_t*) malloc(sizeof(int32_t));
    *x = 42;
    x_drop_flag = true;
    printf("x: %d\n", *x);
  }

  if (x_drop_flag) {
    free(x);
  }

  return 0;
}
