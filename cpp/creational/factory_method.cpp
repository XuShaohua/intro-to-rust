// Copyright (c) 2023 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be
// found in the LICENSE file.

#include <iostream>
#include <memory>
#include <string>

class Interviewer {
 public:
  virtual void askQuestions() = 0;
};

class DevelopmentInterviewer: public Interviewer {
 public:
  void askQuestions() override {
    std::cout << "Ask questions about design patterns in cpp" << std::endl;
  }
};

class CommunityInterviewer: public Interviewer {
 public:
  void askQuestions() override {
    std::cout << "Ask questions about community building" << std::endl;
  }
};

class HiringManager {
 public:
  virtual Interviewer* makeInterviewer() = 0;

  void takeInterview() {
    Interviewer* interviewer = this->makeInterviewer();
    interviewer->askQuestions();
  }
};

class DevelopmentManager: public HiringManager {
 public:
  Interviewer* makeInterviewer() override {
    return new DevelopmentInterviewer();
  }
};

class CommunityManager: public HiringManager {
 public:
  Interviewer* makeInterviewer() override {
    return new CommunityInterviewer();
  }
};

int main(void) {
  std::unique_ptr<HiringManager> hiring_manager(new DevelopmentManager());
  hiring_manager->takeInterview();

  hiring_manager.reset(new CommunityManager());
  hiring_manager->takeInterview();
  return 0;
}
