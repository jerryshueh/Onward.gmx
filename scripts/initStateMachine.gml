///state_machine_init();
///Initilize the variables required for the state engine.

state = noone;                      //Current state      
stateNext = state;                  //Next state to load
stateName = "Unknown";              //String name of state
stateTimer = 0;                     //State duration timer
stateMap = ds_map_create();         //State dictionary
stateStack = ds_stack_create();     //State history stack
stateNew = true;                    //True if just entered new state
