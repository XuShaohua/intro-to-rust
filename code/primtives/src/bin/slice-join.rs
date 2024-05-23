// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

use std::any::{Any, TypeId};

fn main() {
    // 使用字符串连接字符串
    let part1 = ["hello", "world"];
    let str1 = part1.join(", ");
    assert_eq!(TypeId::of::<String>(), (&str1 as &dyn Any).type_id());
    assert_eq!(&str1, "hello, world");

    // 直接拼接字符串
    let part2 = ["你好", "世界"];
    let str2 = part2.concat();
    assert_eq!(TypeId::of::<String>(), (&str2 as &dyn Any).type_id());
    assert_eq!(&str2, "你好世界");

    let part3 = &[[1, 2, 3], [3, 2, 1]];
    let nums = part3.join([5, 5].as_slice());
    assert_eq!(nums, [1, 2, 3, 5, 5, 3, 2, 1]);
}