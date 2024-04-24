# 中介者模式 Mediator

## 问题描述

## 代码示例

```rust, ignore
use chrono::Local;
use std::cell::RefCell;
use std::rc::Rc;

pub trait ChatRoomMediator {
    fn show_message(&mut self, user_name: &str, message: &str);
}

pub struct ChatRoom {
    id: i32,
    count: usize,
}

impl ChatRoom {
    #[must_use]
    pub const fn new(id: i32) -> Self {
        Self { id, count: 0 }
    }

    #[must_use]
    pub const fn id(&self) -> i32 {
        self.id
    }
}

impl ChatRoomMediator for ChatRoom {
    fn show_message(&mut self, user_name: &str, message: &str) {
        self.count += 1;
        let now = Local::now();
        let now = now.format("%b %d, %H:%M");
        println!("{now} [{user_name}]: {message}");
    }
}

pub type ChatRoomNode = Rc<RefCell<dyn ChatRoomMediator>>;

pub struct User {
    name: String,
    chat_room: ChatRoomNode,
}

impl User {
    #[must_use]
    pub const fn new(name: String, chat_room: ChatRoomNode) -> Self {
        Self { name, chat_room }
    }

    #[must_use]
    pub fn name(&self) -> &str {
        &self.name
    }

    pub fn send(&self, message: &str) {
        self.chat_room
            .borrow_mut()
            .show_message(&self.name, message);
    }
}

fn main() {
    let chat_room = Rc::new(RefCell::new(ChatRoom::new(42)));
    let john = User::new("John".to_owned(), chat_room.clone());
    let jane = User::new("Jane".to_owned(), chat_room);

    john.send("Hi there!");
    jane.send("Hey!");
}
```