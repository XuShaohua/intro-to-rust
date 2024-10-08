// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

struct Child {
    name: String,
}

impl Child {
    fn title(&self) {
        println!("Child: {}", self.name);
    }
}

trait Student {
    fn title(&self);
}

/// 班长
trait ClassPresident {
    fn title(&self);
}

/// 数学课代表
trait MathRepresentative {
    fn title(&self);
}

impl Student for Child {
    fn title(&self) {
        println!("Student: {}", self.name);
    }
}

impl ClassPresident for Child {
    fn title(&self) {
        println!("Class president: {}", self.name);
    }
}

impl MathRepresentative for Child {
    fn title(&self) {
        println!("Math representative: {}", self.name);
    }
}

fn main() {
    let child = Child {
        name: "Joey".to_owned(),
    };
    // 调用 Child::title() 方法
    child.title();
    // 使用完全限定语法
    Student::title(&child);
    // 第二种风格
    <Child as ClassPresident>::title(&child);
    // 另一种风格的写法
    (&child as &dyn MathRepresentative).title();
}
