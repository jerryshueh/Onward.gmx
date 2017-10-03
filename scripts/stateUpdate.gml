///stateUpdate()
//Handles switches between states. Use in endstep event.

if (stateNext != state)
{
  state = stateNext;
  stateTimer= 0 ;
  stateNew = true;
}
else
{
  stateTimer++;
  stateNew=false;
}

