if(controller == 0){
    var player2 = instance_find(Player2, 0);
    if(player2.isParrying == true){
        audio_play_sound(sword_clash, 1, false);
        sprite_index = knocked_back;
        CanTransition = false;
        Attacking = false;
        alarm[0] = 120;
    }
    else{
        isParrying = true;
    }
    return isParrying;
}
else if(controller == 1){
    var player1 = instance_find(Player1, 0);
    if(player1.isParrying == true){
        audio_play_sound(sword_clash, 1, false);
        sprite_index = knocked_back;
        CanTransition = false;
        Attacking = false;
        alarm[0] = 120;
    }
    else{
        isParrying = true;
    }
    return isParrying;
}
