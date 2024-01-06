
# Function Declaration

## Hook

`f: Box<dyn Fn() + Send + 'static>`

标准库里的 panic hook 有这样的定义:

```rust
enum Hook {
    Default,
    Custom(Box<dyn Fn(&PanicInfo<'_>) + 'static + Sync + Send>),
}

impl Hook {
    #[inline]
    fn into_box(self) -> Box<dyn Fn(&PanicInfo<'_>) + 'static + Sync + Send> {
        match self {
            Hook::Default => Box::new(default_hook),
            Hook::Custom(hook) => hook,
        }
    }
}
```
