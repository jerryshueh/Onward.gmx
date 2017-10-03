///getState(stateName<string>)
//Returns state value from state dictionary if it exists

var stateName = argument[0];

if (ds_map_exists(stateMap, stateName)) {
    return ds_map_find_value(stateMap, stateName);
}
else {
    show_debug_message("State does not exist in state map. Returned noone.")
    return noone;
}

