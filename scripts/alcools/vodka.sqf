			player setVariable ["drugInUse",true,true];
            cutText["","BLACK OUT",4];
			sleep 3;
			cutText["","BLACK IN",4];
			addCamShake [224, 28, 1];
			sleep (12 + (random 20)); 
                        resetCamShake;
                        cutText["","BLACK OUT",4];
			sleep 3;
			cutText["","BLACK IN",4];
			addCamShake [224, 28, 1];
			sleep (12 + (random 20)); 
			resetCamShake;
			sleep (360);
			player setVariable ["drugInUse",false,true];