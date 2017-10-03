///applyCollision(target)
//Reposition objects based on collision detection on target object

target = argument[0];

//Vertical motion
vert+=vSpd;
var v=round(vert);
vert-=v;
repeat(abs(v))
{   
    if !place_meeting(x,y+sign(vSpd),target)
    { 
        y+=sign(vSpd); 
    }
    //Check the corners for collision
    else if (place_meeting(x, y + sign(vSpd), target) && !place_meeting(x - 1, y + sign(vSpd), target)) {
        --x;
    }
    else if (place_meeting(x, y + sign(vSpd), target) && !place_meeting(x + 1, y + sign(vSpd), target)) {
        ++x;
    }
    else 
    {
        vSpd=0;
    }
}

//Horizontal motion
hor+=hSpd;
var h=round(hor);
hor-=h;
repeat(abs(h))
{
    //slope=0;
    if !place_meeting(x+sign(hSpd),y,target)
    { 
        x+=sign(hSpd); 
    }
    //Check the corners for collision
    else if (place_meeting(x + sign(hSpd), y, target) && !place_meeting(x + sign(hSpd), y - 1, target)) {
        --y;
    }
    else if (place_meeting(x + sign(hSpd), y, target) && !place_meeting(x + sign(hSpd), y + 1, target)) {
        ++y;
    }
    else
    {
        hSpd=0;
    }
}


