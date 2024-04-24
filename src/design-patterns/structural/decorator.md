# 装饰器模式 Decorator

通过将对象包装在内部, 来动态地更改对象在运行时的行为.

一些现代化的编程语言, 例如 Python, 有提供这样的语言特定, 比如在执行函数之前以及运行完成之后,
都打印出日志, 这样的需求就可以用装饰器模式来实现. 比如下面的例子:

```python
# 定义一个装饰器
def log_decorator(func):
    # inner1 是一个包装函数
    def inner1():
        print("> before function execution")
        # 调用真正的函数
        func()
        print("> after function execution")

    return inner1

# 定义一个测试用的函数, 并应有上面定义好的装饰器; `@log_decorator` 等同于下面一行代码的写法:
# say_hello = log_decorator(say_hello)
@log_decorator
def hello():
    print("hello()")

# 调用函数
say_hello()
```

## 问题描述

## 代码示例

```rust
{{#include assets/decorator.rs:5: }}
```