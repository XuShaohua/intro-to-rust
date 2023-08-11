
# Vectors
- `Vec<T>` vector 就比较灵活了，里面的元素都在堆内存上分配；但有第三方库提供了方法
可以在栈上分配小容量的 vector，叫做 `SmallVec`，对性能做了优化
- 创建 vector 的方法有好些，比如：
  - `Vec::new()` 空的
  - `vec![1, 2, 3]` 指定它的初始值
  - `vec![42; 10]` 包含10个元素，每个的值都是42
  - `let v: Vec<i32> = (0..5).collect()` 从 iterator 转换，但需要指定数据类型
  - `let mut v = Vec::<i32>::with_capacity(10);` 初始化一个空的，但预分配10个元素的空间
- `v.reverse();` 这里调用的是 `Slice::reverse()` 方法，是隐式地将 vec 先转成切片的

