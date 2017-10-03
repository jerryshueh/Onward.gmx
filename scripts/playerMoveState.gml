///playerMoveState()

if (stateNew) {
    isControllable = true;
    initSprite(0, IMGSPDDEFAULT, c_red);
    image_blend = c_red;
    
    alarm[0] = -1;
}

//If input detected...
if (xAxis != 0 || yAxis != 0) {
    //Calculate input direction
    inputDir = point_direction(0, 0, xAxis, yAxis);
    
    //Face proper direction
    face = faceDirection(inputDir);
    sprite_index = asset_get_index("sprRun" + face);
    
    //Acceleration
    addMovement(a, inputDir);
}

//Calculate acceleration direction
accDir = point_direction(0, 0, hSpd, vSpd);

applyFriction(f);

if (!place_meeting(x, y, objEnemy)) {
    capSpeed(runSpd);
}
else {
    capSpeed(runSpd * 0.3);
}

//Switch to idle state
if (xAxis == 0 && yAxis == 0 && abs(hSpd) < 0.2 && abs(vSpd) < 0.2) {
    stateSwitch("Idle");
}
//Switch to block state
if (keyBlock) {
    stateSwitch("Block");
}
//Switch to roll state
else if (keyDash) {
    stateSwitch("Roll");
}
