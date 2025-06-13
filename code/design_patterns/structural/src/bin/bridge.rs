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

pub trait WebPage {
    fn new(theme: Box<dyn Theme>) -> Self;

    fn get_content(&self) -> String;
}

pub struct AboutPage {
    theme: Box<dyn Theme>,
}

impl WebPage for AboutPage {
    fn new(theme: Box<dyn Theme>) -> Self {
        Self { theme }
    }

    fn get_content(&self) -> String {
        format!("About page in {}", self.theme.color())
    }
}

pub struct CareersPage {
    theme: Box<dyn Theme>,
}

impl WebPage for CareersPage {
    fn new(theme: Box<dyn Theme>) -> Self {
        Self { theme }
    }
    fn get_content(&self) -> String {
        format!("Careers page in {}", self.theme.color())
    }
}

pub trait Theme {
    fn color(&self) -> &'static str;
}

#[derive(Debug, Clone)]
pub struct DarkTheme {}

impl Theme for DarkTheme {
    fn color(&self) -> &'static str {
        "Dark Black"
    }
}

#[derive(Debug, Clone)]
pub struct LightTheme {}

impl Theme for LightTheme {
    fn color(&self) -> &'static str {
        "Off White"
    }
}

#[derive(Debug, Clone)]
pub struct AquaTheme {}

impl Theme for AquaTheme {
    fn color(&self) -> &'static str {
        "Light blue"
    }
}

fn main() {
    let dark_theme = Box::new(DarkTheme {});

    let about_page = AboutPage::new(dark_theme.clone());
    let careers_page = CareersPage::new(dark_theme);

    println!("{}", about_page.get_content());
    println!("{}", careers_page.get_content());
}
