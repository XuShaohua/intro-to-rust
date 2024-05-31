// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

#![allow(dead_code)]

#[derive(Debug, Clone, Copy, Eq, PartialEq)]
enum Weekday {
    Monday,
    Tuesday,
    Wednesday,
    Thursday,
    Friday,
    Saturday,
    Sunday,
}

fn main() {
    let date = Weekday::Friday;

    let to_weekend: i32 = match date {
        Weekday::Monday => 5,
        Weekday::Tuesday => 4,
        Weekday::Wednesday => 3,
        Weekday::Thursday => 2,
        Weekday::Friday => 1,
        Weekday::Saturday => 0,

        // 把下面这一行代码注释掉并重新编译, 查看编译器报错信息.
        // 它编译失败, 并提示:
        // ^^^^ pattern `Weekday::Sunday` not covered
        Weekday::Sunday => 0,
    };

    assert_eq!(to_weekend, 1);
}
