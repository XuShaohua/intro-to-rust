
# 泛型 Generic
与 C++ 类似, 泛型这种特性在 Rust 中也被广为使用, 比如标准库中的容器类, 都离开泛型这个特性. 

一般的泛型写法:
```rust
pub struct Queue<T> {
  older: Vec<T>,
  younger: Vec<T>,
}

impl<T> Queue<T> {
  pub fn new() -> Queue<T> {
    Queue{ older: Vec::new(), younger: Vec::new() }
  }

  pub fn push(&mut self, t: T) {
    self.younger.push(t);
  }

  pub fn is_empty(&self) -> bool {
    self.older.is_empty() && self.younger.is_empty()
  }
}
```

## 偏特化 partial specialization

除了一般的泛型写法之外, 还可以使用偏特化为某个类型单独实现一种特殊形式.

比如, 标准库里的 `Box<T>` 就有这样的代码:

```rust
impl<T: Default> Default for Box<T> {
    /// Creates a `Box<T>`, with the `Default` value for T.
    #[inline]
    fn default() -> Self {
        Box::new(T::default())
    }
}

impl<T> Default for Box<[T]> {
    #[inline]
    fn default() -> Self {
        let ptr: Unique<[T]> = Unique::<[T; 0]>::dangling();
        Box(ptr, Global)
    }
}

impl Default for Box<str> {
    #[inline]
    fn default() -> Self {
        // SAFETY: This is the same as `Unique::cast<U>` but with an unsized `U = str`.
        let ptr: Unique<str> = unsafe {
            let bytes: Unique<[u8]> = Unique::<[u8; 0]>::dangling();
            Unique::new_unchecked(bytes.as_ptr() as *mut str)
        };
        Box(ptr, Global)
    }
}
```

## 参考
- [Generic Programming](https://en.wikipedia.org/wiki/Generic_programming)
- [Partial specialization](https://en.wikipedia.org/wiki/Partial_template_specialization)