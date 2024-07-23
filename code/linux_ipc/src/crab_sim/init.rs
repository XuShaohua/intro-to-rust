// Copyright (c) 2023 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

use std::sync::mpsc::Receiver;

use winit::dpi::PhysicalSize;
use winit::event::{Event, WindowEvent};
use winit::event_loop::{ControlFlow, EventLoop};
use winit::window::{Window, WindowBuilder};

use crate::Error;
use crate::msg::KeyboardMsg;

use super::state::State;

fn event_loop_handler<T>(event: &Event<T>, control_flow: &mut ControlFlow, state: &mut State) {
    match event {
        Event::WindowEvent {
            ref event,
            window_id,
            ..
        } if *window_id == state.window().id() => {
            if !state.input(event) {
                match event {
                    WindowEvent::Resized(physical_size) => state.resize(*physical_size),
                    WindowEvent::ScaleFactorChanged { new_inner_size, .. } => {
                        state.resize(**new_inner_size);
                    }
                    WindowEvent::CloseRequested => *control_flow = ControlFlow::Exit,
                    _ => {}
                }
            }
        }
        Event::RedrawRequested(window_id) if *window_id == state.window().id() => {
            state.update();
            match state.render() {
                Ok(_) => {}
                Err(wgpu::SurfaceError::Lost) => state.resize(state.size()),
                Err(wgpu::SurfaceError::OutOfMemory) => {
                    log::error!("System out of memory!");
                    *control_flow = ControlFlow::Exit;
                }
                Err(err) => log::error!("{err:?}"),
            }
        }

        Event::MainEventsCleared => state.window().request_redraw(),
        _ => {}
    }
}

pub async fn run_async(receiver: Receiver<KeyboardMsg>) -> Result<(), Error> {
    log::info!("Creating a new with with size 800x600");
    let event_loop = EventLoop::new();
    let window: Window = WindowBuilder::new()
        .with_title("Multiple Textures")
        .with_inner_size(PhysicalSize::new(640, 480))
        .build(&event_loop)?;

    let mut state = State::new(receiver, window).await?;

    event_loop
        .run(move |event, _, control_flow| event_loop_handler(&event, control_flow, &mut state));
}

pub fn run_sim(receiver: Receiver<KeyboardMsg>) -> Result<(), Error> {
    pollster::block_on(run_async(receiver))
}
