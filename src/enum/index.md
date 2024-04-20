# 枚举 Enums

## 经典写法

经典枚举, 类似于 C 中的写法:

```rust
enum Weekday {
    Monday,
    Tuesday,
    Wednesday,
    Thursday,
    Friday,
    Saturday,
    Sunday,
}
```

## 混合类型

enum 也可以使用不同的类型作为其元素. 比如:

```rust
enum WebEvent {
    PageLoad,
    PageUnload,
    KeyPress(char),
    Paste(String),
    Click { x: i32, y: i32 },
}
```

这里, `WebEvent` 类型占用的内存, 基于其子元素所占内存的最大值, 这里就是 `String`.

对于像 `Option<Box<i32>>` 这种的, `Option<>` 内部是一个指针类型的, 这里只在栈上
占一个 `machine word`, 通常是 8 个字节. 值为 `0` 则表示 `None`, 非 `0` 表示
`Some<T>`.
