/* Auteur : CaPTaiN_DruX */
/* Description : Fichier Optimisation Mission */


_this allowDamage false; 
_this enableSimulation false; 
_this addAction["<t color='#088A08'>Obtenir une Mission</t>",life_fnc_getDPMission,"dp_1",0,false,false,"",' isNil "life_dp_point" && !life_delivery_in_progress '];