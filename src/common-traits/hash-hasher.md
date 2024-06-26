# Hash 与 Hasher

如果一个类型实现了 `Hash` trait, 就表示该类型的值可用在需要计算哈稀的地方.

```rust, ignore
pub trait Hash {
    // Required method
    fn hash<H>(&self, state: &mut H)
       where H: Hasher;

    // Provided method
    fn hash_slice<H>(data: &[Self], state: &mut H)
       where H: Hasher,
             Self: Sized { ... }
}
```

通常可以直接 `[derive(Hash)]` 让编译器自动实现:

```rust
#[derive(Hash)]
pub struct Point2D {
    x: i32,
    y: i32,
}
```

以上代码就相当于手动实现的:

```rust
use std::hash::{Hash, Hasher};

pub struct Point2D {
    x: i32,
    y: i32,
}

impl Hash for Point2D {
    fn hash<H: Hasher>(&self, state: &mut H) {
        self.x.hash(state);
        self.y.hash(state);
    }
}
```

比如标准库里的 `HashMap` 和 `HashSet` 都依赖于这个 trait.

## Hash 与 Eq

如果同一个类型的两个值相等, 那它们的哈稀也该应该相等.
所以平时都是一并实现这两个 trait:

```rust
#[derive(PartialEq, Eq, Hash)]
pub struct Point2D {
  x: i32,
  y: i32,
}
```

## 标准库里的 hash 函数实现

目前, Rust 标准库使用 `SipHash 1-3` 作为默认的哈稀函数, 具体可以参考以下链接:

- [sip.rs](https://github.com/rust-lang/rust/blob/master/library/core/src/hash/sip.rs)
- [SipHash wikipedia](https://en.wikipedia.org/wiki/SipHash)
- [JP Aumasson](https://www.aumasson.jp/)
