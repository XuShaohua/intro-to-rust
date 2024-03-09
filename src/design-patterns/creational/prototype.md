
# 原型模式 Prototype
创建(克隆)一个对象的副本, 而不是从头创建一个对象.

## 问题描述
1995年出现的多莉羊, 是直接从成年羊的体细胞克隆生成的. 而普通的羊则是在精子与卵细胞结合形成授精卵后, 
再长成新的羊.

## 代码示例
```rust
#[derive(Debug, Clone)]
pub struct Sheep {
    name: String,
    category: String,
}

impl Sheep {
    #[must_use]
    pub fn new(name: &str) -> Self {
        Self {
            name: name.to_owned(),
            category: "Mountain Sheep".to_owned(),
        }
    }

    pub fn set_name(&mut self, name: &str) {
        self.name.clear();
        self.name.push_str(name);
    }

    #[must_use]
    pub fn name(&self) -> &str {
        &self.name
    }

    pub fn set_category(&mut self, category: &str) {
        self.category.clear();
        self.category.push_str(category);
    }

    #[must_use]
    pub fn category(&self) -> &str {
        &self.category
    }

    pub fn show_info(&self) {
        println!("Sheep [name: {0}, category: {1}]", self.name, self.category);
    }
}

fn main() {
    let joe = Sheep::new("Joe");
    joe.show_info();

    let mut dolly = joe.clone();
    dolly.set_name("Dolly");
    dolly.show_info();

    let mut dolly_clone = joe;
    dolly_clone.set_name("Dolly2");
    dolly_clone.show_info();
}
```