//! From `core/src/iter/traits/iterator.rs`

pub trait Iterator {
    // 关联类型
    type Item;

    // Required method
    fn next(&mut self) -> Option<Self::Item>;

    // Provided methods
    fn size_hint(&self) -> (usize, Option<usize>) {
        (0, None)
    }

    ...
}