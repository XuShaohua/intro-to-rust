// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

pub fn insertion_sort<T>(slice: &mut [T]) where T: PartialOrd {
    for i in 1..slice.len() {
        for j in (1..=i).rev() {
            if slice[j - 1] > slice[j] {
                slice.swap(j - 1, j);
            } else {
                break;
            }
        }
    }
}

fn main() {
    let mut nums = [0, 5, 3, 2, 2];
    insertion_sort(&mut nums);
    assert_eq!(nums, [0, 2, 2, 3, 5]);

    let mut chars: Vec<char> = "EASYQUESTION".chars().collect();
    insertion_sort(&mut chars);
    assert_eq!(
        chars,
        ['A', 'E', 'E', 'I', 'N', 'O', 'Q', 'S', 'S', 'T', 'U', 'Y']
    );
}