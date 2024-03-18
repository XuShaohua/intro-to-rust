# 泛型 Generics

与 C++ 类似, 泛型 (Generics) 这种特性在 Rust 中也被广为使用, 比如标准库中的容器类, 都离开泛型这个特性.

泛型在 Rust 里有广泛的应用, 除了本节介绍的结构体的泛型, 还有 [函数泛型](../closure/generics.md)
以及 [trait 泛型](../trait/generics.md)等等, 后面章节陆续会有介绍.

一般的泛型写法:

```rust
pub struct Queue<T> {
    older: Vec<T>,
    younger: Vec<T>,
}

impl<T> Queue<T> {
    pub fn new() -> Queue<T> {
        Queue { older: Vec::new(), younger: Vec::new() }
    }

    pub fn push(&mut self, t: T) {
        self.younger.push(t);
    }

    pub fn is_empty(&self) -> bool {
        self.older.is_empty() && self.younger.is_empty()
    }
}
```

## 使用 Where

可以使用 `where` 来指定复杂的泛型:

```rust
use std::fmt::{Debug, Display};

fn print_info<T>(t: T)
    where
        T: Debug + Display + Clone,
{
    println!("debug: {:?}, display: {}", t, t.clone());
}

fn main() {
    let s = "Hello, world".to_string();
    print_info(s);
}
```

## 偏特化 partial specialization

除了一般的泛型写法之外, 还可以使用偏特化为某个类型单独实现一种特殊形式.

比如, 标准库里的 `Box<T>` 就有这样的代码:

```rust, not_run
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

接下来再看另一个示例程序, 甚至可以为不同特化的类型添加特定的方法, 来扩展它:

```rust
struct GeneralVal<T>(T);

impl GeneralVal<i32> {
    pub fn int_value(&self) -> i32 {
        return self.0;
    }
}

impl GeneralVal<f64> {
    pub fn double(&self) -> f64 {
        return self.0 * 2.0;
    }
}

impl<T> GeneralVal<T> {
    pub fn value(&self) -> &T {
        return &self.0;
    }
}

fn main() {
    let v = GeneralVal(42);
    println!("val: {}", v.int_value());

    let f = GeneralVal(3.14);
    println!("double: {}", f.double());
}

```

## 参考

- [Generic Programming](https://en.wikipedia.org/wiki/Generic_programming)
- [Partial specialization](https://en.wikipedia.org/wiki/Partial_template_specialization)
- [Reference of Generics](https://doc.rust-lang.org/reference/items/generics.html)
