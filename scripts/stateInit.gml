///state_init(state<String>);
//Sets the default state for the object. Called only in the create event.

if (is_real(argument[0]))
{
    show_debug_message("Invalid real number used to search for string key.")
    state = argument[0];
    stateName = "Unknown (Use the name to switch next time)";
}
else
{
    state = ds_map_find_value(stateMap, argument[0]);
    stateName = argument[0];
}    

stateNext = state;
ds_stack_push(stateStack, state);
stateNew=true;

