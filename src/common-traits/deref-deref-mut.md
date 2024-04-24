# Deref 与 DerefMut

`Deref`, `DerefMut` trait 主要用于一些智能指针类型, 比如 `Box`, `Rc`, `Arc`.

`Deref` trait 的定义:

```rust, ignore
pub trait Deref: ?Sized {
  type Target: ?Sized;
  fn deref(&self) -> &Self::Target;
}

pub trait DerefMut: Deref {
    // Required method
    fn deref_mut(&mut self) -> &mut Self::Target;
}
```

`Deref` trait 用于解析引用 (dereference) 操作, 比如 `*v`.

## Deref coercion

- 当需要调用 `String::find()` 方法, 而值 `r` 的类型是 `Rc<String>`时, 可以直接写 `r.find('?')`,
  不需要写完整的 `(*r).find('?')`, 因为 `&Rc<String>` 自动被转换成了 `&String` 类型
- `str` 定义的方法, 都可以被`String`对象直接使用, 因为 `&String` 可以自动被转换成 `&str`

`Box<T>` 的实现:

```rust, ignore
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

```rust, ignore
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
