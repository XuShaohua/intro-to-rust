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

pub trait Employee {
    fn get_name(&self) -> &str;
    fn get_salary(&self) -> f64;
    fn set_salary(&mut self, salary: f64);
    fn get_roles(&self) -> &[String];
}

struct Developer {
    name: String,
    salary: f64,
    roles: Vec<String>,
}

impl Developer {
    #[must_use]
    pub fn new(name: &str, salary: f64) -> Self {
        Self {
            name: name.to_owned(),
            salary,
            roles: vec!["Development".to_owned(), "Employee".to_owned()],
        }
    }
}

impl Employee for Developer {
    #[must_use]
    fn get_name(&self) -> &str {
        &self.name
    }

    #[must_use]
    fn get_salary(&self) -> f64 {
        self.salary
    }

    fn set_salary(&mut self, salary: f64) {
        self.salary = salary;
    }

    #[must_use]
    fn get_roles(&self) -> &[String] {
        &self.roles
    }
}

pub struct Designer {
    name: String,
    salary: f64,
    roles: Vec<String>,
}

impl Designer {
    #[must_use]
    pub fn new(name: &str, salary: f64) -> Self {
        Self {
            name: name.to_owned(),
            salary,
            roles: vec!["Designer".to_owned(), "Employee".to_owned()],
        }
    }
}

impl Employee for Designer {
    #[must_use]
    fn get_name(&self) -> &str {
        &self.name
    }

    #[must_use]
    fn get_salary(&self) -> f64 {
        self.salary
    }

    fn set_salary(&mut self, salary: f64) {
        self.salary = salary;
    }

    #[must_use]
    fn get_roles(&self) -> &[String] {
        &self.roles
    }
}

#[derive(Default)]
pub struct Organization {
    employees: Vec<Box<dyn Employee>>,
}

impl Organization {
    pub fn add_employee(&mut self, employee: Box<dyn Employee>) {
        self.employees.push(employee);
    }

    #[must_use]
    pub fn get_net_salaries(&self) -> f64 {
        let mut sum = 0.0;
        for employee in &self.employees {
            sum += employee.get_salary();
        }
        sum
    }
}

fn main() {
    let john = Box::new(Developer::new("John Doe", 12_000.0));
    let jane = Box::new(Developer::new("Jane Doe", 15_000.0));

    let mut organization = Organization::default();
    organization.add_employee(john);
    organization.add_employee(jane);

    let net_salaries = organization.get_net_salaries();
    println!("Net salaries: {net_salaries}");
}
