# 使用 Vector

## 创建新的 Vector

创建 vector 的方法有好些, 比如:

- `Vec::new()` 空白的 Vector, capacity = 0, len = 0
- `vec![1, 2, 3]` 指定它的初始值, capacity = 3, len = 3
- `vec![42; 10]` 包含10个元素, 每个的值都是42
- `let v: Vec<i32> = (0..5).collect()` 从 iterator 转换, 但需要指定数据类型
- `let mut v = Vec::<i32>::with_capacity(10);` 初始化一个空的, 但预分配10个元素的空间

