# Portable simd

```rust
#![feature(portable_simd)]
use std::simd::f32x4;

fn main() {
    let a = f32x4::splat(10.0);
    let b = f32x4::from_array([1.0, 2.0, 3.0, 4.0]);
    println!("{:?}", a + b);
}
```