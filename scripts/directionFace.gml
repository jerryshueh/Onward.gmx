///directionFace(face<String>)
//Returns angle if given a face string

facing = argument[0]

switch (facing) {
    case "Right":
        return 0; 
        break;
    case "Up":
        return 90; 
        break;
    case "Left":
        return 180; 
        break;
    case "Down":
        return 270
        break;
}
