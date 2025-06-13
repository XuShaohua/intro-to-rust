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

pub struct JobPost {
    title: String,
}

impl JobPost {
    #[must_use]
    pub fn new(title: &str) -> Self {
        Self {
            title: title.to_owned(),
        }
    }

    #[must_use]
    pub const fn title(&self) -> &str {
        self.title.as_str()
    }
}

pub trait Observer {
    fn on_job_posted(&self, job: &JobPost);
}

pub struct JobSeeker {
    name: String,
}

impl JobSeeker {
    #[must_use]
    pub fn new(name: &str) -> Self {
        Self {
            name: name.to_owned(),
        }
    }
}

impl Observer for JobSeeker {
    fn on_job_posted(&self, job: &JobPost) {
        println!("Hi, {}! New job posted: {}", self.name, job.title());
    }
}

#[derive(Default)]
pub struct EmploymentAgency {
    observers: Vec<Box<dyn Observer>>,
}

impl EmploymentAgency {
    pub fn attach(&mut self, observer: Box<dyn Observer>) {
        self.observers.push(observer);
    }

    pub fn add_job(&self, job: &JobPost) {
        self.notify(job);
    }

    fn notify(&self, job: &JobPost) {
        for observer in &self.observers {
            observer.as_ref().on_job_posted(job);
        }
    }
}

fn main() {
    let john = Box::new(JobSeeker::new("John Doe"));
    let jane = Box::new(JobSeeker::new("Jane Doe"));

    let mut job_postings = EmploymentAgency::default();
    job_postings.attach(john);
    job_postings.attach(jane);

    job_postings.add_job(&JobPost::new("Software Engineer"));
}
