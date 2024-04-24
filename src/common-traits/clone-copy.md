# Clone 与 Copy

简单理解, `Clone` trait 就是实现深拷贝, 它调用结构体中的所有属性的 `clone()` 方法.

`Copy` trait 是继承于 `Clone` trait 的, 是浅拷贝. 它只是简单地复制了结构体中的数据,
而不会调用结构体中所有属性的 `clone()` 方法. 它与 `Drop` trait 是互斥的.

所有的基础数据类型 (primitive types) 都实现了 `Copy` trait.

比如, 字符串类型 `String` 就只实现 `Clone` trait, 而不能实现 `Copy` trait, 因为
String 结构体中会记录一个指向堆内存的指针, 用于存放真实的字符串数据.

`Copy` trait 中并没有定义什么新的方法, 而只是一个约束 (marker trait).

默认情况下, 赋值语句会移动值, 即转移值的所有权. 但如果这个值实现了 `Copy` trait,
那么赋值语句并不会转移该值的所有权, 而是复制一份:

```rust
let x = 42_i32;
let y = x;
```

## 什么时候实现 `Copy` trait?

如果一个结构体比较简单, 并且直接复制它的值的成本很低时, 为了方便使用, 可以实现 `Copy` trait,
比如:

```rust
#[derive(Debug, Default, Clone, Copy, PartialEq, Eq)]
pub struct Point2D {
    x: i32,
    y: i32,
}
```

上面的例子, `size_of::<Point2D>()` 是 8 个字节, 而直接存储 `&Point2D` 也是 8 个字节,
直接复制整个结构体, 并不会带来什么成本, 所以可以考虑给它实现 `Copy` trait.

但下面的例子:

```rust
pub struct File {
    fd: i32,
}

impl Drop for File {
    fn drop(&mut self) {
        // Call self.close();
    }
}
```

这个结构体, 是对文件描述符 `fd` 的包装, 而直接 `clone()` 以及复制它, 并没有什么实现的操作意义,
所以不应该给它实现 `Clone` trait 以及 `Copy` trait.

## String 的复制

标准库里的字符串 `String`, 实现了 `Clone` trait:

```rust
#[derive(PartialEq, PartialOrd, Eq, Ord)]
pub struct String {
    vec: Vec<u8>,
}

impl Clone for String {
    fn clone(&self) -> Self {
        String { vec: self.vec.clone() }
    }

    fn clone_from(&mut self, source: &Self) {
        self.vec.clone_from(&source.vec);
    }
}
```

可以看到, 它需要 `clone()` 内部的 `Vec<u8>`, 其成本是比较高的.