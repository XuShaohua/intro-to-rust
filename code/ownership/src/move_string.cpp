// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

#include <cstdio>

#include <string>

void consume_string(std::string&& name) {
  std::string new_name = std::move(name);
  new_name += " consumed";
  printf("[consume_string] name: %s\n", new_name.c_str());
}

int main(int argc, char** argv) {
  (void)argc;
  (void)argv;

  std::string book = "CPP";
  std::string book2 = std::move(book);
  printf("book: %s, size of book: %ld, book2: %s\n",
         book.c_str(),
         book.size(),
         book2.c_str());

  std::string s = "Julia";
  consume_string(std::move(s));
  printf("[main] name: %s, size: %ld\n",
         s.c_str(),
         s.size());

  return 0;
}
