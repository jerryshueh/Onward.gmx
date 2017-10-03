///faceDirection(dir)
//Returns the face string of a sprite if given an angle

var facing = round(argument[0]/90);
if (facing == 4) {
    facing = RIGHT;
}

switch (facing) {
    case RIGHT:
        return "Right";
    case UP:
        return "Up";
    case LEFT:
        return "Left";
    case DOWN:
        return "Down";
}



