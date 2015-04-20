
_removeAllWeapons this; 
_this allowDamage false; 
_this enableSimulation false; 
_this addAction["<t color='#B404AE'>Revendre la drogue au dealer</t>",life_fnc_virt_menu,"heroin",0,false,false,"",' vehicle player == player && player distance _target < 5 && playerSide == civilian ']; 
_this addAction["<t color='#B404AE'>Questionner le Dealer</t>",life_fnc_questionDealer,"",0,false,false,"",' vehicle player == player && player distance _target < 5 && playerSide == west && !life_action_inUse '];