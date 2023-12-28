
# Unique

`Unique` 结构体的定义是:
```rust
pub struct Unique<T: ?Sized> {
    pointer: NonNull<T>,
    _marker: PhantomData<T>,
}
```