// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

use std::sync::mpsc::Receiver;

use crate::msg::KeyboardMsg;

/// # Errors
///
/// Returns error if eframe runtime raise error
pub fn run_sim(receiver: Receiver<KeyboardMsg>) -> eframe::Result {
    let options = eframe::NativeOptions {
        viewport: egui::ViewportBuilder::default().with_inner_size([640.0, 480.0]),
        ..Default::default()
    };

    let frame = CrabFrame::new(receiver);

    eframe::run_native(
        "Crab Sim",
        options,
        Box::new(|cc| {
            // This gives us image support:
            egui_extras::install_image_loaders(&cc.egui_ctx);
            Ok(Box::new(frame))
        }),
    )
}

struct CrabFrame {
    receiver: Receiver<KeyboardMsg>,
}

impl CrabFrame {
    #[must_use]
    #[inline]
    pub const fn new(receiver: Receiver<KeyboardMsg>) -> Self {
        Self { receiver }
    }
}

impl eframe::App for CrabFrame {
    fn update(&mut self, ctx: &egui::Context, _frame: &mut eframe::Frame) {
        if let Ok(msg) = self.receiver.try_recv() {
            println!("crab frame got msg: {msg:?}");
            match msg {
                KeyboardMsg::None => {
                    // Ignore
                }
                KeyboardMsg::Quit => unsafe {
                    println!("[crab] quit");
                    nc::exit(0);
                },
                KeyboardMsg::CancelRotate => {
                    println!("[crab] cancel rotate");
                }
                KeyboardMsg::Rotate(_rotate) => {
                    println!("[crab] rotate");
                }
                KeyboardMsg::Twist(_twist) => {
                    println!("[crab] twist");
                }
            }
        }

        egui::CentralPanel::default().show(ctx, |ui| {
            egui::ScrollArea::both().show(ui, |ui| {
                ui.image(egui::include_image!("../assets/ferris.gif"));
            })
        });
    }
}
