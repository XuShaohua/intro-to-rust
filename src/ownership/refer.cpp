
#include <iostream>

int main(void) {
  int* x_ptr = nullptr;
  {
    int x = 42;
    x_ptr = &x;
  }
  std::cout << "x ptr: " << *x_ptr << std::endl;

  return 0;
}
