// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

pub struct Extrema<'elt, T>
where
    T: PartialOrd,
{
    greatest: &'elt T,
    least: &'elt T,
}

impl<'elt, T> Extrema<'elt, T>
where
    T: PartialOrd,
{
    pub fn find(slice: &[T]) -> Extrema<'_, T>
    where
        T: PartialOrd,
    {
        let mut greatest = &slice[0];
        let mut least = &slice[0];

        for item in slice.iter().skip(1) {
            if item > greatest {
                greatest = item;
            }
            if item < least {
                least = item;
            }
        }
        Extrema { greatest, least }
    }
}

fn main() {
    let a = [0, -3, 0, 15, 48];
    let e = Extrema::find(&a);
    println!("e.greatest: {}, least: {}", e.greatest, e.least);
}
