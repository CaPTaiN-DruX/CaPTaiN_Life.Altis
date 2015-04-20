#include <macro.h>
/*
	File: fn_skyDive.sqf
	Author: blaster
	Concepts pulled from: Mokomoko http://www.altisliferpg.com/topic/1938-document-server-commands/
	
	
	Description:
	Sky diving, with a random coloured smoke that deploys once chute is pulled. 
*/
"colorCorrections" ppEffectEnable true; 
"colorCorrections" ppEffectAdjust [1, 1, 0, [0,0,0,0], [0,0,0,0], [1,1,1,1]]; 
"colorCorrections" ppEffectCommit 1;



sleep 3;
player addBackpack "B_Parachute"; 
player setPos [getPos player select 0, getPos player select 1, 500]; //500 m. up
sleep 2;
"colorCorrections" ppEffectEnable false; 

waitUntil {(vehicle player != player)};	
	private ["_num","_color"];

	_num = floor(random 7);

	_color = switch (_num) do {
		case 0: {"SmokeShell";};
		case 1: {"SmokeShellRed";};
		case 2: {"SmokeShellBlue";};
		case 3: {"SmokeShellOrange";};
		case 4: {"SmokeShellYellow";};
		case 5: {"SmokeShellPurple";};
	};

	_smoke = _color createVehicle position player;
        _smoke attachTo [vehicle player, [0,-0.1,1.5]]; 