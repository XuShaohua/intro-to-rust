# 结构体生命周期

要么使用静态生命周期, 要么显式地标出其生命周期:

```rust
struct S {
  r: &'static i32,
}

struct T<'a> {
  r: &'a i32,
}
```

如果结构体里嵌了别的结构体, 可以这样:

```rust
struct S<'a> {
  r: &'a i32,
}

struct T<'a> {
  s: S<'a>,
}
```