// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

#[derive(Debug, Default, Clone, PartialEq)]
pub struct Point {
    pub x: f64,
    pub y: f64,
}

pub fn encode_fixed32(dst: &mut [u8], value: u32) {
    debug_assert!(dst.len() >= 4);
    dst[..4].copy_from_slice(&value.to_le_bytes());
}

pub fn encode_fixed32_2(dst: &mut [u8], value: u32) {
    debug_assert!(dst.len() >= 4);
    dst[0] = (value & 0xff) as u8;
    dst[1] = ((value >> 8) & 0xff) as u8;
    dst[2] = ((value >> 16) & 0xff) as u8;
    dst[3] = ((value >> 24) & 0xff) as u8;
}

fn main() {
    let points = &[Point { x: 3.0, y: 4.0 }, Point { x: 4.0, y: 3.0 }];

    let mut points2 = vec![Point::default(); 2];
    points2.clone_from_slice(points);
    assert_eq!(points2, points);

    let number = 0x12345678;
    let mut bytes = [0_u8; 8];
    encode_fixed32(&mut bytes, number);
    encode_fixed32_2(&mut bytes[4..], number);
    assert_eq!(bytes[..4], bytes[4..]);
}
