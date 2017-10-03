///initMovement(acceleration, friction, bounce, collision_object)
//Initialize movement object

//spd = 0;      //Vector speed
hSpd = 0;       //Horizontal speed
vSpd = 0;       //Vertical speed    
hDecSpd = 0;    //Smooth decimel movement
vDecSpd = 0;    //Smooth decimel movement

inputDir = 0;   //Direction to face based on input
accDir = 0;     //Direction of actual acceleration

a = argument[0];        //Acceleration factor  (>= 1)
f = argument[1];        //Friction coefficient (<= 1)
bounce = argument[2];   //Bounce coefficient (<= 1)

collideTarget = argument[3] // Impassable objects
