# 循环 Loop


## loop 循环

## loop 循环中的标签

多层嵌套的循环语句, 可以使用 label 跳出来.

## 终止循环 break

### 使用标签 label

使用 label 可以中断最外层的循环:

```rust
fn main() {
    let mut sum = 0;

    'outer:
    for i in 0..100 {
        for j in 0..i {
            sum += j;
            if i * j > 200 {
                break 'outer;
            }
        }
    }
    assert_eq!(sum, 560);
}
```

## 跳过当前循环 continue

## loop 循环返回值

loop 表达式也可以有返回值:

```rust
fn main() {
    let mut counter = 0;
    let result = loop {
        counter += 1;
        if counter == 10 {
            break counter * 2;
        }
    };
    assert_eq!(result, 20);
}
```

## for 循环

`for .. in` 表达式用于遍历一个循环体.

```rust
fn main() {
    for i in 1..101 {
        println!("i * i = {}", i * i);
    }
}
```

它还有一个变体, 用于包含超始值及终止值:

```rust
fn main() {
    for i in 1..=100 {
        println!("i * i = {}", i * i);
    }
}
```

默认情况下, for 在遍历一个集合时会使用 `Iterator` trait 的 `into_iter()` 方法.
除了这个方法之外, 还有另外两个方法:

* `iter()` 以引用的方法遍历集合, 不改变集合中的值, 该容器接下来还可以被使用
* `into_iter()` 从集合中解析出里面的数据, 一旦遍历完它, 该集合接下来不可再被使用,
  相当于把这个集合 `move` 到了这个循环中
* `iter_mut()` 以可变引用的方法遍历集合, 可以改变集合中的值, 该集合在接下来还可被使用

## while 循环

while 的一般写法:

```rust

```

## while let 循环

