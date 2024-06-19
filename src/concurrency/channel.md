
# 使用 Channel 传递消息

## 阻塞式

std::sync::mpsc::sync_channel, 可以指定 channel 的容量, 当超出时, `sender.send(value)` 就会被阻塞.

## 非阻塞式

## Channel 是如何实现的
