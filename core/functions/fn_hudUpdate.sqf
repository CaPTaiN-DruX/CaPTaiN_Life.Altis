/*
	File: fn_hudUpdate.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Updates the HUD when it needs to.
*/
private["_ui","_food","_water","_health","_money","_cash"];
disableSerialization;

_ui = uiNameSpace getVariable ["playerHUD",displayNull];
if(isNull _ui) then {[] call life_fnc_hudSetup;};
_food = _ui displayCtrl 23500;
_water = _ui displayCtrl 23510;
_health = _ui displayCtrl 23515;
_money = _ui displayCtrl 23520;

_food ctrlSetPosition [safeZoneX+safeZoneW-0.15,safeZoneY+safeZoneH-0.632];
_food ctrlSetText format["%1%2", life_hunger, "%"];
_food ctrlSetBackgroundColor [0, 0, 0, 0.5];
if(life_hunger < 0.25) then { 
	_food ctrlSetBackgroundColor [0, 0, 0, 0.5]; 
};
_food ctrlCommit 0;

_water ctrlSetPosition [safeZoneX+safeZoneW-0.15,safeZoneY+safeZoneH-0.570];
_water ctrlSetText format["%1%2", life_thirst, "%"];
_water ctrlSetBackgroundColor [0, 0, 0, 0.5]; 
if(life_thirst < 0.25) then { 
	_water ctrlSetBackgroundColor [255, 0, 0, 0.5]; 
}else{
	_water ctrlSetBackgroundColor [0, 0, 0, 0.5];
};
_water ctrlCommit 0;

_health ctrlSetPosition [safeZoneX+safeZoneW-0.15,safeZoneY+safeZoneH-0.508];
_dam = round((1 - (damage player)) * 100);
_health ctrlSetText format["%1%2", _dam, "%"];
_health ctrlSetBackgroundColor [0, 0, 0, 0.5]; 
if(damage player > 0.75) then { 
	_health ctrlSetBackgroundColor [255, 0, 0, 0.5]; 	
}else{
	_health ctrlSetBackgroundColor [0, 0, 0, 0.5];
};
_health ctrlCommit 0;

_money ctrlSetPosition [safeZoneX+safeZoneW-0.15,safeZoneY+safeZoneH-0.445];
_cash = life_cash;
_cash = format["%1",[_cash] call life_fnc_numberText];
_money ctrlSetText format["%1 €", format["%1",_cash]];
_money ctrlCommit 0;