///statePrevious()
//Switch to previously recorded state in history stack

ds_stack_pop(stateStack);
var state = ds_stack_top(stateStack);
stateSwitch(state, false);

