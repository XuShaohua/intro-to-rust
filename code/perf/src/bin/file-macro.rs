// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

fn main() {
    let filename = file!();
    let line_num = line!();
    let column_num = column!();
    println!("filename: {filename}, line num: {line_num}, column num: {column_num}");
}