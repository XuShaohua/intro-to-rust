// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

struct Fibonacci {
    current: i32,
    previous: i32,
}

impl Default for Fibonacci {
    fn default() -> Self {
        Self::new()
    }
}

impl Fibonacci {
    fn new() -> Self {
        Self {
            current: 1,
            previous: 0,
        }
    }

    #[must_use]
    fn next(&mut self) -> i32 {
        (self.current, self.previous) = (self.current + self.previous, self.current);
        self.current
    }
}

fn main() {
    let nums = &mut [1, 2, 3, 4, 5];
    nums.fill(0);
    assert_eq!(nums, &[0, 0, 0, 0, 0]);

    let mut fib = Fibonacci::new();
    nums.fill_with(|| fib.next());
    assert_eq!(nums, &[1, 2, 3, 5, 8]);
}