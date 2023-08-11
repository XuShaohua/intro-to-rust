
# Tips

## Make wasm smaller

1. Use release version:
```bash
trunk build --release
```

2. Add release profile to Cargo.toml:
```toml
[profile.release]
lto = true
opt-level = 'z'
```

3. Avoid string formating

Replace `format!()` macro or `to_string()` with string concat:
- `concat!()` macro
- `[].join()`
- `[].concat()`
- `String.push_str()`


4. Inspect with [binaryen](https://github.com/WebAssembly/binaryen)


## References
- https://rustwasm.github.io/docs/book/reference/code-size.html
