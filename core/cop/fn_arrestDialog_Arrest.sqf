/*

	Player clicked arrest/ok

*/

private ["_time"];

if(playerSide != west) exitWith {};
if(isNil "life_pInact_curTarget") exitWith {hint "Invalid destination."};

//Get minutes
_time = ctrlText 1400;


if(! ([_time] call TON_fnc_isnumber)) exitWith
{
	hint "Vous devez mettre un chiffre.";
};

_time = parseNumber _time; //requested number
_time = round _time;

if(_time < 5 || _time > 60) exitWith { hint hint "La Prison n'est disponible que entre 5 et 60 min !"; };

closeDialog 0; 
[life_pInact_curTarget, _time] call life_fnc_arrestAction;