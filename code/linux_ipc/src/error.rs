// Copyright (c) 2023 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

use std::io;

#[derive(Debug, thiserror::Error)]
pub enum Error {
    #[error("io error")]
    Io(#[from] io::Error),

    #[error("image error")]
    Image(#[from] image::ImageError),

    #[error("wgpu device error")]
    WgpuDevice(#[from] wgpu::RequestDeviceError),

    #[error("wgpu surface error")]
    WpugSurface(#[from] wgpu::CreateSurfaceError),

    #[error("window error")]
    Winit(#[from] winit::error::OsError),

    #[error("other error")]
    Others(String),
}
