# 关联类型 Associated Types

对于复杂的泛型, 可以使用关联类型这种写法:

```rust
trait Contains {
    type A;
    type B;

    fn contains(&self, _: &Self::A, _: &Self::B) -> bool;
    fn first(&self) -> i32;
    fn last(&self) -> i32;
}

struct Container(i32, i32);

impl Contains for Container {
    type A = i32;
    type B = i32;

    fn contains(&self, n1: &i32, n2: &i32) -> bool {
        return (&self.0 == n1) && (&self.1 == n2);
    }

    fn first(&self) -> i32 {
        return self.0;
    }

    fn last(&self) -> i32 {
        return self.1;
    }
}

fn difference<C: Contains>(c: &C) -> i32 {
    return c.first() - c.last();
}

fn main() {
    let c = Container(42, 41);
    println!("difference: {}", difference(&c));
}
```

## 参考

- [Associated Items](https://doc.rust-lang.org/reference/items/associated-items.html)