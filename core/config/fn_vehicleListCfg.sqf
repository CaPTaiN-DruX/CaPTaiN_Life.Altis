#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{
	case "kart_shop":
	{
		_return = [
			["C_Kart_01_Blu_F",15000],
			["C_Kart_01_Fuel_F",15000],
			["C_Kart_01_Red_F",15000],
			["C_Kart_01_Vrana_F",15000]
		];
	};
	case "med_shop":
	{
		_return = [
			["DAR_TahoeEMS",10000],
			["max_ambulance",25000]
		];
	};
	
	case "med_air_hs": {
		_return = [
			["B_Heli_Light_01_F",50000],
			["O_Heli_Light_02_unarmed_F",75000]
		];
	};
	
	case "civ_car":
	{
		_return = 
		[
			["B_Quadbike_01_F",2500],
			["C_Hatchback_01_F",9500],
			["C_Offroad_01_F",12500],
			["C_SUV_01_F",35000],
			["SAL_AudiCivRed",60000],
			["SAL_AudiCiv",60000],
			["SAL_AudiCivSilver",60000],
			["SAL_AudiCivBlack",60000],
			["DAR_ImpalaCiv",60000],
			["cl3_range_rover_black",60000],
			["DAR_M3CivWhite",60000],
			["DAR_TahoeCiv",60000],
			["DAR_FusionCivRed",60000],
			["DAR_ChargerCiv",60000],
			["cl3_taurus_red",100000],
			["cl3_golf_mk2_black",60000],
			["SAL_77TRANSAMCiv",60000],
			["Jonzie_96_Impala",60000],
			["cl3_insignia_red",60000],
			["C_Van_01_transport_F",40000]
		];
	};
	
	case "civ_car_luxe":
	{
		_return = 
		[

			["cl3_reventon_yellow",2500000],
			["cl3_reventon_blue",2500000],
			["cl3_reventon_red",2500000],
			["cl3_reventon_green",2500000],
			["cl3_reventon_black",2500000],
			["cl3_lamborghini_gt1_dark_green",2500000],
			["cl3_lamborghini_gt1_blue",2500000],
			["cl3_lamborghini_gt1_black",2500000],
			["cl3_lamborghini_gt1_red",2500000],
			["cl3_lamborghini_gt1_yellow",2500000],
			["cl3_458_white",1500000],
			["cl3_458_yellow",1500000],
			["cl3_458_red",1500000],
			["cl3_458_black",1500000],
			["cl3_458_blue",1500000],
			["cl3_arielatom_black",1000000],
			["cl3_arielatom_blue",1000000],
			["cl3_arielatom_white",1000000],
			["cl3_arielatom_yellow",1000000],
			["cl3_arielatom_red",1000000],
			["cl3_r8_spyder_dark_green",800000],
			["cl3_r8_spyder_blue",800000],
			["cl3_r8_spyder_black",800000],
			["cl3_r8_spyder_red",800000],
			["cl3_r8_spyder_white",800000]
		];
	};
	
	case "civ_bus":
	{
		_return = 
		[
			["CL3_bus_cl_green",40000],
			["CL3_bus_cl_grey",40000],
			["CL3_bus_cl_blue",40000]
		];
	};
	
	case "civ_truck":
	{
		_return =
		[
			["C_Van_01_box_F",60000],
			["I_Truck_02_transport_F",75000],
			["I_Truck_02_covered_F",100000],
			["B_Truck_01_transport_F",275000],
			["O_Truck_03_transport_F",200000],
			["O_Truck_03_covered_F",250000],
			["B_Truck_01_box_F",350000],
			["O_Truck_03_device_F",450000]
		];	
	};
	
	case "reb_car":
	{
		_return =
		[
			["B_Quadbike_01_F",2500],
			["B_G_Offroad_01_F",15000],
			["O_MRAP_02_F",150000],
			["B_Heli_Light_01_F",325000]
		];
		
		if(license_civ_rebel) then
		{
			_return pushBack
			["B_G_Offroad_01_armed_F",750000];
		};
	};
	
	case "cop_car":
	{
		_return =
		[
			["DAR_CVPIPolice",2500],
			["DAR_TahoePolice",15000],
			["DAR_ImpalaPoliceSlick",15000],
			["DAR_ImpalaPoliceDet",15000],
			["DAR_TaurusPolice",20000],
			["DAR_ImpalaPolice",30000]
		];
		
		if(__GETC__(life_coplevel) > 7) then
		{
			_return pushBack
			["DAR_DAR_02FirebirdSSVPolice",20000];
			_return pushBack
		    ["DAR_SWATPolice",50000];
		};
	};
	
	case "civ_air":
	{
		_return =
		[
			["B_Heli_Light_01_F",253000],
			["O_Heli_Light_02_unarmed_F",750000]
		];
	};
	
	case "civ_skate":
	{
		_return =
		[
			["cl_skatea",5000],
			["cl_skateb",5000],
			["cl_skatec",5000],
			["cl_skated",5000],
			["cl_skatee",5000],
			["cl_skatef",5000],
			["cl_skateg",5000],
			["cl_skateh",5000],
			["cl_skatei",5000],
			["cl_skatej",5000],
			["cl_skatek",5000],
			["cl_skatel",5000],
			["cl_skatem",5000],
			["cl_skaten",5000],
			["cl_skateo",5000],
			["cl_skatep",5000],
			["cl_skateq",5000],
			["cl_skater",5000],
			["cl_skates",5000],
			["cl_skatet",5000],
			["cl_skateu",5000],
			["cl_skatev",5000],
			["cl_skatex",5000],
			["cl_skatey",5000]
		];
	};
	
	case "cop_air":
	{
		
		if(__GETC__(life_coplevel) > 2) then
		{
			_return pushBack
			["B_Heli_Transport_01_F",200000];
			_return pushBack
		    ["demian2435_police_helicopter",75000];
		};
	};
	
	case "cop_airhq":
	{
		_return pushBack
		["B_Heli_Light_01_F",75000];
		if(__GETC__(life_coplevel) > 2) then
		{
			_return pushBack
			["B_Heli_Transport_01_F",200000];
			_return pushBack
			["B_MRAP_01_hmg_F",750000];
		};
	};
	
	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",5000],
			["C_Boat_Civil_01_F",22000]
		];
	};

	case "cop_ship":
	{
		_return =
		[
			["B_Boat_Transport_01_F",3000],
			["C_Boat_Civil_01_police_F",20000],
			["B_Boat_Armed_01_minigun_F",75000],
			["B_SDV_01_F",100000]
		];
	};
};

_return;
