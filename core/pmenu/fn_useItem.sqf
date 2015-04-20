/*
	File: fn_useItem.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main function for item effects and functionality through the player menu.
*/
private["_item"];
disableSerialization;
if((lbCurSel 2005) == -1) exitWith {hint localize "STR_ISTR_SelectItemFirst";};
_item = lbData[2005,(lbCurSel 2005)];

switch (true) do
{
	case (_item == "water" or _item == "coffee"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			life_thirst = 100;
			player setFatigue 0;
		};
	};
	
	case (_item == "boltcutter"): {
		[cursorTarget] spawn life_fnc_boltcutter;
		closeDialog 0;
	};
	case (_item in ["lsdp"]): 
	{ 
		if(playerSide in [west,independent]) exitWith {hint "Bonjour, vous êtes en service !!";}; 
		if((player getVariable ["Druged",FALSE])) exitWith {hint "Vous en avez déjà beaucoup trop pris gros ...";}; 
		if(([false,_item,1] call life_fnc_handleInv)) then 
		{ 
		if(isNil "life_drug") then {life_drug = 0;}; 
		//Wenn er Drogen nimmt
		life_drug = life_drug + 0.08; 
		if (life_drug < 0.00) exitWith {}; 
		[] spawn life_fnc_LSDnimm; 
		}; 
	};

	case (_item in ["heroinp"]): 
	{ 
		if(playerSide in [west,independent]) exitWith {hint "Bonjour, vous êtes en service !!";}; 
		if((player getVariable ["Druged",FALSE])) exitWith {hint "Vous en avez déjà beaucoup trop pris gros ...";}; 
		if(([false,_item,1] call life_fnc_handleInv)) then 
		{ 
		if(isNil "life_drug") then {life_drug = 0;}; 
		//Wenn er Drogen nimmt
		life_drug = life_drug + 0.08; 
		if (life_drug < 0.00) exitWith {}; 
		[] spawn life_fnc_Heroinnimm; 
		}; 
	};

	case (_item in ["cocainep"]): 
	{ 
		if(playerSide in [west,independent]) exitWith {hint "Bonjour, vous êtes en service !!";}; 
		if((player getVariable ["Druged",FALSE])) exitWith {hint "Vous en avez déjà beaucoup trop pris gros ...";}; 
		if(([false,_item,1] call life_fnc_handleInv)) then 
		{ 
		if(isNil "life_drug") then {life_drug = 0;}; 
		//Wenn er Drogen nimmt
		life_drug = life_drug + 0.08; 
		if (life_drug < 0.00) exitWith {}; 
		[] spawn life_fnc_Cocainenimm; 
		}; 
	};

	case (_item in ["marijuana"]): 
	{ 
		if(playerSide in [west,independent]) exitWith {hint "Bonjour, vous êtes en service !!";}; 
		if((player getVariable ["Druged",FALSE])) exitWith {hint "Vous en avez déjà beaucoup trop pris gros ...";}; 
		if(([false,_item,1] call life_fnc_handleInv)) then 
		{ 
		if(isNil "life_drug") then {life_drug = 0;}; 
		//Wenn er Drogen nimmt
		life_drug = life_drug + 0.08; 
		if (life_drug < 0.00) exitWith {}; 
		[] spawn life_fnc_Weednimm; 
		}; 
	};
	
	case (_item == "kidney"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			player setVariable["missingOrgan",false,true];
			life_thirst = 100;
			life_hunger = 100;
			player setFatigue .5;
		};
	};
	
	case (_item == "mur"):
	{
		if(!isNull life_mur) exitWith {hint "Vous deployez deja cet objet"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[_item] spawn life_fnc_poseitem;
		};
	};
	
	case (_item == "sac"):
	{
		if(!isNull life_sac) exitWith {hint "Vous deployez deja cet objet"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[_item] spawn life_fnc_poseitem;
		};
	};
	
	case (_item == "cone"):
	{
		if(!isNull life_cone) exitWith {hint "Vous deployez deja cet objet"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[_item] spawn life_fnc_poseitem;
		};
	};
	
	case (_item == "barre"):
	{
		if(!isNull life_barre) exitWith {hint "Vous deployez deja cet objet"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[_item] spawn life_fnc_poseitem;
		};
	};
	
	case (_item == "lightr"):
	{
		if(!isNull life_lightr) exitWith {hint "Vous deployez deja cet objet"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[_item] spawn life_fnc_poseitem;
		};
	};

	case (_item == "lightg"):
	{
		if(!isNull life_lightg) exitWith {hint "Vous deployez deja cet objet"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[_item] spawn life_fnc_poseitem;
		};
	};
	
	case (_item == "lighty"):
	{
		if(!isNull life_lighty) exitWith {hint "Vous deployez deja cet objet"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[_item] spawn life_fnc_poseitem;
		};
	};
		
	case (_item == "flecheg"):
	{
		if(!isNull life_barre) exitWith {hint "Vous deployez deja cet objet"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[_item] spawn life_fnc_poseitem;
		};
	};
	
	case (_item == "fleched"):
	{
		if(!isNull life_barre) exitWith {hint "Vous deployez deja cet objet"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[_item] spawn life_fnc_poseitem;
		};
	};
	
	case (_item == "blastingcharge"): {
		player reveal fed_bank;
		(group player) reveal fed_bank;
		[cursorTarget] spawn life_fnc_blastingCharge;
	};
	
	case (_item == "defusekit"): {
		[cursorTarget] spawn life_fnc_defuseKit;
	};
	
	case (_item in ["storagesmall","storagebig"]): {
		[_item] call life_fnc_storageBox;
	};
	
	case (_item == "redgull"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			life_thirst = 100;
			player setFatigue 0;
			[] spawn
			{
				life_redgull_effect = time;
				titleText[localize "STR_ISTR_RedGullEffect","PLAIN"];
				player enableFatigue false;
				waitUntil {!alive player OR ((time - life_redgull_effect) > (3 * 60))};
				player enableFatigue true;
			};
		};
	};
	
	case (_item == "spikeStrip"):
	{
		if(!isNull life_spikestrip) exitWith {hint localize "STR_ISTR_SpikesDeployment"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_spikeStrip;
		};
	};
	
	case (_item == "fuelF"):
	{
		if(vehicle player != player) exitWith {hint localize "STR_ISTR_RefuelInVehicle"};
		[] spawn life_fnc_jerryRefuel;
	};
	
	case (_item == "lockpick"):
	{
		[] spawn life_fnc_lockpick;
	};
	
	case (_item in ["apple","rabbit","salema","ornate","mackerel","tuna","mullet","catshark","turtle","turtlesoup","donuts","tbacon","peach"]):
	{
		[_item] call life_fnc_eatFood;
	};

	case (_item == "pickaxe"):
	{
		[] spawn life_fnc_pickAxeUse;
	};
	
	default
	{
		hint localize "STR_ISTR_NotUsable";
	};
};
	
[] call life_fnc_p_updateMenu;
[] call life_fnc_hudUpdate;