// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

#include <stdint.h>
#include <stddef.h>
#include <assert.h>

struct linux_dirent_s {
  uint64_t d_ino;
  uint64_t d_off;
  uint16_t d_reclen;
  uint8_t d_type;
  char* d_name;
};

struct linux_dirent_packed_s {
  uint64_t d_ino;
  uint64_t d_off;
  uint16_t d_reclen;
  uint8_t d_type;
  char* d_name;
} __attribute__((packed));

int main(void) {
  assert(offsetof(struct linux_dirent_s, d_name) == 24);
  assert(offsetof(struct linux_dirent_packed_s, d_name) == 19);

  return 0;
}
