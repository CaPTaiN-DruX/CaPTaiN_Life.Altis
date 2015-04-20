#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for the weapon shops.
	
	Return:
	String: Close the menu
	Array: 
	[Shop Name,
	[ //Array of items to add to the store
		[classname,Custom Name (set nil for default),price]
	]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{
	case "cop_weapon":
	{
		switch(true) do
		{
			case (playerSide != west): {"Vous n'êtes pas Gendarme !"};
			case (__GETC__(life_coplevel) == 0): {"Vous n'êtes pas sur la liste blanche du service de police"};
			
			default
			{
				_ret = [];
				_ret pushBack ["DDOPP_X26","Tazer",2000];
				_ret pushBack ["DDOPP_1Rnd_X26","Munitions Tazer",50];
				if(__GETC__(life_coplevel) > 1) then 
				{
					//SMG
					_ret pushBack ["R3F_Famas_F1",nil,20000];
					_ret pushBack ["R3F_25Rnd_556x45_FAMAS",nil,150];											
				};
				
				if(__GETC__(life_coplevel) > 2) then 
				{
					//5.56mm
					_ret pushBack ["arifle_mas_hk417c",nil,35000];
					_ret pushBack ["20Rnd_mas_762x51_Stanag",nil,150];	
					if(__GETC__(life_coplevel) > 3) then
					{
						_ret pushBack ["srifle_mas_hk417",nil,40000];
						_ret pushBack ["20Rnd_mas_762x51_Stanag",nil,400];
					};
				};
				
				if(__GETC__(life_coplevel) > 4) then
				{
					_ret pushBack ["arifle_mas_g36c",nil,60000];
					_ret pushBack ["30Rnd_mas_556x45_Stanag",nil,150];
				};
				
				if(__GETC__(life_coplevel) > 5) then
				{
					_ret pushBack ["LMG_mas_Mk48_F",nil,70000];
					_ret pushBack ["100Rnd_mas_762x51_Stanag",nil,150];
				};
				if(__GETC__(life_coplevel) > 6) then
				{
					_ret pushBack ["arifle_mas_saiga",nil,77500];
					_ret pushBack ["10Rnd_mas_12Gauge_Slug",nil,100];
				};
				if(__GETC__(life_coplevel) > 7) then
				{
					_ret pushBack ["srifle_mas_m24",nil,77500];
					_ret pushBack ["5Rnd_mas_762x51_Stanag",nil,100];
				};
				if(__GETC__(life_coplevel) > 8) then
				{
					_ret pushBack ["arifle_mas_m1014",nil,77500];
					_ret pushBack ["7Rnd_mas_12Gauge_Slug",nil,100];
				};
				if(__GETC__(life_coplevel) > 9) then
				{
					_ret pushBack ["srifle_mas_lrr",nil,77500];
					_ret pushBack ["10Rnd_mas_338_Stanag",nil,100];
				};
				//Sortie
				switch (__GETC__(life_coplevel)) do
				{
					case (1): {["Armurerie Adjoint",_ret]};
					case (2): {["Armurerie Brigadier",_ret]};
					case (3): {["Armurerie Adjudant",_ret]};
					case (4): {["Armurerie Major",_ret]};
					case (5): {["Armurerie Aspirant",_ret]};
					case (6): {["Armurerie Lieutenant",_ret]};
					case (7): {["Armurerie Capitaine",_ret]};
					case (8): {["Armurerie Commandant",_ret]};
					case (9): {["Armurerie Colonel",_ret]};
					case (10): {["Armurerie Général",_ret]};
				};
			};
		};
	};
	
	case "med_basic":
	{
		switch (true) do 
		{
			case (playerSide != independent): {"Vous n'êtes pas médecin"};
			default {
				["Hospital EMS Shop",
					[
					    ["Binocular","Jumelles",150],
						["ItemGPS","GPS",100],
						["ToolKit","Kit de Réparation",250],
						["muzzle_snds_L",nil,650],
						["FirstAidKit","Kit de Premier Secours",150],
						["Medikit","Trousse Médical",1000],
						["NVGoggles","JVN",2000],
						["ItemRadio","Portable",500],
						["B_FieldPack_ocamo",nil,3000]
					]
				];
			};
		};
	};
	
	case "cop_fourniture":
	{
		switch(true) do
		{
			case (playerSide != west): {"Vous n'êtes pas Gendarme!"};
			default
			{
				["Magasin Fournitures",
					[
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["NVGoggles_OPFOR",nil,2000],
						["Chemlight_red",nil,300],
						["Chemlight_yellow",nil,300],
						["Chemlight_green",nil,300],
						["Chemlight_blue",nil,300],
						["Medikit",nil,300],
						["Laserdesignator",nil,300],
						["Rangefinder",nil,300],
						["HandGrenade_Stone","Grenade Flash",1700],
						["MineDetector",nil,1000],
						["acc_flashlight",nil,750],
						["SmokeShellGreen","Gaz Lacrimogène",100],
						["ItemRadio","Portable",500]
					]
				];
			};
		};
	};
	
	case "cop_viseurs":
	{
		switch(true) do
		{
			case (playerSide != west): {"Vous n'êtes pas Gendarme!"};
			default
			{
				["Magasin Equipements",
					[
						["optic_Arco",nil,150],
						["optic_Hamr",nil,100],
						["optic_Aco",nil,250],
						["optic_ACO_grn",nil,150],
						["optic_Aco_smg",nil,2000],
						["optic_ACO_grn_smg",nil,300],
						["optic_Holosight",nil,300],
						["optic_Holosight_smg",nil,300],
						["optic_SOS",nil,300],
						["optic_MRCO",nil,300],
						["muzzle_snds_acp",nil,300],
						["optic_DMS",nil,300],
						["optic_LRPS",nil,1700],
						["optic_NVS",nil,1000],
						["optic_Nightstalker",nil,750]
					]
				];
			};
		};
	};
	
	case "gangster":
	{
		switch(true) do
		{
			case (!license_civ_gangster): {"Vous n'avez pas la license Gangster !"};
			default
			{
				["Magasin Armes",
					[
						["arifle_mas_m4",nil,75000],
						["30Rnd_mas_556x45_Stanag",nil,100],
						["arifle_mas_aks74u",nil,40000],
						["30Rnd_mas_545x39_mag",nil,150],
						["arifle_mas_bizon",nil,50000],
						["64Rnd_mas_9x18_mag",nil,300],
						["srifle_mas_m91",nil,100000],
						["10Rnd_mas_762x54_mag",nil,300]
					]
				];
			};
		};
	};
	
	case "gangster_fourniture":
	{
		switch(true) do
		{
			case (!license_civ_gangster): {"Vous n'avez pas la license Gangster !"};
			default
			{
				["Magasin Fournitures",
					[
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["NVGoggles",nil,2000],
						["Chemlight_red",nil,300],
						["Chemlight_yellow",nil,300],
						["Chemlight_green",nil,300],
						["Chemlight_blue",nil,300],
						["Medikit",nil,300],
						["Laserdesignator",nil,300],
						["Rangefinder",nil,300],
						["MineDetector",nil,1000],
						["acc_flashlight",nil,750],
						["ItemRadio","Portable",500]
					]
				];
			};
		};
	};
	
	case "gangster_viseurs":
	{
		switch(true) do
		{
			case (!license_civ_gangster): {"Vous n'avez pas la license Gangster !"};
			default
			{
				["Magasin Equipements",
					[
						["optic_Arco",nil,150],
						["optic_Hamr",nil,100],
						["optic_Aco",nil,250],
						["optic_ACO_grn",nil,150],
						["optic_Aco_smg",nil,2000],
						["optic_ACO_grn_smg",nil,300],
						["optic_Holosight",nil,300],
						["optic_Holosight_smg",nil,300],
						["optic_SOS",nil,300],
						["optic_MRCO",nil,300],
						["muzzle_snds_acp",nil,300],
						["optic_DMS",nil,300],
						["optic_LRPS",nil,1700],
						["optic_NVS",nil,1000],
						["optic_Nightstalker",nil,750]
					]
				];
			};
		};
	};
	
	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Vous n'êtes pas Civil!"};
			case (!license_civ_rebel): {"Vous n'avez pas la license Rebelle!"};
			default
			{
				["Mohammed's Jihadi Shop",
					[
						["arifle_TRG20_F",nil,25000],
						["arifle_Katiba_F",nil,30000],
						["srifle_DMR_01_F",nil,50000],
						["arifle_SDAR_F",nil,20000],
						["optic_ACO_grn",nil,3500],
						["optic_Holosight",nil,3600],
						["acc_flashlight",nil,1000],
						["optic_Hamr",nil,7500],
						["30Rnd_9x21_Mag",nil,200],
						["20Rnd_556x45_UW_mag",nil,125],
						["30Rnd_556x45_Stanag",nil,300],
						["10Rnd_762x51_Mag",nil,500],
						["30Rnd_65x39_caseless_green",nil,275],
						["LMG_Zafir_F","Zafir",200000],
						["150Rnd_762x51_Box","Munitions de Zafir",250],
						["srifle_GM6_SOS_F","Sniper",200000],
						["5Rnd_127x108_Mag","Munitions de Sniper",275],
						["launch_RPG32_F","Lance Roquette",300000],
						["RPG32_F","Munitions de Lance Roquette",40000]
					]
				];
			};
		};
	};
	
	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Vous n'êtes pas Civil!"};
			case (!license_civ_gun): {"Vous n'avez pas la license Port d'arme!"};
			default
			{
				["Armes Légal",
					[
						["hgun_Rook40_F",nil,6500],
						["hgun_Pistol_heavy_02_F",nil,9850],
						["hgun_ACPC2_F",nil,11500],
						["hgun_PDW2000_F",nil,20000],
						["optic_ACO_grn_smg",nil,2500],
						["V_Rangemaster_belt",nil,4900],
						["16Rnd_9x21_Mag",nil,25],
						["9Rnd_45ACP_Mag",nil,45],
						["6Rnd_45ACP_Cylinder",nil,50],
						["30Rnd_9x21_Mag",nil,75],
						["hgun_mas_acp_F",nil,7500],
						["12Rnd_mas_45acp_Mag",nil,75],
						["hgun_mas_mak_F",nil,8000],
						["8Rnd_mas_9x18_Mag",nil,75],
						["hgun_mas_bhp_F",nil,8000],
						["15Rnd_mas_9x21_Mag",nil,75]
					]
				];
			};
		};
	};
	
	case "gang":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			default
			{
				["Hideout Armament",
					[
						["hgun_Rook40_F",nil,1500],
						["hgun_Pistol_heavy_02_F",nil,2500],
						["hgun_ACPC2_F",nil,4500],
						["hgun_PDW2000_F",nil,9500],
						["optic_ACO_grn_smg",nil,950],
						["V_Rangemaster_belt",nil,1900],
						["16Rnd_9x21_Mag",nil,25],
						["9Rnd_45ACP_Mag",nil,45],
						["6Rnd_45ACP_Cylinder",nil,50],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};
		};
	};
	
	case "genstore":
	{
		["Altis General Store",
			[
				["Binocular",nil,150],
				["ItemGPS",nil,100],
				["ToolKit",nil,250],
				["FirstAidKit",nil,150],
				["NVGoggles",nil,2000],
				["Chemlight_red",nil,300],
				["Chemlight_yellow",nil,300],
				["Chemlight_green",nil,300],
				["Chemlight_blue",nil,300],
				["ItemRadio","Portable",500]
			]
		];
	};
};
