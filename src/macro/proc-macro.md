
# Proc Macro

`rustversion` 库大量使用了 `proc-macro`, 需要的话可以读一下它的代码.
另外, `getset` 库也是, 而且这个库的代码量很小, 就几百行, 基于 proc-macro 实现的.

- 函数式宏, `println!()`
- 继承宏, `#[derive(Debug)]`
- 属性宏, `#[serde(rename("foo"))]`

## 第三方库
- sync, 解析 AST 里的 token
- quote, 重构 AST
- proc-macro/2, 支持过程宏的编写
- darling, 帮助解析属性

## 基本编写过程
- 解析 AST
- 处理 Tokens
- 生成 AST
