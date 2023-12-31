use euler::*;
use raylib::prelude::*;

fn main() {
    let (mut rl, thread) = raylib::init().size(640, 480).title("Hello, World").build();

    let mut pos = vec2![0.0, 0.0];
    let mut vel = vec2![5.0, 10.0];
    let mut t = 0f32;

    const ENG: f32 = 40.0;
    const M: f32 = 1.0;
    const G: f32 = 9.8;
    const K: f32 = 0.05; //change this later
    const D_TIME: f32 = 0.01;
    const SCALE: f32 = 7.0;

    rl.set_target_fps(30);
    {
        let mut d = rl.begin_drawing(&thread);
        d.clear_background(Color::BLACK);
    }
    while !rl.window_should_close() {
        let mut d = rl.begin_drawing(&thread);

        let old_pos = pos;
        pos += vel * D_TIME;

        d.draw_line(
            (old_pos.x * SCALE + 320.0) as i32,
            (-old_pos.y * SCALE + 240.0) as i32,
            (pos.x * SCALE + 320.0) as i32,
            (-pos.y * SCALE + 240.0) as i32,
            if t < 1.0 { Color::ORANGE } else { Color::RED },
        );

        let drag = (vec2![] - vel.normalize()) * K * vel.squared_length();
        // let drag = vec2![];

        let gravity = vec2![0.0, -G * M];

        let engine = M * vel.normalize() * (if t < 1.0 { ENG } else { 0f32 });

        let force = drag + gravity + engine;

        let acc = force / M;

        vel += acc * D_TIME;

        t += D_TIME;

        println!("time: {}, pos: {}, vel: {}", t, pos, vel.length());
    }
}