# 错误处理 Error Handling

`std::panic::catch_unwind()` 可以捕获 `unwinding panic`, 但不能处理
`abort panic`.

## abort

```rust
rustc -C panic=abort
```

## Propagating Errors

这里, 如果返回的是 `Ok(t)` 就直接得到它的值, 如果返回的是 `Err(e)`, 就将错误
返回给上层调用处.

```rust
let weather = get_weather(hometown) ?;
```

## 参考

- [Error handling summary in 2019](https://blog.yoshuawuyts.com/error-handling-survey/)