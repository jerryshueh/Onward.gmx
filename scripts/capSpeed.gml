///capSpeed(maxSpeed)
//Caps the maximum speed of a movement entity

var maxSpeed = argument[0];

//Cap diagonal speed
var hMaxSpd = abs(lengthdir_x(maxSpeed, accDir));
var vMaxSpd = abs(lengthdir_y(maxSpeed, accDir));
if (abs(hSpd) > hMaxSpd) {
    hSpd = hMaxSpd * sign(hSpd);
}
if (abs(vSpd) > vMaxSpd) {
    vSpd = vMaxSpd * sign(vSpd);
}
