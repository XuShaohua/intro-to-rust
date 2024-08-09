// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

#include <stdint.h>
#include <stddef.h>
#include <assert.h>

struct linux_dirent_s {
  uint64_t u64;
  int64_t d_off;
  uint16_t d_reclen;
  char d_name[];
};

int main() {
  assert(sizeof(struct linux_dirent_s) == 24);
  return 0;
}