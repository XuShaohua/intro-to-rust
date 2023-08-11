
# 跨平台相关

## 跨平台的类

`sysinfo` 模块支持多个平台, 为此, 它实现了一个比较明晰的代码结构.
我们以系统信息为例来说明.

```txt
src
├── c_interface.rs
├── common.rs
├── debug.rs
├── lib.rs
├── linux
│   ├── component.rs
│   ├── disk.rs
│   ├── mod.rs
│   ├── network.rs
│   ├── processor.rs
│   ├── process.rs
│   ├── system.rs
│   ├── users.rs
│   └── utils.rs
├── sysinfo.h
├── system.rs
├── traits.rs
├── utils.rs
``` 

以上目录结构, 省去了其它平台相关的代码, 只描述 linux 平台相关的.
它首先在根目录加了 `traits.rs`, 里面定义了多个 traits, 包含了所有的开放接口.
然后 `c_interface.rs` 定义了 C FFI 接口, 里面用到的是都 Box 指针.

在 `linux/system.rs` 里面, 定义了 linux 平台相关的 `pub struct System { .. }`,
同时, 这个结构体实现了 `trait SystemExt` 要求的接口.

其它几个模块也都是这样组织的, 整个项目的代码结构很明晰.

