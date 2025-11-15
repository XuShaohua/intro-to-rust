#/bin/bash
# Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
# Use of this source is governed by General Public License that can be found
# in the LICENSE file.

# Install dependencies before generating pdf file.

set -xe

cargo install mdbook-pandoc

sudo apt install -y \
  latex-cjk-all \
  librsvg2-bin \
  pandoc \
  texlive-latex-recommended \
  texlive-xetex
