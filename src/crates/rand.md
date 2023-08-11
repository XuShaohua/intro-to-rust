
# rand crate
ThreadRng:
thread safe, use thread-local memeory, implements `Copy` trait, but not
`Send` or `Sync` traits.

SliceRandom:
将一个 slice 中的元素随机打乱.

IteratorRandom:
从一个 `iterator` trait object 中随机选取一个元素.

distributions 模块, 用于生成概率分布样本数据, 比如正态分布.
