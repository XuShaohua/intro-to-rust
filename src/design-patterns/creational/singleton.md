
# 单例模式 Singleton

## 问题描述

## 代码示例
```rust
use std::sync::Mutex;

pub struct President {
    name: String,
}

impl President {
    #[must_use]
    pub(crate) const fn empty() -> Self {
        Self {
            name: String::new(),
        }
    }

    #[must_use]
    pub(crate) fn new(name: &str) -> Self {
        Self {
            name: name.to_owned(),
        }
    }

    #[must_use]
    pub fn name(&self) -> &str {
        &self.name
    }

    pub fn set_name(&mut self, name: &str) {
        self.name.clear();
        self.name.push_str(name);
    }
}

pub static GLOBAL_PRESIDENT: Mutex<President> = Mutex::new(President::empty());

fn main() {
    GLOBAL_PRESIDENT
        .lock()
        .unwrap()
        .set_name("Trump[mutex_only]");
    println!(
        "President name: {}",
        GLOBAL_PRESIDENT.lock().unwrap().name()
    );
}
```