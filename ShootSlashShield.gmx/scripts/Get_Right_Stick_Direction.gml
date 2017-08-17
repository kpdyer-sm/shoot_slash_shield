if(controller == 0){
    if(gamepad_axis_value(controller, gp_axisrh) > .25){
        return "Forward";
    }
    else if(gamepad_axis_value(controller, gp_axisrh) < -.25){
        return "Back";
    }
    return "None";
}
else if(controller == 1){
    if(gamepad_axis_value(controller, gp_axisrh) > .25){
        return "Back";
    }
    else if(gamepad_axis_value(controller, gp_axisrh) < -.25){
        return "Forward";
    }
    return "None";
}
