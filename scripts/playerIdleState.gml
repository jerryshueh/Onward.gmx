///playerIdleState()

if(stateNew) {
    isControllable = true;
    inputDir = directionFace(face);
    
    initSprite(0, 0, c_white);
    sprite_index = asset_get_index("sprIdle" + face);
    
    hSpd = 0;
    vSpd = 0;
    
    alarm[0] = room_speed/2;
}

//Switch to move state
if(xAxis != 0 or yAxis != 0) {
    stateSwitch("Move");
}

//Switch to block State
if(keyBlock) {
    stateSwitch("Block")
}
//Switch to roll State
else if(keyDash) {
    stateSwitch("Roll");
}
