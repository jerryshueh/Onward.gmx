///addMovement(mag, dir);
//Accelerate by magnitude in direction

var mag = argument[0];  //Movement magnitude
var dir = argument[1];  //Movement direction

var hAcc = lengthdir_x(mag, dir);
var vAcc = lengthdir_y(mag, dir);

if (instance_exists(id)) {
    id.hSpd += hAcc;
    id.vSpd += vAcc;
}
