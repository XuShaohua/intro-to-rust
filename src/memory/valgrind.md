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

## 检测内存泄露

比如, 下面的示例代码中有两个泄露位点:

```rust
{{#include assets/san-memory-leak.rs:5:}}
```

先将它编译成 debug 程序, `cargo build --bin san-memory-leak`, 这样的话可执行文件包含 DWARF 格式的调试信息,
更方便进行错误追踪.

先对它进行检查一般的内存错误:

```bash
valgrind ./san-memory-leak
```

此时 valgrind 提示有内存泄露, 可以加上 `--leak-check=full` 来跟踪具体的泄露位置:

```bash
valgrind --leak-check=full ./san-memory-leak
```

运行的完整日志如下:

```text
{{#include assets/san-memory-leak.vg.log}}
```

里面有两个关键信息:

- `==25294== by 0x11E011: san_memory_leak::main (san-memory-leak.rs:8)`
- `==25294== by 0x11E15D: san_memory_leak::main (san-memory-leak.rs:13)`

这里明确指示了被泄露的内存是在哪个地方分配的, 基于这些信息便可以轻松定位到问题.

## 检测内存越界

下面的代码示例中有三处内存越界发生:

```rust
{{#include assets/san-out-of-bounds.rs:5:}}
```

使用 `valgrind ./san-out-of-bounds` 来检测, 得到如下的报告:

```text
{{#include assets/san-out-of-bounds.vg.log}}
```

可以看到, valgrind 只检测出了堆内存读写相关的两处错误, 但并没能发现栈内存写入越界问题:

- `==41511== by 0x11CB89: san_out_of_bounds::main (san-out-of-bounds.rs:15)`
- `==41511== at 0x11CBC2: san_out_of_bounds::main (san-out-of-bounds.rs:21)`

## 访问已被释放的内存 use after free

以下的代码示例中, 错误地访问了已经被释放的堆内存:

```rust
{{#include assets/san-use-after-free.rs:5:}}
```

现在使用 valgrind 来检测, `valgrind ./san-use-after-free`, 输出了以下日志:

```text
{{#include assets/san-use-after-free.vg.log}}
```

可以看出, valgrind 确定发现了 use-after-free 的错误, 而且给出了精准定位:

- `==48059== by 0x11CFCB: san_use_after_free::main (san-use-after-free.rs:13)`

## 访问未初始化的内存 uninit

以下的代码片段包含了未初始化内存的错误:

```rust
{{#include assets/san-memory-uninit.rs:5:}}
```

使用 valgrind 来检测, `valgrind ./san-memory-uninit`, 得到了以下日志:

```text
{{#include assets/san-memory-uninit.vg.log}}
```

日志里显示了完整的错误:

- `==57348== Conditional jump or move depends on uninitialised value(s)`
- `==57348== at 0x11C50B: san_memory_uninit::main (san-memory-uninit.rs:12)`

## 检测循环引用 Cyclic references

循环引用的问题常出现在 Rc/Arc 等以引用计数的方式来管理对象的地方.
以下一个示例展示了二叉树中的循环引用问题:

```rust
{{#include assets/san-cyclic-references.rs:5:}}
```

循环引用会导致节点上的对象不能被正常的释放, 内存不会回收并出现内存泄露的问题.

使用 valgrind 来检测, `valgrind --check-leak=full ./san-cyclic-references`, 得到了以下日志:

```text
{{#include assets/san-cyclic-references.vg.log}}
```

可以看到 valgrind 确实检测到了堆内存泄露的问题:

- `==165066== by 0x11DA0A: san_cyclic_references::main (san-cyclic-references.rs:33)`

只是另一个泄露点 `(san-cyclic-references.rs:38)` 并没有被定位到.

## 检测数据竞态 Data race

多个线程访问同一块内存时, 应该使用互斥锁等手段, 确保不会发生 data race condition.

另外, 如果使用了线程本地存储 (Thread local storage) 的话, 它在每个线程中被单独保存了一份,
各线程只会访问内部的那一份克隆, 所以不存在 data race.

看下面的例子:

```rust
{{#include assets/san-data-race.rs:5:}}
```

使用 valgrind 的 `Helgrind` 来检测线程相关的问题,
`valgrind --tool=helgrind ./san-data-race`,
得到了以下日志:

```text
{{#include assets/san-data-race.vg.log}}
```

可以看到 valgrind 确实检测到了堆内存泄露的问题:

- `Possible data race during write of size 4 at 0x16ADD0 by thread #1`
- `  at 0x124D33: san_data_race::main (san-data-race.rs:34)`
- `This conflicts with a previous write of size 4 by thread #3`
- `  at 0x122A30: san_data_race::main::{{closure}} (san-data-race.rs:30)`

## valgrind 的其它模块

除了上面提到的功能，valgrind 还可以检查 CPU 缓存及分支预测的命中率:

```bash
valgrind --tool=cachegrind your-app
```
