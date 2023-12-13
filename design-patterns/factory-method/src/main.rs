// Copyright (c) 2023 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be
// found in the LICENSE file.

#![deny(
    warnings,
    clippy::all,
    clippy::cargo,
    clippy::nursery,
    clippy::pedantic
)]

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
