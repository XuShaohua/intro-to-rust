
# 迭代器模式 Iterator

## 问题描述

## 代码示例
```rust

#[derive(Debug, Clone, Copy, PartialEq, PartialOrd)]
pub struct RadioStation {
    frequency: f64,
}

impl RadioStation {
    #[must_use]
    pub const fn new(frequency: f64) -> Self {
        Self { frequency }
    }

    #[must_use]
    pub const fn frequency(&self) -> f64 {
        self.frequency
    }
}

pub type StationList = Vec<RadioStation>;

fn main() {
    let mut list = vec![
        RadioStation::new(89.0),
        RadioStation::new(101.0),
        RadioStation::new(102.0),
        RadioStation::new(103.2),
    ];
    println!("list len: {}", list.len());

    for station in &list {
        println!("freq: {}", station.frequency());
    }

    if let Some(index) = list
        .iter()
        .position(|station| (station.frequency() - 89.0).abs() < f64::EPSILON)
    {
        list.swap_remove(index);
    }
    //list.retain(|&station| station.frequency() != 89.0);
    println!("list len: {}", list.len());
}
```