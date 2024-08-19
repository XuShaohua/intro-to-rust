# 联合体的模式匹配

联合体的模式匹配比较受限, 每次只能匹配其中的一个成员, 先看一个示例:

```rust
{{#include assets/match.rs:5:}}
```

有时, 需要配合支持 C 语言中常用的 tagged-union 写法, 比如下面的例子是对 X11 的 `XEvent` 的封装:

```rust
{{#include assets/xevent.rs:5:}}
```

或者, 使用另一种风格的 tagged-union 写法, 这种的要更清晰一些.
下面这个例子支持单精度和双精度的方式来存储一个坐标点:

```rust
{{#include assets/point.rs:5:}}
```