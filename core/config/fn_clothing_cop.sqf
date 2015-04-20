#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Magasin de Vétements - Police"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		_ret pushBack ["demian2435_police_man_uniform","Uniforme Policier",25];
	};
	
	//Hats
	case 1:
	{
		_ret pushBack ["H_HelmetB_plain_mcamo",nil,75];
		_ret pushBack ["H_Booniehat_mcamo",nil,120];
		_ret pushBack ["H_Beret_blk_POLICE",nil,120];
		_ret pushBack ["H_CrewHelmetHeli_B","Masque à Gaz",500];
		if(__GETC__(life_coplevel) > 5) then
		{
			_ret pushBack ["H_Beret_02",nil,100];
			_ret pushBack ["H_Beret_Colonel",nil,100];
		};
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
		_ret pushBack ["demian2435_police_vest","Véste de Police",800];
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret pushBack ["V_PlateCarrier2_rgr",nil,1500];
			_ret pushBack ["V_PlateCarrierH_CTRG",nil,1500];
		};
	};
	
	//Backpacks
	case 4:
	{
		_ret =
		[
			["B_Kitbag_cbr",nil,800],
			["B_FieldPack_cbr",nil,500],
			["B_AssaultPack_cbr",nil,700],
			["B_mas_Kitbag_black",nil,2500],
			["B_Carryall_cbr",nil,3500]
		];
	};
};

_ret;