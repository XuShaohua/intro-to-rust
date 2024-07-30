# mem::zeroed() 函数

这个函数类似于 libc 中的 `bzero()`, 将一个结构体中的所有字节都置为 0.

比如, 下面的一个示例程序:

```rust
{{#include assets/zeroed.rs:5:}}
```

对应的 C 代码如下:

```c
{{#include assets/zeroed.c:5:}}
```