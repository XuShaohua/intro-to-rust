
# 模板方法模式 Template Method

## 问题描述

## 代码示例
```rust

pub trait Builder {
    fn build(&self) {
        self.test();
        self.lint();
        self.assemble();
        self.deploy();
    }

    fn test(&self);
    fn lint(&self);
    fn assemble(&self);
    fn deploy(&self);
}

#[derive(Default)]
pub struct AndroidBuilder {}

impl Builder for AndroidBuilder {
    fn test(&self) {
        println!("Running android tests");
    }

    fn lint(&self) {
        println!("Linting the android code");
    }

    fn assemble(&self) {
        println!("Assembling the android build");
    }

    fn deploy(&self) {
        println!("Deploying android build to server");
    }
}

#[derive(Default)]
pub struct IosBuilder {}

impl Builder for IosBuilder {
    fn test(&self) {
        println!("Running ios tests");
    }

    fn lint(&self) {
        println!("Linting the ios code");
    }

    fn assemble(&self) {
        println!("Assembling the ios build");
    }

    fn deploy(&self) {
        println!("Deploying ios build to server");
    }
}

fn main() {
    let android_builder = AndroidBuilder::default();
    android_builder.build();

    let ios_builder = IosBuilder::default();
    ios_builder.build();
}
```