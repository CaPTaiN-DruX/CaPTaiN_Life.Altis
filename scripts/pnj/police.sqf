/* Auteur : CaPTaiN_DruX */
/* Description : Fichier Optimisation Mission */



_removeallweapons this; 
_this enableSimulation false;   
_this allowDamage false; 
_this addAction["<t color='#088A08'>Cafeteria</t>",life_fnc_virt_menu,"cop"]; 
_this addAction["<t color='#B45F04'>Vestiaire</t>",life_fnc_clothingMenu,"cop"];  
_this addAction["<t color='#04B4AE'>Magasin Armes</t>",life_fnc_weaponShopMenu,"cop_weapon"];  
_this addAction["<t color='#04B4AE'>Magasin Viseurs</t>",life_fnc_weaponShopMenu,"cop_viseurs"];  
_this addAction["<t color='#04B4AE'>Magasin Fournitures</t>",life_fnc_weaponShopMenu,"cop_fourniture"]; 
_this addAction[format["%1 ($%2)",["license_cop_air"] call life_fnc_varToStr,[(["cair"] call life_fnc_licensePrice)] call life_fnc_numberText],life_fnc_buyLicense,"cair",0,false,false,"",' !license_cop_air && playerSide == west '];
_this addAction[format["%1 ($%2)",["license_cop_cg"] call life_fnc_varToStr,[(["cg"] call life_fnc_licensePrice)] call life_fnc_numberText],life_fnc_buyLicense,"cg",0,false,false,"",' !license_cop_cg && playerSide == west '];