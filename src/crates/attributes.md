
# Attributes

如果属性对整个 crate 都有作用的话, 使用 `#![crate_attribute]` 写法; 如果只对当前
module, 某个函数等起作用的话, 使用 `#[module_attribute]` 写法.

设置整个 crate 的属性 `#![crate_attribute]`; 设置整个 module 的属性, `#[crate_attribute]`, 少了一个 `!` 号.


多种语法:
* `#[attribute = "value"]`
* `#[attribute(key = "value")]`
* `#[attribute(value)]`


`#[allow(dead_code)]` 对某个模块及函数禁用 `dead_code` lint.

