
# TryFrom 与 TryInto

`TryFrom` 和 `TryInfo` 这两个 trait, 主要是为了容错, 因为类型之间的转换有可能是
会失败的. 所以这两个 trait 会返回 `Result<>` 结构.


## 其它转换方式
- [基础数据类型使用 as](../fundamental/cast.md)
- [From/Into](../common-traits/from-into.md)