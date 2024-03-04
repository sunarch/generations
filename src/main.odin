// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at https://mozilla.org/MPL/2.0/.

package main

import rl "vendor:raylib"

TITLE :: "Generations"

SCREEN_WIDTH  :: 1080
SCREEN_HEIGHT :: 720

main :: proc() {
    rl.InitWindow(SCREEN_WIDTH, SCREEN_HEIGHT, TITLE)
    defer rl.CloseWindow()

    rl.SetTargetFPS(60)

    pos_x: i32 = SCREEN_WIDTH / 2 - 90
    pos_y: i32 = SCREEN_HEIGHT / 2 - 20
    font_size: i32 = 24

    // Main game loop
    for !rl.WindowShouldClose() { // Detect window close button or ESC key
        // Update

        // Draw
        rl.BeginDrawing();
        defer rl.EndDrawing();

        rl.ClearBackground(rl.WHITE);

        rl.DrawText(TITLE, pos_x, pos_y, font_size, rl.LIGHTGRAY);
    }
}
