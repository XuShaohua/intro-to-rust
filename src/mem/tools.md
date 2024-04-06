# 工具

## Valgrind

检查一般的内存错误:

```bash
valgrind --tool=memcheck your-app
```

检查堆内存:

```bash
valgrind --tool=massif your-app
```

检查 CPU 缓存及分支预测的命中率:

```bash
valgrind --tool=cachegrind your-app
```
