# 管理容量

- `Vec::reverse();` 这里调用的是 `Slice::reverse()` 方法，是隐式地将 vec 先转成切片的

## 一个示例程序

```rust
fn main() {
    let v1: Vec<i32> = vec![1, 2, 3, 4, 5];
    println!("len of v1: {}, cap of v1: {}", v1.len(), v1.capacity());

    let mut v2 = Vec::<i32>::new();
    println!("len of v2: {}, cap of v2: {}", v2.len(), v2.capacity());
    v2.push(1);
    println!("len of v2: {}, cap of v2: {}", v2.len(), v2.capacity());
    v2.push(2);
    v2.push(3);
    v2.push(4);
    v2.push(5);
    println!("len of v2: {}, cap of v2: {}", v2.len(), v2.capacity());
    for i in 0..10 {
        v2.push(i);
    }
    println!("len of v2: {}, cap of v2: {}", v2.len(), v2.capacity());
    v2.push(1);
    v2.push(2);
    println!("len of v2: {}, cap of v2: {}", v2.len(), v2.capacity());
    v2.shrink_to_fit();
    println!("len of v2: {}, cap of v2: {}", v2.len(), v2.capacity());
    v2.push(3);
    println!("len of v2: {}, cap of v2: {}", v2.len(), v2.capacity());
}
```