///initInput()

//Movement
rightKey =  keyboard_check(vk_right);
leftKey =   keyboard_check(vk_left);
upKey =     keyboard_check(vk_up);
downKey =   keyboard_check(vk_down);

//Action
dashKey = keyboard_check_pressed(vk_space);
castKey = keyboard_check(vk_shift);

//Get directional axis
xAxis = (rightKey - leftKey);
yAxis = (downKey - upKey);

//Gamepad Movement
if (gamepad_is_connected(0)) {
    gamepad_set_axis_deadzone(0, 0.30);
    xAxis = gamepad_axis_value(0, gp_axislh);
    yAxis = gamepad_axis_value(0, gp_axislv);
    dashKey = gamepad_button_check_pressed(0, gp_face1);
}
