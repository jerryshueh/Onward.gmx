///enable_movement_topdown_actions(acceleration, run_speed, right_input, left_input, up_input, down_input)
/*
    Call this function to enable basic topdown physics on
    a movement entity. It will enable running in all directions.
*/

var acceleration = argument[0]; // Run acceleration amount
var run_speed = argument[1]; // Maximum run speed
var right_input = argument[2]; // The up input
var left_input = argument[3]; // The right input
var up_input = argument[4]; // The left input
var down_input = argument[5]; // The down input

if (gamepad_is_connected(0)) {
    gamepad_set_axis_deadzone(0, 0.30);
    dir = point_direction(0, 0, gamepad_axis_value(0, gp_axislh), gamepad_axis_value(0, gp_axislv));
}

// Enable horizontal running
enable_movement_run_horizontal(acceleration, run_speed, right_input, left_input);

// Enable vertical running
enable_movement_run_vertical(acceleration, run_speed, up_input, down_input);
