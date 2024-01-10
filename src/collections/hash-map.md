
# HashMap 与 HashSet
目前, Rust 标准库里的哈稀表使用的是 `hashbrown` crate, 它基于 `SwissTable` hash 的 c++ 版本.

## Entry API
这种接口设计, 可以很方便的进行原地操作(in-place operation), 比如插入以及修改, 而不用重新查找.

以下代码用于统计文件中的单词数 (word count):
```rust
use std::collections::HashMap;
use std::io::{self, BufRead};

fn main() -> Result<(), io::Error> {
    let mut words = HashMap::<String, i32>::new();

    for line in io::stdin().lock().lines() {
        for word in line?.split_whitespace() {
            words
                .entry(word.to_owned())
                .and_modify(|counter| *counter += 1)
                .or_insert(1);
        }
    }

    for (word, counter) in &words {
        println!("{word}: {counter}");
    }
    Ok(())
}
```

## 相关内容
- [Hash trait](../common-traits/hash-hasher.md)

## 参考
- [SwissTable](https://abseil.io/blog/20180927-swisstables)
- [SwissTable on CppCon 2017](https://www.youtube.com/watch?v=ncHmEUmJZf4)