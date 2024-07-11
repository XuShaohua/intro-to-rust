# ManuallyDrop 与 mem::forget() 函数

ManuallyDrop<T> 用于抑制编译器自动调用 `T` 的析构函数. 可以用它来调整结构体中成员的 drop 顺序.

看下面一个例子:

```rust
{{#include assets/manually-drop.rs:5:}}
```

查看上面例子的打印日志, 可以发现结构体 `Animals` 的析构顺序是:

- Animals
    - Sheep
    - Cow
- Horse

而下面的代码是结构体的一般写法, 其析构顺序是:

- Animals
- Sheep
- Horse
- Cow

```rust, ignore
struct Animals {
    sheep: Sheep,
    horse: Horse,
    cow: Cow,
}
```

## `mem::forget()` 函数

`forget()` 函数就是利用了 `ManuallyDrop` 类, 看看该函数的实现:

```rust, ignore
pub const fn forget<T>(t: T) {
    let _ = ManuallyDrop::new(t);
}
```

## 参考

- [ManuallyDrop RFC](https://rust-lang.github.io/rfcs/1860-manually-drop.html)
- [Destructors](https://doc.rust-lang.org/reference/destructors.html)