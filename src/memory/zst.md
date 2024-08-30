# Zero Sized Types

## C++ 中的空类: EBO Empty Base Optimization

先看代码示例:
```cpp
#include <cassert>

#include <iostream>

class Empty {
 public:
  void greating() {
    std::cout << "Hello, Empty class" << std::endl;
  }
};

int main() {
  assert(sizeof(Empty()) == 1);
  return 0;
}
```

尽管上面的 `Empty` 类是一个空的类, 它仍然要占用1个字节的内存.
