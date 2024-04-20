# 内存布局 Memory Layout

与其它数据类型相比, 枚举类型的内存布局比较复杂, 接下来我们分别说明.

## 只有枚举项标签

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

这里, `Weekday` 类型占用1个字节的内存.

![weekday](assets/weekday.svg)

随着元素个数的增加, 可以占用2个字节或者更多. 比如:

```rust

```