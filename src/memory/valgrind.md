# 使用 valgrind 检查内存泄露

除了上一节介绍的各种 sanitizer 工具外, valgrind 也常用于检查内存泄露等问题.
但与 sanitizer 相比, valgrind 的执行速度可能要慢三十倍, 因为它们的工作方式不同.

sanitizer 工具是在 LLVM 编译器生成代码时, 插入了内存检查相关的代码, 并且带上了
相应的运行时, 这些代码都被直接编译成了汇编代码. 这个工作依赖于从源代码来编译.

而 valgrind 本质上就是一个虚拟机, 它会解析可执行文件 (ELF格式), 然后读取里面的
每一条汇编指令, 将它反汇编成 VEX IR 中间代码, 然后插入一些 valgrind 的运行时代码,
即所谓的插桩过程, 再将 VEX IR 编译成汇编代码. 这个过程是程序在运行过程时实时进行的,
所以可以想象它会有多慢. 但是好处在于 valgrind 不依赖于程序的源代码, 只要程序可以
运行, 就可以用 valgrind 来检测它的问题.

检查一般的内存错误:

```bash
valgrind --tool=memcheck your-app
```

检查堆内存:

```bash
valgrind --tool=massif your-app
```

## valgrind 的其它模块

除了上面提到的功能，valgrind 还可以检查 CPU 缓存及分支预测的命中率:

```bash
valgrind --tool=cachegrind your-app
```
