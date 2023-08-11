# 初始化内存 Initialize Memory

Rust 栈上的变量在被赋值之前是未初始化的, 不能被使用; 直接读取未经初始化的内存会
导致未定义行为 (undefined behavior), 这是不被编译器允许的.

```rust
fn main() {
    let x: i32;
    println!("x: {}", x);
}
```

同样的, 如果一个值从变量上移走了 (move), 除非这个值实现了 Copy trait, 否则
原先的变量在逻辑上又成了未初始化的了, 尽管实际上它占有的值是没变化的.
以下代码片段里, `x` 最后是未初始化的, 所以编译器就会在第三行代码报错.

```rust
let x = Box::new(42);
let y = x;
println!("x: {:?}", x);
```
