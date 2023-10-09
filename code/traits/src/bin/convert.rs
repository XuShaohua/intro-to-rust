// Copyright (c) 2023 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

#![allow(dead_code)]

use std::convert::{TryFrom, TryInto};
use std::fs;
use std::io;
use std::num;

pub trait AsRef2<T: ?Sized> {
    fn as_ref(&self) -> &T;
}

pub trait AsMut2<T: ?Sized> {
    fn as_mut(&mut self) -> &mut T;
}

/// is_hello() is a generic function
fn is_hello<T: AsRef<str>>(s: T) {
    println!("s: {}", s.as_ref());
}

fn add_one<T: AsMut<u64>>(num: &mut T) {
    *num.as_mut() += 1;
}

fn is_hello2<T: Into<Vec<u8>>>(s: T) {
    let bytes = b"hello".to_vec();
    assert_eq!(bytes, s.into());
    //println!("s: {:?}", s.into());
}

pub trait Into2<T>: Sized {
    fn into(self) -> T;
}

pub trait From2<T>: Sized {
    fn from(t: T) -> Self;
}

pub trait TryFrom2<T>: Sized {
    type Error;

    fn try_from(value: T) -> Result<Self, Self::Error>;
}

#[derive(Debug)]
enum CliError {
    IoError(io::Error),
    ParseError(num::ParseIntError),
}

impl From<io::Error> for CliError {
    fn from(error: io::Error) -> Self {
        CliError::IoError(error)
    }
}

impl From<num::ParseIntError> for CliError {
    fn from(error: num::ParseIntError) -> Self {
        CliError::ParseError(error)
    }
}

fn open_and_parse_file(file_name: &str) -> Result<i32, CliError> {
    let contents = fs::read_to_string(file_name)?;
    let num: i32 = contents.trim().parse()?;
    Ok(num)
}

struct SuperiorThanZero(i32);

impl TryFrom<i32> for SuperiorThanZero {
    type Error = &'static str;

    fn try_from(value: i32) -> Result<Self, Self::Error> {
        if value > 0 {
            Ok(SuperiorThanZero(value))
        } else {
            Err("SuperiorThanZero only accepts value superior than zero")
        }
    }
}

fn main() {
    let s = "hello";
    is_hello(s);

    let s = "hello".to_string();
    is_hello(s);

    let mut boxed_num = Box::new(0);
    add_one(&mut boxed_num);
    println!("boxed num: {}", *boxed_num);

    let s = "hello".to_string();
    is_hello2(s);

    let content = open_and_parse_file("/proc/uptime");
    println!("content: {:?}", content);

    {
        let big_num = 1_000_000_000_000i64;
        let smaller_num = big_num as i32;
        println!("smaller_num: {}", smaller_num);

        let smaller_num = i32::try_from(big_num);
        println!("smaller num: {:?}", smaller_num);

        let smaller_num: Result<i32, _> = big_num.try_into();
        println!("smaller num: {:?}", smaller_num);

        #[allow(clippy::unnecessary_fallible_conversions)]
        let smaller_num: Result<i32, _> = true.try_into();
        println!("smaller num: {:?}", smaller_num);
    }
}
