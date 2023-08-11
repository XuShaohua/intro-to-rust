
# Index
* `rand` 随机数生成器, 随机分布算法, 随机序列
* `clap` 处理命令行选项
* `ansi_term` 调整终端字符串颜色与样式
* `tar` 处理 tarball 文件
* `flate2` 处理 gz 等压缩格式
* `data_encoding` 提供了base64以及byte array 转十六进制字符串的功能, 但是没有
提供对于数据流的处理
* `base64` 支持 base32/base64 编码
* `ring` rust 语言实现的加密算法集合, 有很大部分代码是由汇编 和 C 实现的, 比如
sha256/sha512 算法.
* `rusqlite` sqlite C 接口的绑定
* `postgres` postgresql 数据库的接口实现
* `error_chain` 处理 `Result<>` 更容易, 可以合并各种 `error` 类型.
* `regex` 正则表达式的实现, 实始化 `Pattern` 时性能不好
* `lazy_static` thread-local 数据, 第一次使用时初始化, 比如用于缓存
`regex pattern` 数值
* `unicode_segmentation` 处理 UTF-8 转 Unicde 字符串
* `num_cpus` 类似于 `nproc` 命令, 返回系统中的 cpu 数量
* `chrono` 时间及日期处理
* `log`, `env_logger`, `syslog`, `log4rs` 都是日志模块
* `semver` 解析和处理版本号
* `reqwest` 类似于 python 里的 `requests` 模块, 用于处理客户端 HTTP 请求
* `memmap` 对 `mmap` 系统接口的绑定
* `walkdir` 遍历目录
* `glob` 目录文件名遍历匹配
* `url` URL 格式转换
* `percent_encoding` 将URL转为带百分号的转义字串
* `serde`, `serde_json`, `serde_derive` 提供了很方便的序列化/反序列化工具
* `threadpool` 线程池
* `rayon` 轻量级线程调度工具, 方便实现并发任务
* `url` 处理 URL 
* `mime` 解析 MIME 类型
* `ansi_term` 终端中显示带颜色的文字
