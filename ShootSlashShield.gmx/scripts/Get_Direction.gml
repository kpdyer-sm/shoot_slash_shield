if(global.MatchStarted){ 
    if (gamepad_is_connected(controller))
    {
      kRight = (gamepad_axis_value(controller, gp_axislh) >  0.25);
      kLeft  = (gamepad_axis_value(controller, gp_axislh) < -0.25);
    }
    else // (no need to check if gamepad is connected again)
    {
      //Maybe pause the game because the controller is disconnected?
    }
}
