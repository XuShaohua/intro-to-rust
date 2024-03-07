
# 工厂方法模式 Factory method

在运行时根据条件动态决定所需要的子类.

## 问题描述

## 程序示例
```rust
/// 面试官接口
pub trait Interviewer {
    fn new() -> Self;
    fn ask_questions(&self);
}

struct Developer {}

impl Interviewer for Developer {
    fn new() -> Self {
        Self {}
    }

    fn ask_questions(&self) {
        println!("Asking about design patterns!");
    }
}

struct CommunityExecutive {}

impl Interviewer for CommunityExecutive {
    fn new() -> Self {
        Self {}
    }

    fn ask_questions(&self) {
        println!("Asking about community building");
    }
}

pub struct HiringManager<Interviewer> {
    interviewer: Box<Interviewer>,
}

impl<T: Interviewer> Default for HiringManager<T> {
    fn default() -> Self {
        Self::new()
    }
}

impl<T: Interviewer> HiringManager<T> {
    #[must_use]
    pub fn new() -> Self {
        let interviewer = Box::new(T::new());
        Self { interviewer }
    }

    pub fn take_interview(&self) {
        self.interviewer.ask_questions();
    }
}

fn main() {
    let dev_manager = HiringManager::<Developer>::new();
    // Output: Asking about design patterns!
    dev_manager.take_interview();

    let marketing_manager = HiringManager::<CommunityExecutive>::new();
    // Output: Asking about community building
    marketing_manager.take_interview();
}
```