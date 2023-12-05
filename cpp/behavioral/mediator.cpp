// Copyright (c) 2023 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

#include <ctime>
#include <chrono>
#include <iomanip>
#include <iostream>

class User;

class ChatRoomMediator {
 public:
  virtual void showMessage(User* user, const std::string& message) = 0;
};

class User {
 public:
  explicit User(const std::string& name, ChatRoomMediator& mediator)
      : name_(name), mediator_(mediator) {}

  const std::string& name() const { return name_; }

  void send(const std::string& message) {
    this->mediator_.showMessage(this, message);
  }

 private:
  std::string name_;
  ChatRoomMediator& mediator_;
};

class ChatRoom: public ChatRoomMediator {
 public:
  void showMessage(User* user, const std::string& message) override {
    const auto now = std::chrono::system_clock::now();
    const std::time_t tc = std::chrono::system_clock::to_time_t(now);
    const std::tm* tm = std::localtime(&tc);
    const std::string& sender = user->name();

    std::cout << std::put_time(tm, "%c") << "[" << sender << "] " << message << std::endl;
  }
};

int main() {
  ChatRoom chat_room;
  User jane("Jane Doe", chat_room);
  User john("John Doe", chat_room);

  john.send("Hi there!");
  jane.send("Hi!");

  return 0;
}