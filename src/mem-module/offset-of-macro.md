# offset_of!() 宏

这个宏用于获取结构体中某个元素的位置, 类似于 libc 中的 `offsetof()` 函数.

下面是一个示例程序:

```rust
{{#include assets/offset-of.rs:5:}}
```

对应的 C 代码如下:

```c
{{#include assets/offset-of.c:5:}}
```