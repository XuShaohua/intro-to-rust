# 表达式 Expressions

Rust 是一个以表达式 (expression) 为主体的编程语言, 编写的大部分代码都是表达式.

每一种表达式类型都可以嵌入到其它表达式中.

表达式 (expression) 有值, 语句 (statement) 没有值.

这一章我们只介绍控制流表达式, 像基础数据类型, 结体体, 枚举, trait, 各种操作符, 函数调用及闭包等表达式,
在别的章节有全面的说明.

## 本章目标

1. if let 与 match 的用法
2. rust 特有的那几种循环语句的写法
3. break/continue 如何返回值