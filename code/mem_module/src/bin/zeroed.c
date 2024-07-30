// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

#include <assert.h>
#include <stdint.h>
#include <string.h>

struct point_s {
  int32_t x;
  int32_t y;
};
typedef struct point_s point_t;

int main(int argc, char** argv) {
  point_t zeroed_point;
  bzero(&zeroed_point, sizeof(point_t));
  point_t default_point = {.x = 0, .y = 0};

  return 0;
}