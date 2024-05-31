# 条件判断 if 与 if let

条件判断表达式在代码里特别常见, 给定一个条件, 如果它的值是 `true`, 就执行 if 表达式内部的代码块.

```rust, ignore
if condition1 {
  block1
} else if condition2 {
  block2
} else {
  block_n
}
```

跟 C/C++ 等语言不同之处在于, `condition1` 表达式返回值的类型必须是 `bool`, 这里不进行
隐式类型转换. 另外, 这里不需要用小括号把 `condition1` 包括起来, 这个省去小括号的写法在其它语言中也不多见.

```C
int x = 42;
if (x) {
  do_some();
}
```

像上面的代码片段, 如果用 rust 重写的话, 必须要先把隐藏的条件补充完成:

```rust, ignore
let x = 42;
if x != 0 {
  do_some();
}
```

## if let

用于简化 match 表达式, 在分支条件比较单一的时候, 使用 `if let` 表达式可读性更高.

```rust, ignore
if let pattern = expr {
  block1
} else {
  block2
}
```

它等同于以下的 `match` 表达式:

```rust, ignore
match expr {
  pattern => { block1 }
  _ => { block2 }
}
```

看一下示例:

```rust
{{#include assets/if-let-foo.rs:5: }}
```

以上代码片段, 我们不需要给 `Foo` 实现 `std::cmp::PartialEq` 这个 trait, 就可以对它的值进行比较.
类似于以下实现:

```rust
{{#include assets/if-foo.rs:5: }}
```

这里之所以可以用 `==` 是因为 `Foo` 实现了 `PartialEq` trait.