///stateSwitch(state<String>, pushStack<bool>)
//Switches to specified state. 

var stateName = argument[0];

//Set push argument if specified, otherwise always push to history (true)
var push = true;
if (argument_count > 1) {
  push = argument[1];
}
    
if (ds_map_exists(stateMap, stateName)) {
    stateNext = ds_map_find_value(stateMap, stateName);
    stateName = stateName; 
}
else {
    show_debug_message("Tried to switch to a non-existent state.  Moving to first state.")
    stateNext = ds_map_find_first(state_map);
    stateName = "Unknown (Tried to switch to a non-existant state)";
}

//Push to history if specified
if(push) 
  ds_stack_push(stateStack, stateNext);


