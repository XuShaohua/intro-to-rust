# Traits

```rust
{{#include assets/animal-trait.rs:5:}}
```

## Inheritance

```rust
{{#include assets/person-trait.rs:5:}}
```

## dyn trait

```rust
{{#include assets/dyn-trait.rs:5:}}
```

## impl trait

```rust
{{#include assets/impl-trait.rs:5:}}
```

只要 trait 或者相应的类型在本 crate 中有声明, 就可以给这个类型实现这个 trait.
Marker Trait: 不需要实现任何具体的方法, 只是一个定义约束. 比如 `Sized`, `Copy`.
