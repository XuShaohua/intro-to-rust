// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

#![allow(dead_code)]

trait Person {
    fn name(&self) -> String;
}

trait Student: Person {
    fn university(&self) -> String;
}

trait Programmer {
    fn favorite_language(&self) -> String;
}

trait ComputerScienceStudent: Programmer + Student {
    fn git_username(&self) -> String;
}

fn comp_sci_student_greeting(student: &dyn ComputerScienceStudent) -> String {
    format!(
        "My name is {} and I attend {}. My git username is {}",
        student.name(),
        student.university(),
        student.git_username()
    )
}

fn main() {}