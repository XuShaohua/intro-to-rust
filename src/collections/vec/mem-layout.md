# 结构体定义与内存布局

`Vec<T>` vector 比较灵活, 里面的元素都在堆内存上分配.
[第三方库 smallvec](../../crates.io/smallvec.md)提供了方法, 可以在栈上分配小容量的 vector, 对性能做了优化.
