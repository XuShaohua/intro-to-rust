#!/bin/bash
# Copyright (c) 2023 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
# Use of this source is governed by General Public License that can be found
# in the LICENSE file.

set -xe

cargo clippy --all-targets

#mdbook test
mdbook build
