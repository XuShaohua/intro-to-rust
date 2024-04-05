# String 内存布局

String 内部由 `Vec<u8>` 实现, 但它会保证里面的是有效的 UTF-8 编码的字符串.

`&str` 是指向 String 的引用, 它也能保证都是有效的 UTF-8 编码的, 可以认为它是 `&[u8]`.

`String::len()` 或者 `&str::len()` 得到的是里面的字节数;
如果要得到里面的 UTF-8 字符串长度, 需要用 ｀String::chars()::count()` 方法.
