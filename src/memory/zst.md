# 空类 Zero Sized Types

## Vec<T> 中对空类的优化

## C++ 中的空类

先看代码示例:
```cpp
{{#include assets/ebo.cpp:5:}}
```

尽管上面的 `Empty` 类是一个空的类, 它仍然要占用1个字节的内存.


C++ 对空类的优化: EBO Empty Base Optimization


通过横向对比可以看到, 这两种语言在处理空类的问题上的方法并不相同, 而Rust中的做法更符合常理, 心智负担也更小.
