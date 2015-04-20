/*
	File: fn_copLoadout.sqf
	Author: Bryan "Tonic" Boardwine
	Edited: Itsyuka
	
	Description:
	Loads the cops out with the default gear.
*/
private["_handle"];
_handle = [] spawn life_fnc_stripDownPlayer;
waitUntil {scriptDone _handle};

//Load player with default cop gear.
player addUniform "demian2435_police_man_uniform";
player addVest "demian2435_police_vest";

player addMagazine "DDOPP_1Rnd_X26";
player addMagazine "DDOPP_1Rnd_X26";
player addMagazine "DDOPP_1Rnd_X26";
player addMagazine "DDOPP_1Rnd_X26";
player addWeapon "DDOPP_X26";

/* ITEMS */
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "ItemWatch";
player assignItem "ItemWatch";
player addItem "ItemGPS";
player assignItem "ItemGPS";

[] call life_fnc_saveGear;