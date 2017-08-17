if(global.MatchStarted){
    //if sword
    if(string_copy(Stance,0,5) == "Sword" && !Attacking && CanTransition){
        //if up
        if(gamepad_axis_value(controller, gp_axisrv) < -.25){
            sprite_index = sword_up_stance;
            if(Stance != "SwordUp"){
                Stance = "SwordUp";
                CanTransition = false;
                alarm[1] = 5;
            }
        }
        //if forward
        else if(script_execute(Get_Right_Stick_Direction) == "Forward"){
            sprite_index = sword_forward_stance;
            if(Stance != "SwordForward"){
                Stance = "SwordForward";
                CanTransition = false;
                alarm[1] = 5;
            }
        }
        //if back
        else if(script_execute(Get_Right_Stick_Direction) == "Back"){
            sprite_index = sword_back_stance;
            if(Stance != "SwordBack"){
                Stance = "SwordBack";
                CanTransition = false;
                alarm[1] = 5;
            }
        }
        //if neutral
        else{
            sprite_index = sword_neutral_stance; 
            Stance = "SwordNeutral";
        }
    }
    //if gun
    if(string_copy(Stance,0,3) == "Gun" && !Attacking && CanTransition){
        //if down
        if(gamepad_axis_value(controller, gp_axisrv) > .25){
            sprite_index = gun_down_stance;
            if(Stance != "GunDown"){
                audio_play_sound(gun_cocking, 1, false);
                Stance = "GunDown";
                CanTransition = false;
                alarm[1] = 30;
            }
        }
        //if forward
        else if(script_execute(Get_Right_Stick_Direction) == "Forward"){
            sprite_index = gun_forward_stance;
            if(Stance != "GunForward"){
                audio_play_sound(gun_cocking, 1, false);
                Stance = "GunForward";
                CanTransition = false;
                alarm[1] = 30;
            }
        }
        //if back
        else if(script_execute(Get_Right_Stick_Direction) == "Back"){
            sprite_index = gun_back_stance;
            if(Stance != "GunBack"){
                audio_play_sound(gun_cocking, 1, false);
                Stance = "GunBack";
                CanTransition = false;
                alarm[1] = 30;
            }
        }
        //if neutral nothing
        else{
            sprite_index = gun_neutral_stance; 
            Stance = "GunNeutral";
        }
    }
}
