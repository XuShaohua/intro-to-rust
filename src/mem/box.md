
# Box

它在标准库里的定义比较简单:
```rust
/// A pointer type that uniquely owns a heap allocation of type `T`.
pub struct Box<T: ?Sized>(Unique<T>);
```
