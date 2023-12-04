// Copyright (c) 2023 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

#include <iostream>
#include <string>

class Theme {
 public:
  virtual std::string getColor() const = 0;
};

class DarkTheme: public Theme {
 public:
  std::string getColor() const override {
    return "Dark black";
  }
};

class LightTheme: public Theme {
 public:
  std::string getColor() const override {
    return "Light blue";
  }
};

class Page {
 public:
  explicit Page(const Theme& theme) : theme_(theme) { }

  virtual std::string getContent() = 0;

 protected:
  const Theme& theme_;
};

class AboutPage: public Page {
 public:
  explicit AboutPage(const Theme& theme) : Page(theme) {}

  std::string getContent() override {
    return "About page in " + theme_.getColor() + " color";
  }
};

class CareerPage: public Page {
 public:
  explicit CareerPage(const Theme& theme): Page(theme) {}

  std::string getContent() override {
    return "Career page in " + theme_.getColor() + " color";
  }
};

int main() {
  const DarkTheme theme;
  CareerPage career_page(theme);
  std::cout << career_page.getContent() << std::endl;
  AboutPage about_page(theme);
  std::cout << about_page.getContent() << std::endl;

  return 0;
}