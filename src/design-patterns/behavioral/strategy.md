
# 策略模式 Strategy

## 问题描述

## 代码示例
```rust

pub trait SortStrategy {
    fn sort(&self, array: &mut [i32]);
}

#[derive(Default)]
pub struct BubbleSort {}

impl SortStrategy for BubbleSort {
    fn sort(&self, _array: &mut [i32]) {
        println!("Sorting using bubble sort");
    }
}

#[derive(Default)]
pub struct QuickSort {}

impl SortStrategy for QuickSort {
    fn sort(&self, _array: &mut [i32]) {
        println!("Sorting using quick sort");
    }
}

pub struct Sorter {
    strategy: Box<dyn SortStrategy>,
}

impl Sorter {
    #[must_use]
    pub fn new(strategy: Box<dyn SortStrategy>) -> Self {
        Self { strategy }
    }

    pub fn sort(&self, array: &mut [i32]) {
        self.strategy.sort(array);
    }
}

fn main() {
    let mut array = [1, 5, 4, 3, 2, 8];

    let sorter = Sorter::new(Box::<BubbleSort>::default());
    sorter.sort(&mut array);

    let sorter = Sorter::new(Box::<QuickSort>::default());
    sorter.sort(&mut array);
}
```