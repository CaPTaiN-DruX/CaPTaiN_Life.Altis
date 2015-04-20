#include <macro.h>
/*
	File: fn_clothing_gign.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Magasin de Vétements - GIGN"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		_ret pushBack ["gign_uniform","Uniforme GIGN",25];
	};
	
	//Hats
	case 1:
	{
		_ret pushBack ["gign_Balaclava",nil,75];
		_ret pushBack ["gign_helm",nil,120];
		_ret pushBack ["gign_helm3",nil,120];
		_ret pushBack ["H_CrewHelmetHeli_B","Masque à Gaz",500];
	};
	
	//Glasses
	case 2:
	{
		_ret = 
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Aviator",nil,75],
			["G_Balaclava_blk",nil,10],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55]
		];
	};
	
	//Vest
	case 3:
	{
		_ret pushBack ["gign_BlackVest","Véste de GIGN",800];
	};
	
	//Backpacks
	case 4:
	{
		_ret =
		[

		];
	};
};

_ret;