
# channel

std::sync::mpsc::sync_channel, 可以指定 channel 的容量, 当超出时, `sender.send(value)` 就会被阻塞.
