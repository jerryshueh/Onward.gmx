///playerBlockState()
if (stateNew) {
    isControllable = false;
    
    sprite_index = asset_get_index("sprBlock" + face);
    initSprite(0, 0, c_aqua);
    
    setMovement(7, inputDir);
    
    alarm[0] = -1;
    alarm[2] = room_speed/8;
}

if (!attacked) {
    var xx = 0;
    var yy = 0;
    
    switch (face) {
        case "Right":
            xx = 20;
            yy = -40;
            break;
        case "Up":
            xx = 0;
            yy = -60;
            break;
        case "Left":
            xx = -20;
            yy = -40 
            break;
        case "Down":
            xx = 0;
            yy = -20;
            break;
    }
    
    var dmg = instance_create(x+xx, y+yy, objDamageEnemy);
    dmg.creator = id;
    dmg.affectedTarget = objEnemy;
    attacked = true;
}

accDir = point_direction(0, 0, hSpd, vSpd);
applyFriction(f);

//Switch to idle state
if (!keyBlock && isControllable) {
    attacked = false;
    stateSwitch("Idle");
}
