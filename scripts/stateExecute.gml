///stateExecute()
//Runs state script. Use in step event.

if (script_exists(state)) {
    script_execute(state)
}
else {
    show_debug_message("Tried to execute a non-existent state script.  Moving to first state.")
    stateSwitch(ds_map_find_first(stateMap));
}
