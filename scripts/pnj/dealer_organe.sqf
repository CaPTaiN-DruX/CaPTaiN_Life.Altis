/* Auteur : CaPTaiN_DruX */
/* Description : Fichier Optimisation Mission */



_this addAction["<t color='#B404AE'>Dealer d'Organes</t>",life_fnc_virt_menu,"organ",0,false,false,"",' vehicle player == player && player distance _target < 5 && playerSide == civilian '];