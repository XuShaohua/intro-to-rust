
# Write
一个类型实现了 `Write` trait 时, 就表示它实现了二进制字节流输出.

`Write` trait 的定义如下:
```rust
pub trait Write {
    // Required methods
    fn write(&mut self, buf: &[u8]) -> Result<usize>;
    fn flush(&mut self) -> Result<()>;

    // Provided methods
    fn write_vectored(&mut self, bufs: &[IoSlice<'_>]) -> Result<usize> { ... }
    fn is_write_vectored(&self) -> bool { ... }
    fn write_all(&mut self, buf: &[u8]) -> Result<()> { ... }
    fn write_all_vectored(&mut self, bufs: &mut [IoSlice<'_>]) -> Result<()> { ... }
    fn write_fmt(&mut self, fmt: Arguments<'_>) -> Result<()> { ... }
    fn by_ref(&mut self) -> &mut Self
       where Self: Sized { ... }
}
```

通常只需要实现以下两个方法:
- `write()` 写入一块数据
- `flush()` 将缓存回写到存储设备

标准库为多个对象实现了 `Write` trait:
- `File`, 文件对象
- `TcpStream`, TCP socket 对象
- `UnixStream`, unix domain socket 对象
- `StdOut` 与 `Stderr`, 标准输出与错误输出
- `Vec<u8>` 与 `VecDeque<u8>`, 用作二进制数据缓存
