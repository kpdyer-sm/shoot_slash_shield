if(global.MatchStarted){    
    if(!kRight && !kLeft){
        hspeed = 0;
    }
    if(kRight){
        if(controller == 1 && x > 1000){
            hspeed = 0;
        }
        else{
            hspeed = 4;
        }
    }
    if(kLeft){
        if(controller == 0 && x < -100){
            hspeed = 0;
        }
        else{
            hspeed = -4;
        }
    }
}
else{
    hspeed = 0;
}
