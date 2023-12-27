
# 函数重载 Function Overloading

函数重载的概念对于 C++ 程序员来说是很熟悉的, 举个例子, STL标准库里的 `std::sort()` 函数是这样声明的:
```cpp
template< class RandomIt >
void sort( RandomIt first, RandomIt last );
template< class RandomIt >
constexpr void sort( RandomIt first, RandomIt last );
template< class ExecutionPolicy, class RandomIt >
void sort( ExecutionPolicy&& policy,
           RandomIt first, RandomIt last );
template< class RandomIt, class Compare >
void sort( RandomIt first, RandomIt last, Compare comp );
template< class RandomIt, class Compare >
constexpr void sort( RandomIt first, RandomIt last, Compare comp );
template< class ExecutionPolicy, class RandomIt, class Compare >
void sort( ExecutionPolicy&& policy,
           RandomIt first, RandomIt last, Compare comp );
```

函数名相同, 参数类型及个数不相同, 进而兼容更多的调用方式.

从某种角度来说 Rust 也是支持函数重载的, 我们先来看一下例子:

```rust
use std::path::Path;
pub struct File {
    fd: i32,
}

impl File {
    pub fn open<P: AsRef<Path>>(p: P) -> Result<Self, std::io::Error> {
        todo!()
    }
}
```

在使用时, 也可以传入很多种不同类型的参数, 只要它们都实现了 `AsRef<Path>` trait, 例如:
```no_run
File::open("/etc/passwd");
File::open(PathBuf::from("/etc/passwd"));
File::open(OsStr::new("/etc/passwd"));
```