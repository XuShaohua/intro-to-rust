// Copyright (c) 2023 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

#include <iostream>
#include <vector>

class JobPost {
 public:
  explicit JobPost(const std::string& title): title_(title) {}

  const std::string& title() const { return title_; }

 private:
  std::string title_;
};

class Observer {
 public:
  virtual void onJobPosted(const JobPost& job_post) = 0;
};

class JobSeeker: public Observer {
 public:
  explicit JobSeeker(const std::string& name) : name_(name) {}

  void onJobPosted(const JobPost& job_post) override {
    std::cout << "Hi " << this->name_ << " new job posted!" << std::endl;
  }

 private:
  std::string name_;
};

class EmploymentAgency {
 public:
  EmploymentAgency() : observers_() {}

  void attach(Observer* observer) {
    observers_.emplace_back(observer);
  }

  void notify(JobPost& job_post) {
    for (Observer* observer : observers_) {
      observer->onJobPosted(job_post);
    }
  }

  void addJob(JobPost job_post) {
    this->notify(job_post);
  }

 private:
  std::vector<Observer*> observers_;
};

int main() {
  EmploymentAgency agency;
  JobSeeker john("John Doe");
  JobSeeker jane("Jane Doe");

  agency.attach(&john);
  agency.attach(&jane);
  agency.addJob(JobPost{"Software Engineer"});

  return 0;
}