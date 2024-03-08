
# 工厂方法模式 Factory method

在运行时根据条件动态决定所需要的子类, 无需关心子类是如何构造的.

维基百科:
> 工厂方法模式是一种创建模式, 它使用工厂方法来处理创建对象的问题, 而无需指定将要创建的对象的确切类.
> 这是通过调用工厂方法来创建对象来完成的, 在接口中指定并由子类实现, 或者在基类中实现并可选地由派生类覆盖,
> 而不是通过调用构造函数.

## 问题描述
进行新员工招聘时, 不可都由HR进行面试, 还需要对这个职位比较熟悉的部门人员完成面试的职责. 比如开发人员去
面试新的程序员, 或者市场部经理去面试市场营销人员.

而工厂方法会根据所面试的岗位不同, 分配不同的面试人员, 他们会提问与部门工作相关的问题.

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