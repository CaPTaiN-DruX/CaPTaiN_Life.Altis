/*
	File: fn_keyHandler.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main key handler for event 'keyDown'
*/
private ["_handled","_shift","_alt","_code","_ctrl","_alt","_ctrlKey","_veh","_locked","_interactionKey","_mapKey","_interruptionKeys"];
_ctrl = _this select 0;
_code = _this select 1;
_shift = _this select 2;
_ctrlKey = _this select 3;
_alt = _this select 4;
_speed = speed cursorTarget;
_handled = false;

_interactionKey = if(count (actionKeys "User10") == 0) then {219} else {(actionKeys "User10") select 0};
_mapKey = actionKeys "ShowMap" select 0;
//hint str _code;
_interruptionKeys = [17,30,31,32]; //A,S,W,D

//Vault handling...
if((_code in (actionKeys "GetOver") || _code in (actionKeys "salute")) && {(player getVariable ["restrained",false])}) exitWith {
	true;
};

if(life_action_inUse) exitWith {
	if(!life_interrupted && _code in _interruptionKeys) then {life_interrupted = true;};
	_handled;
};

//Hotfix for Interaction key not being able to be bound on some operation systems.
if(count (actionKeys "User10") != 0 && {(inputAction "User10" > 0)}) exitWith {
	//Interaction key (default is Left Windows, can be mapped via Controls -> Custom -> User Action 10)
	if(!life_action_inUse) then {
		[] spawn 
		{
			private["_handle"];
			_handle = [] spawn life_fnc_actionKeyHandler;
			waitUntil {scriptDone _handle};
			life_action_inUse = false;
		};
	};
	true;
};

switch (_code) do
{
	//Space key for Jumping
	case 57:
	{
		if(isNil "jumpActionTime") then {jumpActionTime = 0;};
		if(_shift && {animationState player != "AovrPercMrunSrasWrflDf"} && {isTouchingGround player} && {stance player == "STAND"} && {speed player > 2} && {!life_is_arrested} && {(velocity player) select 2 < 2.5} && {time - jumpActionTime > 1.5}) then {
			jumpActionTime = time; //Update the time.
			[player,true] spawn life_fnc_jumpFnc; //Local execution
			[[player,false],"life_fnc_jumpFnc",nil,FALSE] call life_fnc_MP; //Global execution 
			_handled = true;
		};
	};
	
	//Map Key
	case _mapKey:
	{
		switch (playerSide) do 
		{
			case west: {if(!visibleMap) then {[] spawn life_fnc_copMarkers;}};
			case independent: {if(!visibleMap) then {[] spawn life_fnc_medicMarkers;}};
			case civilian: {if(!visibleMap) then {[] spawn life_fnc_gangMarkers;}};
		};
	};
	
	//SHIFT+ V
    case 47:
    {
        if(_shift) then {_handled = true;};
        if (_shift && vehicle player == player && !(player getVariable ["restrained", false]) && !(player getVariable ["Civrestrained", false]) && (animationState player) != "Incapacitated" && !life_istazed) then
        {
            if (player getVariable ["surrender", false]) then
            {
                player setVariable ["surrender", false, true];
            } else
            {
                [] spawn life_fnc_surrender;
            };
        };
    };
	
	//C Key + shift
    case 46:
    {    
        if(_shift && (!life_action_inUse) && (vehicle player == player) ) then
        {
            {
                _str = [_x] call life_fnc_varToStr;
                _val = missionNameSpace getVariable _x;
                if(_val > 0 ) then
                {
                    if( _str == "Spitzhacke" || _str == "pickaxe" || _str == "pioche" ) then
                    {
                        [] spawn life_fnc_pickAxeUse;
                    };
                };
            } foreach life_inv_items;
        }
    };
	
	//Holster / recall weapon.
	case 35:
	{
		if(_shift && !_ctrlKey && (currentWeapon player == "")) then {
			[0] call life_fnc_holsterWeapon;
		};
		
		if(!_shift && _ctrlKey && (currentWeapon player != "")) then {
			[1] call life_fnc_holsterWeapon;
		};	
	};
	
	//Touche [S] BipBip camion
	case 31:
	{
		if ((BipBipOn) and (vehicle player != player && (typeOf vehicle player) in ["C_Van_01_transport_F"])) then {
			_Automobile = [vehicle player,0] call BIS_fnc_param;
			_VitesseX = speed _Automobile;
		
			if (_VitesseX < 0) then {
				BipBipOn = false;
				publicVariable "BipBipOn";
				[[_Automobile,1],"life_fnc_BipBipCamion"] call life_fnc_MP;
			};
		};
	};
	
	//Interaction key (default is Left Windows, can be mapped via Controls -> Custom -> User Action 10)
	case _interactionKey:
	{
		if(!life_action_inUse) then {
			[] spawn 
			{
				private["_handle"];
				_handle = [] spawn life_fnc_actionKeyHandler;
				waitUntil {scriptDone _handle};
				life_action_inUse = false;
			};
		};
	};
	
	//Ninja(Shift + Num 1)
	case 79:
	{
		if(_shift) then {_handled = true;};
			if ((_shift) && (vehicle player == player)) then
			{
				cutText [format["NINJA !!!"], "PLAIN DOWN"];
				player playMove "AmovPercMstpSnonWnonDnon_exerciseKata";
			};
	};

	//Kneebend Lent(Shift + Num 2)
	case 80:
	{
		if(_shift) then {_handled = true;};
			if ((_shift) && (vehicle player == player)) then
			{
				cutText [format["Tranquille ma geule"], "PLAIN DOWN"];
				player playMove "AmovPercMstpSnonWnonDnon_exercisekneeBendA";
			};
	};

	//Movement rapide(Shift + Num 3)
	case 81:
	{
		if(_shift) then {_handled = true;};
			if ((_shift) && (vehicle player == player)) then
			{
				cutText [format["Allez on bouge !!!!"], "PLAIN DOWN"];
				player playMove "AmovPercMstpSnonWnonDnon_exercisekneeBendB";
			};
	};

	//Pompe(Shift + Num 4)
	case 75:
	{
		if(_shift) then {_handled = true;};
			if ((_shift) && (vehicle player == player)) then
			{
				cutText [format["POMPES!!!!!!"], "PLAIN DOWN"];
				player playMove "AmovPercMstpSnonWnonDnon_exercisePushup";
			};
	};
	
	//Bras(Shift + Num 5)
	case 76:
	{
		if(_shift) then {_handled = true;};
			if ((_shift) && (vehicle player == player)) then
			{
				cutText [format["Attention !!!!!!"], "PLAIN DOWN"];
				player playMove "HubBriefing_scratch";
			};
	};
	
	//Bras(Shift + Num 6)
	case 77:
	{
		if(_shift) then {_handled = true;};
			if ((_shift) && (vehicle player == player)) then
			{
				cutText [format["Salut toi !!!!!!"], "PLAIN DOWN"];
				player playMove "Acts_PercMstpSlowWrflDnon_handup1b";
			};
	};
	
	case 39:
	{
		if(_shift) then {
			switch (player getVariable["boulequies",0]) do {
				case 0: {hintSilent "90%"; 1 fadeSound 0.1; player setVariable ["boulequies", 10]; };
				case 10: {hintSilent "60%"; 1 fadeSound 0.4; player setVariable ["boulequies", 40]; };
				case 40: {hintSilent "30%"; 1 fadeSound 0.7; player setVariable ["boulequies", 70]; };
				case 70: {hintSilent "0%"; 1 fadeSound 1; player setVariable ["boulequies", 0]; };
			};	
		};
	};
	
	//Restraining (Shift + R)
	case 19:
	{
		if(_shift) then {_handled = true;};
		if(_shift && playerSide == west && !isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && (side cursorTarget in [civilian,independent]) && alive cursorTarget && cursorTarget distance player < 3.5 && !(cursorTarget getVariable "Escorting") && !(cursorTarget getVariable "restrained") && speed cursorTarget < 1) then
		{
			[] call life_fnc_restrainAction;
			playsound "cuff";
		};
	};
	
	//Knock out, this is experimental and yeah...
	case 34:
	{
	if(_shift) then {_handled = true;};
	if(_shift && playerSide == civilian && !isNull cursorTarget && cursorTarget isKindOf "Man" && isPlayer cursorTarget && alive cursorTarget && cursorTarget distance player < 4 && speed cursorTarget < 1) then
	{
	if((animationState cursorTarget) != "Incapacitated" && (currentWeapon player == primaryWeapon player OR currentWeapon player == handgunWeapon player) && currentWeapon player != "" && !life_knockout && !(player getVariable["restrained",false]) && !life_istazed) then
	{
	[cursorTarget] spawn life_fnc_knockoutAction;
	if("ItemRadio" in assignedItems cursorTarget) then {
	cursorTarget removeweapon "ItemRadio";
	hint "Le Portable de cette personne est tombé par terre.";
	_defenceplace1 = "Item_ItemRadio" createVehicle (player modelToWorld[0,0,0]);}
	else { hint "The person that you knock out have no cellphone!"};
	};
	};
	};

	//T Key (Trunk)
	case 20:
	{
		if(!_alt && !_ctrlKey) then
		{
			if(vehicle player != player && alive vehicle player) then
			{
				if((vehicle player) in life_vehicles) then
				{
					[vehicle player] call life_fnc_openInventory;
				};
			}
				else
			{
				if((cursorTarget isKindOf "Car" OR cursorTarget isKindOf "Air" OR cursorTarget isKindOf "Ship" OR cursorTarget isKindOf "House_F") && player distance cursorTarget < 7 && vehicle player == player && alive cursorTarget) then
				{
					if(cursorTarget in life_vehicles OR {!(cursorTarget getVariable ["locked",true])}) then
					{
						[cursorTarget] call life_fnc_openInventory;
					};
				};
			};
		};
	};
	//L Key?
	case 38: 
	{
		//If cop run checks for turning lights on.
		if(_shift && playerSide in [west,independent]) then {
			if(vehicle player != player && (typeOf vehicle player) in ["C_Offroad_01_F","B_MRAP_01_F","C_SUV_01_F"]) then {
				if(!isNil {vehicle player getVariable "lights"}) then {
					if(playerSide == west) then {
						[vehicle player] call life_fnc_sirenLights;
					} else {
						[vehicle player] call life_fnc_medicSirenLights;
					};
					_handled = true;
				};
			};
		};
		
		if(!_alt && !_ctrlKey) then { [] call life_fnc_radar; };
	};
	//Y Player Menu
	case 21:
	{
		if(!_alt && !_ctrlKey && !dialog) then
		{
			[] call life_fnc_p_openMenu;
		};
	};
	
	//F Key
    case 33:
    {    if(_shift) then
            {
                if(playerSide == west && vehicle player != player && !life_siren2_active && ((driver vehicle player) == player)) then
                {
                    [] spawn
                    {
                        life_siren2_active = true;
                        sleep 1.2;
                        life_siren2_active = false;
                    };
                    _veh = vehicle player;
                    if(isNil {_veh getVariable "siren2"}) then {_veh setVariable["siren2",false,true];};
                    if((_veh getVariable "siren2")) then
                    {
                        titleText ["Yelp Off","PLAIN"];
                        _veh setVariable["siren2",false,true];
                    }
                        else
                    {
                        titleText ["Yelp On","PLAIN"];
                        _veh setVariable["siren2",true,true];
                        [[_veh],"life_fnc_copsiren2",nil,true] spawn life_fnc_MP;
                    };
                };
            };

        if (!_shift) then
        {
            if(playerSide == west && vehicle player != player && !life_siren_active && ((driver vehicle player) == player)) then
            {
                [] spawn
                {
                    life_siren_active = true;
                    sleep 4.7;
                    life_siren_active = false;
                };
                _veh = vehicle player;
                if(isNil {_veh getVariable "siren"}) then {_veh setVariable["siren",false,true];};
                if((_veh getVariable "siren")) then
                {
                    titleText ["Sirens Off","PLAIN"];
                    _veh setVariable["siren",false,true];
                }
                    else
                {
                    titleText ["Sirens On","PLAIN"];
                    _veh setVariable["siren",true,true];
                    [[_veh],"life_fnc_copSiren",nil,true] spawn life_fnc_MP;
                };
            };                                            
        };
    };
	//U Key
	case 22:
	{
	if(!_alt && !_ctrlKey) then {
	if(vehicle player == player) then {
	_veh = cursorTarget;
	} else {
	_veh = vehicle player;
	};

	if(_veh isKindOf "House_F" && playerSide == civilian) then {
	if(_veh in life_vehicles && player distance _veh < 8) then {
	_door = [_veh] call life_fnc_nearestDoor;
	if(_door == 0) exitWith {hint "Vous n'êtes pas près d'une porte !"};
	_locked = _veh getVariable [format["bis_disabled_Door_%1",_door],0];
	if(_locked == 0) then {
	_veh setVariable[format["bis_disabled_Door_%1",_door],1,true];
	_veh animate [format["door_%1_rot",_door],0];
	systemChat "You have locked that door.";
	} else {
	_veh setVariable[format["bis_disabled_Door_%1",_door],0,true];
	_veh animate [format["door_%1_rot",_door],1];
	systemChat "Vous avez déverrouillé la porte.";
	};
	};
	} else {
	_locked = locked _veh;

	if(_veh in life_vehicles && player distance _veh < 8) then
	{
	if(_locked == 2) then
	{
	if(local _veh) then
	{
	_veh lock 0;
	_veh animateDoor ["door_back_R",1];
	_veh animateDoor ["door_back_L",1];
	_veh animateDoor ['door_R',1];
	_veh animateDoor ['door_L',1];
	_veh animateDoor ['Door_rear',1];
	_veh animateDoor ['Door_LM',1];
	_veh animateDoor ['Door_RM',1];
	_veh animateDoor ['Door_LF',1];
	_veh animateDoor ['Door_RF',1];
	_veh animateDoor ['Door_LB',1];
	_veh animateDoor ['Door_RB',1];
	}
	else
	{
	[[_veh,0], "life_fnc_lockVehicle",_veh,false] spawn life_fnc_MP;
	_veh animateDoor ["door_back_R",1];
	_veh animateDoor ["door_back_L",1];
	_veh animateDoor ['door_R',1];
	_veh animateDoor ['door_L',1];
	_veh animateDoor ['Door_rear',1];
	_veh animateDoor ['Door_LM',1];
	_veh animateDoor ['Door_RM',1];
	_veh animateDoor ['Door_LF',1];
	_veh animateDoor ['Door_RF',1];
	_veh animateDoor ['Door_LB',1];
	_veh animateDoor ['Door_RB',1];
	};
	hint composeText [ image "icons\unlock.paa", " Véhicule Ouvert" ];
	player say3D "unlock";

	}
	else
	{
	if(local _veh) then
	{
	_veh lock 2;
	_veh animateDoor ["door_back_R",0];
	_veh animateDoor ["door_back_L",0];
	_veh animateDoor ['door_R',0];
	_veh animateDoor ['door_L',0];
	_veh animateDoor ['Door_rear',0];
	_veh animateDoor ['Door_LM',0];
	_veh animateDoor ['Door_RM',0];
	_veh animateDoor ['Door_LF',0];
	_veh animateDoor ['Door_RF',0];
	_veh animateDoor ['Door_LB',0];
	_veh animateDoor ['Door_RB',0];

	}
	else
	{
	[[_veh,2], "life_fnc_lockVehicle",_veh,false] spawn life_fnc_MP;
	_veh animateDoor ["door_back_R",0];
	_veh animateDoor ["door_back_L",0];
	_veh animateDoor ['door_R',0];
	_veh animateDoor ['door_L',0];
	_veh animateDoor ['Door_rear',0];
	_veh animateDoor ['Door_LM',0];
	_veh animateDoor ['Door_RM',0];
	_veh animateDoor ['Door_LF',0];
	_veh animateDoor ['Door_RF',0];
	_veh animateDoor ['Door_LB',0];
	_veh animateDoor ['Door_RB',0];
	};

	hint composeText [ image "icons\lock.paa", " Véhicule Fermé" ];
	player say3D "car_lock";


	};
	};
	};
	};
	};
};

_handled;