///applyFriction(fric)
//Applies normalized friction

var fric = argument[0];
var hDamp = lengthdir_x(fric, accDir);
var vDamp = lengthdir_y(fric, accDir);

hSpd = median(hSpd + hDamp, hSpd - hDamp, 0);
vSpd = median(vSpd + vDamp, vSpd - vDamp, 0);

//hSpd -= cos(degtorad(accDir)) * min(fric, abs(hSpd));
//vSpd += sin(degtorad(accDir)) * min(fric, abs(vSpd));
