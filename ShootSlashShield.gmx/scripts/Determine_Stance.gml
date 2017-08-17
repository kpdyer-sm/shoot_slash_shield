if(global.MatchStarted){
   if (gamepad_button_check_pressed(controller, gp_shoulderr) && CanTransition){
        if(Stance != "SwordNeutral" && !Attacking){
            //Switch sprite to sword stance
            sprite_index = sword_neutral_stance;   
            Stance = "SwordNeutral";
            CanTransition = false;
            alarm[1] = 5;
        }
        else if (Stance == "SwordNeutral"){
            sprite_index = neutral_stance;
            Stance = "NeutralStance";
            CanTransition = false;
            alarm[1] = 5;
        }     
    }
    else if (gamepad_button_check_pressed(controller, gp_shoulderl) && CanTransition){
        
        if(Stance != "GunNeutral" && !Attacking){
            //Switch sprite to gun stance
            sprite_index = gun_neutral_stance; 
            Stance = "GunNeutral";   
            CanTransition = false;
            alarm[1] = 5;   
        } 
        else if (Stance == "GunNeutral"){
            sprite_index = neutral_stance;
            Stance = "NeutralStance";
            CanTransition = false;
            alarm[1] = 5;
        } 
    }
}
