///followMove(target<object>, speed)
//Move toward target

var target = argument[0];
var spd = argument[1];
var inputDir = point_direction(x, y, target.x, target.y);

setMovement(spd, inputDir);






