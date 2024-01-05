
# Deref 与 DerefMut

`Deref`, `DerefMut` trait 主要用于一些智能指针类型, 比如 `Box`, `Rc`, `Arc`.

`Deref` trait 的定义:
```rust
pub trait Deref: ?Sized {
  type Target: ?Sized;
  fn deref(&self) -> &Self::Target;
}

pub trait DerefMut: Deref {
    // Required method
    fn deref_mut(&mut self) -> &mut Self::Target;
}
```

## Deref coercion

`Box<T>` 的实现:
```rust
impl<T: ?Sized> Deref for Box<T> {
    type Target = T;

    fn deref(&self) -> &T {
        &**self
    }
}

impl<T: ?Sized> DerefMut for Box<T> {
    fn deref_mut(&mut self) -> &mut T {
        &mut **self
    }
}
```

`Vec<T>` 也有实现:
```rust
impl<T> ops::Deref for Vec<T> {
    type Target = [T];

    #[inline]
    fn deref(&self) -> &[T] {
        unsafe { slice::from_raw_parts(self.as_ptr(), self.len) }
    }
}

impl<T> ops::DerefMut for Vec<T> {
    #[inline]
    fn deref_mut(&mut self) -> &mut [T] {
        unsafe { slice::from_raw_parts_mut(self.as_mut_ptr(), self.len) }
    }
}

```