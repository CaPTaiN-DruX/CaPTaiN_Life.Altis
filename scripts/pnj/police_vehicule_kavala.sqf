/* Auteur : CaPTaiN_DruX */
/* Description : Fichier Optimisation Mission */



_removeallweapons this;_this enableSimulation false;  
_this allowDamage false;  
_this addAction["<t color='#086A87'>Concessionaire</t>",life_fnc_vehicleShopMenu,["cop_car",west,"cop_car_1","cop","APD - Kavala District"]];  
_this addAction["<t color='#045FB4'>Garage</t>",  {   [[getPlayerUID player,playerSide,"Car",player],"TON_fnc_getVehicles",false,false] spawn life_fnc_MP;   createDialog "Life_impound_menu";   disableSerialization;   ctrlSetText[2802,"Fetching Vehicles...."];   life_garage_sp = "cop_car_1"; life_garage_type = "Car";  },"",0,false,false,"",'playerSide == west'];  
_this addAction["<t color='#084B8A'>Ranger son Vehicule au Garage</t>",life_fnc_storeVehicle,"",0,false,false,"",'!life_garage_store']; this setVariable["realname","Cop Vehicle Store"];