// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

#include <assert.h>
#include <string.h>
#include <stdlib.h>

int main() {
  const char src[] = "hello";
  char dst[] = "world";
  memmove(dst, src, strlen(src));
  assert(strcmp(dst, "hello") == 0);

  memcpy(&dst[4], src, 1);
  assert(dst[4] == 'h');

  return 0;
}
