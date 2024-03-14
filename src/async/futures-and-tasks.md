# 理解 Futures 与 Tasks

在同步式的代码 (synchronous code) 里调用阻塞函数(blocking function), 会阻塞整个线程;
而在异步式的代码里, `Future` 会把控制权返还给线程, 这样其它的 `Future` 就可以运行了.