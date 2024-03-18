# PhantomData

使用 `PhantomData`, 用于处理编译期生命周期的问题, `PhantomData` 本身不占用内存.
以下示例中, 结构体 `S` 的大小跟 `i32` 是一致的:

```rust
use std::marker::PhantomData;
use std::mem::size_of_val;

struct S<A, B> {
    first: A,
    phantom: PhantomData<B>,
}

fn main() {
    let s: S<char, f64> = S {
        first: 'a',
        phantom: PhantomData,
    };

    println!("size of s: {}", size_of_val(&s));
}
```