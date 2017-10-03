///initInput()
//Call in step event to check movement inputs

//Keyboard Movement
keyRight =  keyboard_check(vk_right);
keyLeft =   keyboard_check(vk_left);
keyUp =     keyboard_check(vk_up);
keyDown =   keyboard_check(vk_down);

xAxis = keyRight - keyLeft;
yAxis = keyDown - keyUp;

inputDetected = (xAxis != 0 || yAxis != 0);

keyDash = keyboard_check_pressed(vk_space);
keyBlock = keyboard_check(vk_shift);

//Gamepad Movement
if (gamepad_is_connected(0)) {
    gamepad_set_axis_deadzone(0, 0.30);
    
    xAxis = gamepad_axis_value(0, gp_axislh);
    yAxis = gamepad_axis_value(0, gp_axislv);
    
    keyDash = gamepad_button_check_pressed(0, gp_face1);
    keyBlock = gamepad_button_check_pressed(0, gp_face2);
}
