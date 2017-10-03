///en001IdleState()

if (stateNew) {
    inputDir = point_direction(x, y, irandom(room_width), irandom(room_height));
    
    initSprite(0, 0.15, c_white);
    sprite_index = sprBudMoveRDown;
}

if (hSpd != 0) {
    image_xscale = sign(hSpd)
}

if (vSpd > 0) {
    face = "Down";
}
else if (vSpd < 0) {
    face = "Up";
}

setMovement(spd, inputDir);
accDir = point_direction(0, 0, hSpd, vSpd);
applyFriction(0.5);

if (instance_exists(followTarget)) {
    var targetDist = point_distance(x, y, followTarget.x, followTarget.y - 17);
    if (targetDist > 45 && targetDist < sightRange) {
        stateSwitch("Chase");
    }
}
