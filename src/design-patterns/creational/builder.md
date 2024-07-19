# 建造者模式 Builder

当创建一个对象时, 需要的步骤比较多, 或者要设置的属性比较多时, 可以使用建造者模式.

标准库里有 `std::thread::Builder` 类实现了建造者模式, 可以看一下它的简单用法:

```rust
{{#include assets/threaded-builder.rs:5: }}
```

## 问题描述

比如, 在制作汉堡时, 可以加入酱法, 奶酷或者别的配料, 根据配料的差异, 可以制作出不同口味的汉堡.

## 代码示例

```rust
{{#include assets/builder.rs:5: }}
```
