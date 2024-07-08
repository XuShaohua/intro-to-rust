#![allow(dead_code)]

use std::cmp::Ordering;

pub trait PartialEq2<Rhs: ?Sized = Self> {
    #[must_use]
    fn eq(&self, other: &Rhs) -> bool;

    #[inline]
    #[must_use]
    fn ne(&self, other: &Rhs) -> bool {
        !self.eq(other)
    }
}

#[derive(PartialEq)]
enum BookFormat {
    Paperback,
    Hardback,
    Ebook,
}

struct Book {
    isbn: i32,
    format: BookFormat,
}

impl PartialEq for Book {
    fn eq(&self, other: &Self) -> bool {
        self.isbn == other.isbn
    }
}

// Implement <Book> == <BookFormat>
impl PartialEq<BookFormat> for Book {
    fn eq(&self, other: &BookFormat) -> bool {
        self.format == *other
    }
}

// Implement <BookFormat> == <Book>
impl PartialEq<Book> for BookFormat {
    fn eq(&self, other: &Book) -> bool {
        *self == other.format
    }
}

impl Eq for Book {}

#[derive(Clone, Copy, PartialEq, Debug, Hash)]
enum Ordering2 {
    Less = -1,
    Equal = 0,
    Greater = 1,
}

impl Ordering2 {
    pub fn reverse(self) -> Ordering2 {
        match self {
            Self::Less => Self::Greater,
            Self::Equal => Self::Equal,
            Self::Greater => Self::Less,
        }
    }

    pub fn then(self, other: Ordering2) -> Ordering2 {
        match self {
            Self::Equal => other,
            _ => self,
        }
    }

    pub fn then_with<F: FnOnce() -> Ordering2>(self, f: F) -> Ordering2 {
        match self {
            Self::Equal => f(),
            _ => self,
        }
    }
}

trait PartialOrder<Rhs: ?Sized = Self>: PartialEq<Rhs> {
    #[must_use]
    fn partial_cmp(&self, other: &Rhs) -> Option<Ordering>;

    fn lt(&self, other: &Rhs) -> bool {
        matches!(self.partial_cmp(other), Some(Ordering::Less))
    }

    fn le(&self, other: &Rhs) -> bool {
        matches!(
            self.partial_cmp(other),
            Some(Ordering::Less) | Some(Ordering::Equal)
        )
    }

    fn gt(&self, other: &Rhs) -> bool {
        matches!(self.partial_cmp(other), Some(Ordering::Greater))
    }

    fn ge(&self, other: &Rhs) -> bool {
        matches!(
            self.partial_cmp(other),
            Some(Ordering::Greater) | Some(Ordering::Equal)
        )
    }
}

struct Person {
    id: u32,
    name: String,
    height: f64,
}

impl PartialOrd for Person {
    fn partial_cmp(&self, other: &Self) -> Option<Ordering> {
        self.height.partial_cmp(&other.height)
    }
}

impl PartialEq for Person {
    fn eq(&self, other: &Self) -> bool {
        self.height == other.height
    }
}

struct Person2 {
    id: u32,
    name: String,
    height: f64,
}

impl PartialEq for Person2 {
    fn eq(&self, other: &Self) -> bool {
        self.id == other.id && self.name == other.name && self.height == other.height
    }
}

impl Eq for Person2 {}

fn main() {
    let b1 = Book {
        isbn: 3,
        format: BookFormat::Paperback,
    };
    let b2 = Book {
        isbn: 3,
        format: BookFormat::Ebook,
    };

    let b3 = Book {
        isbn: 10,
        format: BookFormat::Ebook,
    };

    println!("b1 == b2: {}", b1 == b2);
    println!("b2 == b3: {}", b2 == b3);
    println!("ebook == b3: {}", BookFormat::Ebook == b3);

    {
        // Ordering
        let mut data = [2, 10, 5, 8];
        data.sort_by(|a, b| a.cmp(b).reverse());
        println!("data: {:?}", data);
    }

    {
        // Reverse
        let mut v = vec![1, 2, 3, 4, 5, 6];
        //v.sort_by_key(|&n| (n > 3, std::cmp::Reverse(n)));
        v.sort_by_key(|&n| (std::cmp::Reverse(n)));
        println!("v: {:?}", v);
    }

    #[allow(clippy::eq_op)]
    #[allow(invalid_nan_comparisons)]
    {
        let x = f64::NAN;
        println!("x: {x:?}");
        println!("x = x: {}", x == x);

        let y = f64::INFINITY;
        println!("x: {:?}", y);

        // Test Eq
        println!("NAN == NAN ? {}", f64::NAN == f64::NAN);
        println!("NAN == NAN ? {}", f64::NAN.is_nan());

        // Test Ord
        // will throw error
        println!("NAN == NAN ? {:?}", 3.cmp(&3));
        //println!("NAN == NAN ? {}", std::f64::NAN.cmp(&std::f64::NAN));
    }
}
