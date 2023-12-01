// Copyright (c) 2023 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be
// found in the LICENSE file.

#include <cassert>

#include <iostream>
#include <memory>
#include <string>

class President {
 public:
  static President& GetInstance() {
    static President instance;
    return instance;
  }

 private:
  President() = default;
  President(const President& other) = delete;
  President& operator=(const President& other) = delete;
};

int main(void) {
  const President& president1 = President::GetInstance();
  const President& president2 = President::GetInstance();
  assert(&president1 == &president2);

  return 0;
}
