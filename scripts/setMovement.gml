///setMovement(mag, dir);
//Move at magnitude in direction

var mag = argument[0];  //Movement magnitude
var dir = argument[1];  //Movement direction

var hVel = lengthdir_x(mag, dir);
var vVel = lengthdir_y(mag, dir);

if (instance_exists(id)) {
    id.hSpd = hVel;
    id.vSpd = vVel;
}
