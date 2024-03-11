
# 相等与比较 Eq and Ord

[std::cmp模块](https://doc.rust-lang.org/std/cmp/index.html)提供了四个 traits:
- `PartialEq`
- `Eq`
- `PartialOrd`
- `Ord`
用于实现比较操作, 这四个 trait 之间有这样一个关系:
- `Eq` 基于于 `PartialEq`, 即 `pub trait Eq: PartialEq`
* `PartialOrd` 基于 `PartialEq`, 即 `pub trait PartialOrd: PartialEq`
* `Ord` 基于 `Eq` 和 `PartialOrd`, `pub trait PartialOrd: Eq + PartialOrd<Self>`

相等比较操作, 对应于 `==` 以及 `!=` 操作符,
顺序比较操作, 对应于 `>`, `<`, `>=`以及 `<=` 等操作符.

`cmp` 模块还定义了比较结果 `Ordering` 这样一个枚举类型:
```rust
pub enum Ordering {
    Less = -1,
    Equal = 0,
    Greater = 1,
}
```

## 部分等价关系 PartialEq

先说最基础的 `PartialEq`, 这个 trait 定义了两个方法:
- `eq()`, 两个值相等的话就返回 `true`, 需要使用者自行定义该方法.
- `ne()`, 两个值不相等的话就返回 `true`

`PartialEq` trait 实现了[部分等价关系 Partial_equivalence_relation](https://en.wikipedia.org/wiki/Partial_equivalence_relation),
这种数值关系有以下特性:
- 对称性 (symmetric): 如果 `a == b`, 那么 `b == a`
- 可传递性 (transitive): 如果 `a == b` 且 `b == c`, 那么 `a == c`


所有的基本数据类型都实现了 `PartialEq` trait. 平时使用时只需要用 `#[derive]` 的方法实现即可, 就像这样:
```rust
#[derive(PartialEq)]
pub struct Person {
    pub id: u32,
    pub name: String,
    pub height: f64,
}
```

编译器默认实现类似以下代码:
```rust
impl PartialEq for Person {
    fn eq(&self, other: &Self) -> bool {
        self.id == other.id &&
            self.name == other.name &&
            self.height == other.height
    }
}
```

但如果我们在比较两个 `Person` 时, 只想通过 `id` 属性来确定是不是同一个人, 可以
手动定义 `PartialEq` trait 的实现:
```rust
impl PartialEq for Person {
    fn eq(&self, other: &Self) -> bool {
        self.id == other.id
    }
}
```

## 等价关系 Eq
`Eq` trait 实现了 [等价关系 Equivalence_relation](https://en.wikipedia.org/wiki/Equivalence_relation),
该数值关系具有以下特性:
- 对称性 (symmetric): 如果 `a == b`, 那么 `b == a`
- 可传递性 (transitive): 如果 `a == b` 且 `b == c`, 那么 `a == c`
- 自反性 (reflexive): `a == a`


`Eq` trait 基于 `PartialEq` trait, 但在此之上并没有添加新的方法定义, 这个 trait
只是用于给编译器提示说, 这是个 `等份关系` 而不是个 `部分等价关系`. 因为编译器
并不能检测 `自反性 (reflexive)`.


在标准库中, 只有 f32 和 f64 没有实现 `Eq` trait, 因为浮点值有两个特殊的值:
- NAN
- INFINITY, 它们本身是不可比较的, ` NAN != NAN`.


我们可以来测试一下:
```rust
println!("NAN == NAN ? {}", std::f64::NAN == std::f64::NAN);
```

打印的结果是:
```text
NAN == NAN ? false
```

所以, 上面的示例中定义的 `struct Person` 是无法用 `#[derive(Eq)]` 的方法定义的:
```rust
#[derive(Eq)]
struct Person {
    pub id: u32,
    pub name: String,
    pub height: f64,
}
```

编译器会报出以下错误:
```bash
188 |     height: f64,
    |     ^^^^^^^^^^^ the trait `std::cmp::Eq` is not implemented for `f64`
    |
    = note: required by `std::cmp::AssertParamIsEq`
```

但我们可以手动实现该 trait:
```rust
#[derive(PartialEq)]
struct Person {
    pub id: u32,
    pub name: String,
    pub height: f64,
}

impl Eq for Person {}
```

## 偏序关系 PartialOrd
`PartialOrd` 基于 `PartialEq` 实现, 它新定义了几个方法:
- `partial_cmp() -> Ordering`, 需要使用者实现本方法, 返回两值的比较结果
- `lt()`, `le()`, `gt()`, `ge()` 已经定义好

偏序关系有以下特性:
- 不对称性 antisymmetry: 如果 `a < b` 那么 `!(a > b)`
- 可传递性 transitive: 如果 `a < b` 且 `b < c` 那么 `a < c`

标准库里的所有基本类型都已实现该 trait. 可直接使用 `#[derive]` 的方法实现该 trait,
也可像下面这样手动实现, 这里是以身高来排序的:
```no_run
impl PartialOrd for Person {
    fn partial_cmp(&self, other: &Self) -> Option<std::cmp::Ordering> {
        self.height.partial_cmp(&other.height)
    }
}
```

## 全序关系 Ord
`Ord` 基于 `PartialOrd` 和 `Eq` 实现, 它新定义了几个方法:
- `cmp()`, 需要使用者实现本方法, 返回两值的比较结果
- max, min, clamp 已经定义好

全序关系有以下特性:
- 完整的不对称性 total antisymmetry: `a < b`, `a == b`, `a > b` 这三种结果只有一个是真
- 可传递性 transitive: 如果 `a < b` 且 `b < c` 那么 `a < c`

在标准库中, f32 和 f64 没有实现 `Ord` trait, 同样是因为 `NAN` 和 `INFINITY` 的
不确定性, `NAN` 和 `INFINITY` 无法跟其它浮点值比较大小.

## 参考
- [Equivalence_relation](https://en.wikipedia.org/wiki/Equivalence_relation)
- [Partial_equivalence_relation](https://en.wikipedia.org/wiki/Partial_equivalence_relation)
- [Total_order](https://en.wikipedia.org/wiki/Total_order)
- [cmp.rs 源代码](https://doc.rust-lang.org/src/core/cmp.rs.html)
