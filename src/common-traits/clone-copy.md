
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
