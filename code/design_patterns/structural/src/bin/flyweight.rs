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

use std::collections::BTreeMap;

#[derive(Debug, Default, Clone)]
pub struct KarakTea {
    preference: String,
}

impl KarakTea {
    #[must_use]
    pub const fn new(preference: String) -> Self {
        Self { preference }
    }

    #[must_use]
    pub fn preference(&self) -> &str {
        self.preference.as_str()
    }
}

#[derive(Default)]
pub struct TeaMaker {
    available_tea: BTreeMap<String, KarakTea>,
}

impl TeaMaker {
    #[must_use]
    #[allow(clippy::missing_panics_doc)]
    pub fn make(&mut self, preference: &str) -> KarakTea {
        if let Some(tea) = self.available_tea.get(preference) {
            tea.clone()
        } else {
            let tea = KarakTea::new(preference.to_owned());
            self.available_tea
                .insert(preference.to_owned(), tea.clone());
            tea
        }
    }
}

pub struct TeaShop {
    tea_maker: TeaMaker,
    orders: BTreeMap<usize, KarakTea>,
}

impl TeaShop {
    #[must_use]
    pub const fn new(tea_maker: TeaMaker) -> Self {
        Self {
            tea_maker,
            orders: BTreeMap::new(),
        }
    }

    pub fn take_order(&mut self, tea_preference: &str, table: usize) {
        let tea = self.tea_maker.make(tea_preference);
        self.orders.insert(table, tea);
    }

    pub fn serve(&self) {
        for (table, tea) in &self.orders {
            println!("Serving the tea( {} ) to table {table}", tea.preference());
        }
    }
}

fn main() {
    let tea_maker = TeaMaker::default();
    let mut tea_shop = TeaShop::new(tea_maker);

    tea_shop.take_order("less sugar", 1);
    tea_shop.take_order("more milk", 2);
    tea_shop.take_order("without sugar", 3);
    tea_shop.serve();
}
