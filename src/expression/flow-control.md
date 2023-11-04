
# Flow of Control

## loop
多层嵌套的循环语句, 可以使用 label 跳出来.

loop 表达式也可以有返回值:

```rust
let mut counter = 0;
let result = loop {
  counter += 1;
  if counter == 10 {
    break counter * 2;
  }
};
assert_eq!(result, 20);
```

## for and range
`for .. in` 表达式用于遍历一个循环体.

```rust
for i in 1..101 {
  ...
}
```

它还有一个变体, 用于包含超始值及终止值:
```rust
for i in 1..=100 {
  ...
}
```

默认情况下, for 在遍历一个集合时会使用 `Iterator` trait 的 `into_iter()` 方法.
除了这个方法之外, 还有另外两个方法:
* `iter()` 以引用的方法遍历集合, 不改变集合中的值, 该容器接下来还可以被使用.
* `into_iter()` 从集合中解析出里面的数据, 一旦遍历完它, 该集合接下来不可再被使用,
相当于把这个集合 `move` 到了这个循环中.
* `iter_mut()` 以可变引用的方法遍历集合, 可以改变集合中的值, 该集合在接下来还可
被使用.

## match
`match` 可以匹配一个值, 几个值, 一个范围, 或者任意值.

```rust
let number = 13;

match number {
  1 => println!("One!"),
  2 | 3 | 5 | 7 | 11 => println!("A prime number"),
  13..=19 => println!("A teen!"),
  _ => println!("Ain't special"),
}
```

### 解构 tuple
```rust
let pair = (0, -2);
match pair {
  (x, 0) => println!("On X axes: {}", x),
  (0, y) => println!("On Y axes: {}", y),
  _ => println!("any other point"),
}

match point {
  (x, 0) => println!("on x axes: {}", x),
  (0, y) => println!("on y axes: {}", y),
  (0, 0) => println!("original pos: (0, 0)"),
  _ => println!("Other positions!"),
}
```

### 解构 enum
```rust
match weekday {
  Weekday::Monday => println!("On Monday!"),
  Weekday::Tuesday => println!("On Tuesday!"),
  Weekday::Wednesday => println!("On Wednesday!"),
  _ => println!("Other days!"),
}
```

### 解构 pointers/ref

```rust
let ref v = 42;
```

与下面的表达式是一样的:

```rust
let v = &42;
```

### 解构 structs
```rust
match point {
  Point {x, y: 0} => println!("on x axes: {}", x),
  Point {x: 0, y} => println!("on y axes: {}", y),
  Point {x: 0, y: 0} => println!("original pos: (0, 0)"),
  Point {x, ..} => println!("Other position: {}, ignoring y value!", x),
}
```

### 引用
```rust
let val = 42;
let ref ref_value = val;
match *ref_value {
  v => assert_eq!(v, val),
}

match ref_value {
  &v => assert_eq!(v, val),
}

match val {
  ref v => assert_eq(v, ref_value),
}
```

### Guard
```rust
match point {
  Point {x, y: 0} => println!("on x axes: {}", x),
  Point {x: 0, y} => println!("on y axes: {}", y),
  Point {x: 0, y: 0} => println!("original pos: (0, 0)"),
  Point {x, y} if x == y => println!("x == y: {}, {}", x, y),
  Point {x, ..} => println!("Other position: {}, ignoring y value!", x),
}
```

### 指定值的范围并绑定变量 Binding
```rust
match value {
  0 => println!("0"),
  n @ 1..13 => println!("child: {}", n),
  n @ 14..18 => println!("teen: {}", n),
  _ => println!("other"),
}
```

## if let
用于简化 match 表达式, 在条件比较单一的时候, 使用 `if let` 表达式可读性更高.

```rust
enum Foo {
  Bar,
  Baz,
  Qux(u32)
}

let a = Foo::Bar;

if let Foo::Bar = a {
  ...
}
```

以上代码片段, 我们不需要给 `Foo` 实现 `std::cmp::PartialEq` 这个 trait, 就可以
对它的值进行比较, 类似于以下实现:

```rust
#[derive(PartialEq)]
enum Foo {
  Bar,
  Baz,
  Qux(u32)
}

let a = Foo:Bar;
if a == Foo::Bar {
  ...
}
```
这里之所以可以用 `==` 是因为 `Foo` 实现了 `PartialEq` trait.

## while let
类似于 `if let`, 可以简化某些 match 表达式.
