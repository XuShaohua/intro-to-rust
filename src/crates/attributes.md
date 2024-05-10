# 属性 Attributes

如果属性对整个 crate 都有作用的话, 使用 `#![crate_attribute]` 写法; 如果只对当前
module, 某个函数等起作用的话, 使用 `#[module_attribute]` 写法.

设置整个 crate 的属性 `#![crate_attribute]`; 设置整个 module 的属性, `#[crate_attribute]`, 少了一个 `!` 号.

它多种语法形式:

| 语法                            | 描述                | 示例                                                 | 
|-------------------------------|-------------------|----------------------------------------------------|
| `#[attribute = "value"]`      | 设定属性值             | `#![crate_type = "lib"]`                           |
| `#[attribute(key = "value")]` | key-value 形式, 键值对 | `#![cfg(target_os = "linux")]`                     |
| `#[attribute(value)]`         | 单个标识符             | `#[allow(dead_code)]`, 对某个模块及函数禁用 `dead_code` lint |

## 相关知识

- [条件编译](./conditional-compilation.md)
- [Attributes](https://doc.rust-lang.org/reference/attributes.html)