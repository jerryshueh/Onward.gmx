///followAccelerate(target<object>, accel)
//Accelerate toward a target

var target = argument[0];
var accel = argument[1];
var inputDir = point_direction(x, y, target.x, target.y);

addMovement(accel, inputDir);





