#!/bin/bash
# Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
# Use of this source is governed by General Public License that can be found
# in the LICENSE file.

# Generate pdf file with pandoc.

set -xe

mv book.toml book.toml.bak
mv pandoc.toml book.toml
mdbook build || true
mv book.toml pandoc.toml
mv book.toml.bak book.toml
