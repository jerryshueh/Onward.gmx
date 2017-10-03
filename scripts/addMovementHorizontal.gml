///setMovement(mag, dir);

var mag = argument[0];  //Movement magnitude
var dir = argument[1];  //Movement direction

var hspd = lengthdir_x(mag, dir);

if (instance_exists(id)) {
    id.hspd += hspd;
}
