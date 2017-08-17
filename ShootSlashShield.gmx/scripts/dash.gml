if(global.MatchStarted){ 
    if(CanTransition && Stance != "SwordForward"){
        if(gamepad_button_check_pressed(controller, gp_face1)){
            if(controller){
                x += 200;
                if(x > 1000){
                    x = 1000;
                }
            } else {
                x -= 200;
                if( x < -100){
                    x = -100;
                }
            }
        }
    }
}
