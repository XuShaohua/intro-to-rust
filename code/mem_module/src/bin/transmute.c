// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

#include <stdint.h>
#include <stdlib.h>
#include <assert.h>

int main() {
  uint8_t pack[4] = {0x01, 0x02, 0x03, 0x04};
  uint32_t pack_u32 = *(uint32_t*)pack;
  assert(pack_u32 == 0x04030201);

  return 0;
}
