///updateMovementCollision(target<object>)
//Updates movable object's position while accounting for collision & slopes

var target = argument[0];

//Account for decimals in hSpd
hDecSpd += hSpd;
var h = round(hDecSpd);
hDecSpd -= h;

//Horizontal collision handling & movement
repeat(abs(h))
{
    if (!place_meeting(x+sign(hSpd),y,target))
    { 
        x += sign(hSpd); 
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

//Account for decimals in vSpd
vDecSpd += vSpd;
var v = round(vDecSpd);
vDecSpd -= v;

//Vertical collision handling & movement
repeat(abs(v))
{   
    if !place_meeting(x,y+sign(vSpd),target)
    { 
        y += sign(vSpd); 
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
