
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
这里, `Weekday` 类型占用1个字节的内存, 随着元素个数的增加, 可以占用2个字节或者更多. 如果需能像 C++ 中那样, 显式地指定其数据类型:
```cpp
enum class Weekday : int32_t {
  Monday,
  Tuesday,
  Wednesday,
  Thursday,
  Friday,
  Saturday,
  Sunday,
};
```
可以这样写:
```rust
#[repr(i32)]
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
它们都占用4个字节.

## 混合类型
enum 也可以使用不同的类型作为其元素. 比如:
```rust
enum WebEvent {
  PageLoad,
  PageUnload,
  KeyPress(char),
  Paste(String),
  Click{x:i32, y: i32},
}
```
这里, `WebEvent` 类型占用的内存, 基于其子元素所占内存的最大值, 这里就是 `String`. 

对于像 `Option<Box<i32>>` 这种的, `Option<>` 内部是一个指针类型的, 这里只在栈上
占一个 `machine word`, 通常是 8 个字节. 值为 `0` 则表示 `None`, 非 `0` 表示
`Some<>`.

## Pattern Matching

| Pattern Type            | Example                                       | Notes                                                        |
| ----------------------- | --------------------------------------------- | ------------------------------------------------------------ |
| Literal                 | `100`, `"name"`                               | Matches an exact value; the name of a const is also allowed  |
| Range                   | `0...100`, `'a'...'k'`                        | Matches any value in range, including the end value          |
| Wildcard                | `_`                                           | Matches any value and ignores it                             |
| Variable                | `name`, `mut count`                           | Like _ but moves or copies the value into a new local variable |
| ref variable            | `ref field`, `ref mut field`                  | Borrows a reference to the matched value instead of moving or coping it |
| Reference               | `&value`, `&(k, v)`                           | Matches only reference values                                |
| Binding with subpattern | `val @ 0...99`, `ref circle @Shape::Circle {...}` | Matches the pattern to the right of @, using the variable name to the left |
| Enum pattern            | `Some(val)`, `None`                           |                                                              |
| Tuple pattern           | `(key, value)`, `(r, g, b)`                   |                                                              |
| Struct pattern          | `Color(r, g, b)`, `Point{x, y}`               |                                                              |
| Multiple patterns       | `'a' | 'k'`                                    | In match only (not valid in let, etc.)                       |
| Guard expression        | `x if x * x <= r2`                            | In match only (not valid in let, etc.)                       |


Match struct:
```rust
match get_account(id) {
  Some(Account{name, language, .. }) => xxx
}
```
