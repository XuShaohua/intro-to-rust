// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

use std::cmp::Ordering;
use std::hash::{Hash, Hasher};

#[derive(Debug, Default, Clone, Copy, PartialEq, PartialOrd)]
pub struct F32(f32);

impl Eq for F32 {}

#[allow(clippy::derive_ord_xor_partial_ord)]
impl Ord for F32 {
    fn cmp(&self, other: &Self) -> Ordering {
        self.0.to_be_bytes().cmp(&other.0.to_be_bytes())
    }
}

impl Hash for F32 {
    fn hash<H: Hasher>(&self, state: &mut H) {
        self.0.to_bits().hash(state);
    }
}

#[cfg(test)]
mod tests {
    use super::F32;

    #[test]
    fn test_f32_equal() {
        let f1 = F32(std::f32::consts::PI);
        let f2 = F32(std::f32::consts::PI);
        assert_eq!(f1, f2);
    }
}