if(global.MatchStarted){
    shield = noone;
    if(controller){
        shield = instance_find(Shield2, 0);  
        if(Stance == "SwordForward" || Stance == "GunForward"){
            shield.x -= 150;
        }  
    } else {
        shield = instance_find(Shield1, 0);
        if(Stance == "SwordForward" || Stance == "GunForward"){
            shield.x += 150;
        }  
    }
    if (gamepad_button_check_pressed(controller, gp_shoulderlb)){
        if(Stance != "GunDown" && shield_energy > 0){
            Shielded = true;
            shield.visible = true;
        } else {
            Shielded = false;
            shield.visible = false;
        }
    }
    
    if (!gamepad_button_check(controller, gp_shoulderlb) && Shielded){
        Shielded = false;
        shield.visible = false;
    }
    
    if(Shielded && shield_energy > 0){
        shield_energy -= 5;
    } else if (!Shielded && shield_energy < 1000){
        shield_energy += 1;
    }
    
    if(shield_energy <= 0){
        shield_energy = 0;
        shield.visible = false;
        Shielded = false;
    }
}

