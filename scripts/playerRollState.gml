///playerRollState(dir)

if (stateNew) {
    isControllable = false;
    
    sprite_index = asset_get_index("sprRoll" + face);
    initSprite(0, 0);
    
    setMovement(rollSpd, inputDir);

    alarm[0] = -1;
    alarm[1] = room_speed/10;
}



