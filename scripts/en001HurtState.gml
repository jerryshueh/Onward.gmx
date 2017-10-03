///en001HurtState()

if (stateNew) {
    initSprite(0, 0);
    image_alpha = 0.5;
    alarm[0] = room_speed/2;
    
    setMovement(5, inputDir);
}

accDir = point_direction(0, 0, hSpd, vSpd);
applyFriction(f);




