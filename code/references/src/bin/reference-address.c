
#include <assert.h>

int addr1() {
  int x = 42;
  int* x_ptr = &x;
  *x_ptr += 1;
  return x;
}

int main(int argc, char** argv) {
  assert(addr1(), 43);
  return 0;
}
