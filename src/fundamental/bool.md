
# 布尔类型
bool, 可以是 `true` 或 `false`, bool 占用一个字节, 即:
```rust,editable
use std::mem::size_of;
assert_eq!(size_of::<bool>(), 1);
```

可以将 bool 值转换为整数, 但不能反过来将整数转为bool类型, 比如:
```rust,editable
assert_eq!(true as i32, 1);
assert_eq!(false as i32, 0);
``` 

与 C++ 不同, `Vec<bool>` 并没有被单独优化.

另外的差异还有, 在`if` 或者 `while`等控制语句中, 需要一个完整的布尔表达式, 不能进行隐式的类型转换.
比如:
```compile_fail
let x = 42;
if x {
  // do something.
}
```

必需显式地写下:
```rust, editable
let x = 42;
if x != 0 {
  // do something.
}
```

## 常用的函数

### then_some(t)
如果为 true, 就返回 `Some(t)`; 否则直接返回 `None`:

```rust,editable
assert_eq!(false.then_some(0), None);
assert_eq!((1 + 1 == 2).then_some(2), Some(2));
```

以上代码在 rust playground 里可能无法正常运行.

### then(f)
如果为 true, 就执行函数并返回 `Some(f())`; 否则直接返回 `None`:

```rust,editable
assert_eq!(false.then(|| 0), None);
assert_eq!(true.then(|| 0), Some(0));
```