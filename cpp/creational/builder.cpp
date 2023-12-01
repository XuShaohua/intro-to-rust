// Copyright (c) 2023 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be
// found in the LICENSE file.

#include <cassert>

#include <string>

class Window {
 public:
  Window() = delete;
  Window(const Window& other) = delete;
  Window& operator=(const Window& other) = delete;

  [[nodiscard]] int width() const { return props_.width; }
  [[nodiscard]] int height() const { return props_.height; }
  [[nodiscard]] const std::string& title() const { return props_.title; }
  [[nodiscard]] double scale_factor() const { return props_.scale_factor; }

 private:
  struct Props {
    int width;
    int height;
    std::string title;
    double scale_factor;
  };

  explicit Window(const Props& props) : props_(props) {}

  Props props_;

  friend class WindowBuilder;
};

class WindowBuilder {
 public:
  Window build() const {
    return Window(props_);
  }

  WindowBuilder& set_width(int width) {
    props_.width = width;
    return *this;
  }

  WindowBuilder& set_height(int height) {
    props_.height = height;
    return *this;
  }

  WindowBuilder& set_title(const std::string& title) {
    props_.title = title;
    return *this;
  }

  WindowBuilder& set_scale_factor(double scale_factor) {
    props_.scale_factor = scale_factor;
    return *this;
  }

 private:
  Window::Props props_;
};

int main(void) {
  WindowBuilder builder;
  builder.set_width(800)
    .set_height(600)
    .set_title("Window 1")
    .set_scale_factor(1.50);
  const Window window = builder.build();
  assert(window.width() == 800);

  const Window window2 = builder.set_title("Window 2").build();
  assert(window2.height() == 600);

  return 0;
}
