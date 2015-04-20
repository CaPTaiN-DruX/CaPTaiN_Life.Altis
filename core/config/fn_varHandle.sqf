/*
	File: fn_varHandle.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master handler for getting a variables name, short name, etc.
*/
private["_var","_mode"];
_var = [_this,0,"",[""]] call BIS_fnc_param;
_mode = [_this,1,-1,[0]] call BIS_fnc_param;
if(_var == "" OR _mode == -1) exitWith {""};

switch (_mode) do
{
	case 0:
	{
		switch (_var) do
		{
			case "oilu": {"life_inv_oilu"};
			case "oilp": {"life_inv_oilp"};
			case "heroinu": {"life_inv_heroinu"};
			case "heroinp": {"life_inv_heroinp"};
			case "cannabis": {"life_inv_cannabis"};
			case "marijuana": {"life_inv_marijuana"};
			case "apple": {"life_inv_apple"};
			case "water": {"life_inv_water"};
			case "rabbit": {"life_inv_rabbit"};
			case "salema": {"life_inv_salema"};
			case "ornate": {"life_inv_ornate"};
			case "mackerel": {"life_inv_mackerel"};
			case "tuna": {"life_inv_tuna"};
			case "mullet": {"life_inv_mullet"};
			case "catshark": {"life_inv_catshark"};
			case "turtle": {"life_inv_turtle"};
			case "fishing": {"life_inv_fishingpoles"};
			case "coffee": {"life_inv_coffee"};
			case "turtlesoup": {"life_inv_turtlesoup"};
			case "donuts": {"life_inv_donuts"};
			case "fuelE": {"life_inv_fuelE"};
			case "fuelF": {"life_inv_fuelF"};
			case "money": {"life_cash"};
			case "pickaxe": {"life_inv_pickaxe"};
			case "copperore": {"life_inv_copperore"};
			case "ironore": {"life_inv_ironore"};
			case "iron_r": {"life_inv_ironr"};
			case "copper_r": {"life_inv_copperr"};
			case "salt": {"life_inv_salt"};
			case "salt_r": {"life_inv_saltr"};
			case "sand": {"life_inv_sand"};
			case "glass": {"life_inv_glass"};
			case "tbacon": {"life_inv_tbacon"};
			case "lockpick": {"life_inv_lockpick"};
			case "redgull": {"life_inv_redgull"};
			case "peach": {"life_inv_peach"};
			case "diamond": {"life_inv_diamond"};
			case "diamondc": {"life_inv_diamondr"};
			case "cocaine": {"life_inv_coke"};
			case "cocainep": {"life_inv_cokep"};
			case "spikeStrip": {"life_inv_spikeStrip"};
			case "cement": {"life_inv_cement"};
			case "rock": {"life_inv_rock"};
			case "goldbar": {"life_inv_goldbar"};
			case "blastingcharge": {"life_inv_blastingcharge"};
			case "boltcutter": {"life_inv_boltcutter"};
			case "defusekit": {"life_inv_defusekit"};
			case "storagesmall": {"life_inv_storagesmall"};
			case "storagebig": {"life_inv_storagebig"};
			case "mur": {"life_inv_mur"};
			case "sac": {"life_inv_sac"};
			case "cone": {"life_inv_cone"};
			case "barre": {"life_inv_barre"};
			case "lightr": {"life_inv_lightr"};
			case "lightg": {"life_inv_lightg"};
			case "lighty": {"life_inv_lighty"};			
			case "flecheg": {"life_inv_flecheg"};	
			case "fleched": {"life_inv_fleched"};
			case "kitmeth": {"life_inv_kitmeth"};
			case "crystalmeth": {"life_inv_crystalmeth"};
			case "poudrehydroxyde": {"life_inv_poudrehydroxyde"};
			case "crystalmethpur": {"life_inv_crystalmethpur"};
			case "silver": {"life_inv_silver"};
			case "silver_r": {"life_inv_silverr"};
			case "lsd": {"life_inv_lsd"};
			case "lsdp": {"life_inv_lsdp"};
			case "kidney": {"life_inv_kidney"};
			case "henraw": {"life_inv_henraw"};
            case "roosterraw": {"life_inv_roosterraw"};
            case "goatraw": {"life_inv_goatraw"};
            case "sheepraw": {"life_inv_sheepraw"};
            case "rabbitraw": {"life_inv_rabbitraw"};
			case "ble": {"life_inv_ble"};
			case "pain": {"life_inv_pain"};
			case "tabac": {"life_inv_tabac"};
			case "tabacp": {"life_inv_tabacp"};
		};
	};
	
	case 1:
	{
		switch (_var) do
		{
			case "life_inv_oilu": {"oilu"};
			case "life_inv_oilp": {"oilp"};
			case "life_inv_heroinu": {"heroinu"};
			case "life_inv_heroinp": {"heroinp"};
			case "life_inv_cannabis": {"cannabis"};
			case "life_inv_marijuana": {"marijuana"};
			case "life_inv_apple": {"apple"};
			case "life_inv_water": {"water"};
			case "life_inv_rabbit": {"rabbit"};
			case "life_inv_salema": {"salema"};
			case "life_inv_ornate": {"ornate"};
			case "life_inv_mackerel": {"mackerel"};
			case "life_inv_tuna": {"tuna"};
			case "life_inv_mullet": {"mullet"};
			case "life_inv_catshark": {"catshark"};
			case "life_inv_turtle": {"turtle"};
			case "life_inv_fishingpoles": {"fishing"};
			case "life_inv_coffee": {"coffee"};
			case "life_inv_turtlesoup": {"turtlesoup"};
			case "life_inv_donuts": {"donuts"};
			case "life_inv_fuelE": {"fuelE"};
			case "life_inv_fuelF": {"fuelF"};
			case "life_cash": {"money"};
			case "life_inv_pickaxe": {"pickaxe"};
			case "life_inv_copperore": {"copperore"};
			case "life_inv_ironore": {"ironore"};
			case "life_inv_ironr": {"iron_r"};
			case "life_inv_copperr": {"copper_r"};
			case "life_inv_sand": {"sand"};
			case "life_inv_salt": {"salt"};
			case "life_inv_glass": {"glass"};
			case "life_inv_redgull": {"redgull"};
			case "life_inv_lockpick": {"lockpick"};
			case "life_inv_tbacon": {"tbacon"};
			case "life_inv_peach": {"peach"};
			case "life_inv_diamond": {"diamond"};
			case "life_inv_diamondr": {"diamondc"};
			case "life_inv_saltr": {"salt_r"};
			case "life_inv_coke": {"cocaine"};
			case "life_inv_cokep": {"cocainep"};
			case "life_inv_spikeStrip": {"spikeStrip"};
			case "life_inv_cement": {"cement"};
			case "life_inv_rock": {"rock"};
			case "life_inv_goldbar": {"goldbar"};
			case "life_inv_blastingcharge": {"blastingcharge"};
			case "life_inv_boltcutter": {"boltcutter"};
			case "life_inv_defusekit": {"defusekit"};
			case "life_inv_storagesmall": {"storagesmall"};
			case "life_inv_storagebig": {"storagebig"};
			case "life_inv_mur": {"mur"};
			case "life_inv_sac": {"sac"};
			case "life_inv_cone": {"cone"};
			case "life_inv_barre": {"barre"};
			case "life_inv_lightr": {"lightr"};
			case "life_inv_lightg": {"lightg"};
			case "life_inv_lighty": {"lighty"};			
			case "life_inv_flecheg": {"flecheg"};
			case "life_inv_fleched": {"fleched"};
			case "life_inv_kitmeth": {"kitmeth"};
			case "life_inv_crystalmeth": {"crystalmeth"};
			case "life_inv_crystalmethpur": {"crystalmethpur"};
			case "life_inv_poudrehydroxyde": {"poudrehydroxyde"};
			case "life_inv_silver": {"silver"};
			case "life_inv_silverr": {"silver_r"};
			case "life_inv_lsd": {"lsd"};
			case "life_inv_lsdp": {"lsdp"};	
			case "life_inv_kidney": {"kidney"};
			case "life_inv_henraw": {"henraw"};
            case "life_inv_roosterraw": {"roosterraw"};
            case "life_inv_goatraw": {"goatraw"};
            case "life_inv_sheepraw": {"sheepraw"};
            case "life_inv_rabbitraw": {"rabbitraw"};
            case "life_inv_ble": {"ble"};
            case "life_inv_pain": {"pain"};
            case "life_inv_tabac": {"tabac"};
            case "life_inv_tabacp": {"tabacp"};			
		};
	};
};
