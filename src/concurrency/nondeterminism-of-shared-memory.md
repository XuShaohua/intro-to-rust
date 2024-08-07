# 基于共享内存的并发带来的不确定性

线程之间共享内存 (shared mutable states) 时的不确定性:

- 线程间交错运行 (thread interleaving), 导致线程之间的读写指令被交错执行
- CPU 进行的指令重排 (reordering), 导致线程内部的读写指令被重新排布

## 线程间交错运行

线程间的交换运行, 是由操作系统内核的调度器 (scheduler) 控制的.

看一个例子:

```rust, no_run
static COUNTER = AtomicUsize::new(0);
// thread A & B
let c = COUNTER.load();
COUNTER.store(c + 1);
```

问题, 线程A 和 B 交错运行带来的不确定性:

- `[COUNTER = 0]`
- `Thread#A load()`
- `Thread#B load()`
- `Thread#A store()`
- `Thread#B store()`
- `[COUNTER = 1]`

解决方案, 修改以上指令, 使用原子化的读写内存指令 (atomically reading & writing):

- `Read-modify-write` 模式
    - `swap()`
    - `compare-and-swap()`
    - `fetch-and-add()`

基于以上读写模式修改后的代码:

```rust, no_run
static COUNTER = AtomicUsize::new(0);
// thread A & B
let c = COUNTER.fetch_and_add(1);
```

运行效果如下:

- `[COUNTER = 0]`
- `Thread#A fetch_and_add()`
- `Thread#B fetch_and_add()`
- `[COUNTER = 2]`

## CPU 进行的指令重排

线程内读写指令的重新排布, 是 CPU 或者编译器为了优化指令的性能.

举个例子, 下面的代码片段中, `FLAG` 是在线程 A 和 B 之间共享的, 比如其类型是 `AtomicI32` :

```text
Thread# A        || Thread# B
                 ||
DATA = 42;       || if FLAG.load() {
FLAG.store(1);   ||   assert_eq!(DATA, 42);
                 || }
```

问题, 两个线程的指令被执行时发生了重排:

- 线程 A 或者线程 B 发生指令重排后, 在线程 B 中的断言 (`assert_eq!()`) 表达式就会失败

解决方法, 禁止重排:

- 内存屏障 (memory barrier, fence), 在读写指令之间加上内存屏障
- 指定访存顺序 (access ordering)
    - `FLAG.store(1, release)`
    - `FLAG.load(acquire)`

指定访存顺序的方法, 使用 release/acquire 同步原语:

- `release store`, 禁止与前面的指令重排
- `acquire load`, 禁止与后面的指令重排

```text
Thread# A                 || Thread# B
                          ||
DATA = 42;                || if FLAG.load(acquire) {
FLAG.store(1, release);   ||   assert_eq!(DATA, 42);
                          || }
```

使用内存屏障的方法, 通过 顺序一致性 sequentially consistent (SC) 同步原语:

- SC 屏障: 禁止在它之前和在它之后的指令, 跨越它被重排, 可以保证在它之前的指令先被执行, 在它之后的指令后被执行
- 访存顺序为 relaxed, 就是说不要求显式地指定访存顺序, 它无关紧要

```text
Thread# A                 || Thread# B
                          ||
DATA = 42;                || if FLAG.load(relaxed) {
fence(SC);                ||   fence(SC);
FLAG.store(1, relaxed);   ||   assert_eq!(DATA, 42);
                          || }
```

## 参考

- [KAIST CS431: Concurrent Programming](https://github.com/kaist-cp/cs431)
- [Memory barrier](https://en.wikipedia.org/wiki/Memory_barrier)