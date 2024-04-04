# 静态变量 static

static 变量修饰符即可用于本地作用域, 也可用于全局作用域.
static 用于定义静态变量.
如果静态变量是可修改的(mutable), 则对它的读写都是 `unsafe` 的.

## 参考

- [const and static on RFC](https://rust-lang.github.io/rfcs/0246-const-vs-static.html)
