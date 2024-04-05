# Send 与 Sync

* Types that implement `Send` are safe to pass by value to another thread. They can
  be moved across threads.
* Types that implement `Sync` are safe to pass by non-mut reference to another thread.
  They can be shared across threads.

* 当一个 struct 中的元素都实现了 `Send` trait 时, 该 struct 类型也自动实现了 `Send` trait.
* 当一个 struct 中的元素都实现了 `Sync` trait 时, 该 struct 类型也自动实现了 `Sync` trait.

以下类型实现了 Sync:

* `i32`
* `bool`
* `&str`
* `String`
* `TcpStream`
* `HashMap<T1, T2>`

以下类型实现了 Send:

* `Cell<T>`
* `Receiver<T>`

以下类型啥都没实现:

* `Rc<T>`
* `*mut u8`

* 当使用 `spawn()` 创建线程时, 它捕获的闭包 (closure) 必须都实现了 `Send` trait.
* 当把一个值通过 `channel` 发送给另一个线程时, 该值必须实现 `Send` trait.
