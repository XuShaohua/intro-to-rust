
# AsRef 与 AsMut

当一个类型实现了 `AsRef<T>` 后, 我们可以得到它的只读引用 `&T`;
当一个类型实现了 `AsMut<T>` 后, 我们可以得到它的可变更引用 `&mut T`.

它们的定义如下:
```rust
pub trait AsRef<T>where
    T: ?Sized,{
    // Required method
    fn as_ref(&self) -> &T;
}

pub trait AsMut<T>where
    T: ?Sized,{
    // Required method
    fn as_mut(&mut self) -> &mut T;
}
```

比如 `String` 实现了 `AsRef<str>` 及 `AsRef<[u8]>`, 所以 `String` 可以作为
`&str` 及 `&[u8]` 使用.

`Vec<T>` 也实现了 `AsRef<[T]>`, 所以它可以作为 `&[T]` 使用.