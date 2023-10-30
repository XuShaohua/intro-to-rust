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

pub trait WritingState {
    fn write(&self, words: &str);
}

#[derive(Default)]
pub struct UpperCase {}

impl WritingState for UpperCase {
    fn write(&self, words: &str) {
        println!("{}", words.to_ascii_uppercase());
    }
}

#[derive(Default)]
pub struct LowerCase {}

impl WritingState for LowerCase {
    fn write(&self, words: &str) {
        println!("{}", words.to_ascii_lowercase());
    }
}

#[derive(Default)]
pub struct DefaultText {}

impl WritingState for DefaultText {
    fn write(&self, words: &str) {
        println!("{words}");
    }
}

pub struct TextEditor {
    state: Box<dyn WritingState>,
}

impl TextEditor {
    #[must_use]
    pub const fn new(state: Box<dyn WritingState>) -> Self {
        Self { state }
    }

    pub fn set_state(&mut self, new_state: Box<dyn WritingState>) {
        self.state = new_state;
    }

    pub fn write(&self, words: &str) {
        self.state.write(words);
    }
}

fn main() {
    let mut editor = TextEditor::new(Box::<DefaultText>::default());
    editor.write("First line");

    editor.set_state(Box::<UpperCase>::default());
    editor.write("Second line");
    editor.write("Third line");

    editor.set_state(Box::<LowerCase>::default());
    editor.write("Fourth line");
    editor.write("Fifth line");
}
