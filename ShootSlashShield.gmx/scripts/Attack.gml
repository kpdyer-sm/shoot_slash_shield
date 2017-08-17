if(global.MatchStarted){
    if(gamepad_button_check_pressed(controller, gp_shoulderrb) && CanTransition){
        switch Stance{
            case "SwordForward":{
                sprite_index = sword_forward_attack;
                audio_play_sound(sword_swing, 1, false);
                Attacking = true;
                CanTransition = false;
                if(script_execute(Am_Parrying)){
                    alarm[0] = 30;                
                }
            }
            break;
            case "SwordBack":{
                sprite_index = sword_back_attack;
                audio_play_sound(sword_swing, 1, false);
                Attacking = true;
                CanTransition = false;
                if(script_execute(Am_Parrying)){
                    alarm[0] = 30;                
                }
            }
            break;
            case "SwordUp":{
                sprite_index = sword_up_attack;
                audio_play_sound(sword_swing, 1, false);
                Attacking = true;
                CanTransition = false;
                if(script_execute(Am_Parrying)){
                    alarm[0] = 30;                
                }
            }
            break;
            case "GunForward":{
                //shoot if you have bullets
                if(bullets > 0) {
                    if(controller == 0){
                        effect_create_above(ef_explosion, x+395, y+200, 1, c_black);
                    }
                    else{
                        effect_create_above(ef_explosion, x+320, y+205, 1, c_black);
                    }
                    audio_play_sound(gun_fire, 1, false);
                    CanTransition = false;
                    alarm[1] = 30;
                    alarm[2] = 30;
                    bullets--;
                } else {
                    audio_play_sound(gun_fire_dry, 1, false);
                }
            }
            break;
            case "GunBack":{
                //shoot if you have bullets
                if(bullets > 0) {
                    if(controller == 0){
                        effect_create_above(ef_explosion, x+150, y+265, 1, c_black);
                    }
                    else{
                        effect_create_above(ef_explosion, x+550, y+270, 1, c_black);
                    }
                    audio_play_sound(gun_fire, 1, false);
                    CanTransition = false;
                    alarm[1] = 30;
                    alarm[2] = 30;
                    bullets--;
                } else {
                    audio_play_sound(gun_fire_dry, 1, false);
                }
            }
            break;
            case "GunDown":{
                //shoot if you have bullets
                if(bullets > 0) {
                    if(controller == 0){
                        effect_create_above(ef_explosion, x+240, y+300, 1, c_black);
                    }
                    else{
                        effect_create_above(ef_explosion, x+460, y+300, 1, c_black);
                    }
                    audio_play_sound(gun_fire, 1, false);
                    CanTransition = false;
                    alarm[1] = 30;
                    alarm[2] = 30;
                    bullets--;
                } else {
                    audio_play_sound(gun_fire_dry, 1, false);
                }
            }
        }
    }
}
