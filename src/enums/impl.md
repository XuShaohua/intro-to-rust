# 为枚举定义方法 Impl

与C/C++不同, Rust 可以为枚举定义方法. 这个也得益于 Rust 将数据与函数做了彻底的分离.

```rust
#[derive(Debug, Default, Clone, Copy, Eq, PartialEq)]
pub enum Weekday {
    #[default]
    Monday,
    Tuesday,
    Wednesday,
    Thursday,
    Friday,
    Saturday,
    Sunday,
}

impl Weekday {
    pub const fn is_weekend(self) -> bool {
        matches!(self, Self::Saturday | Self::Sunday)
    }
}

fn main() {
    let monday = Weekday::Monday;
    assert!(!monday.is_weekend());
}
```
