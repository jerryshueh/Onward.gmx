///setMovement(mag, dir);

var mag = argument[0];  //Movement magnitude
var dir = argument[1];  //Movement direction

var vspd = lengthdir_y(mag, dir);

if (instance_exists(id)) {
    id.vspd += vspd;
}
