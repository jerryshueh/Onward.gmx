///en001ChaseState

if(stateNew) {
    initSprite(0, 0.15);
    sprite_index = sprBudAggroMoveRDown;
}

if instance_exists(followTarget) {
    var targetDist = point_distance(x, y, followTarget.x, followTarget.y - 17);
    if (targetDist > 45 && targetDist < sightRange) {
        followAccelerate(followTarget, 0.5);
    }
    else {
        stateSwitch("Idle");
    }
}
else {
    stateSwitch("Idle");
}

accDir = point_direction(0, 0, hSpd, vSpd);
capSpeed(spd);
