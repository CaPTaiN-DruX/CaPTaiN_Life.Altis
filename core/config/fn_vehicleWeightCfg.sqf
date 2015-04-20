/*
	File: fn_vehicleWeightCfg.sqf
	Author: Bryan "Tonic" Boardwine
	Véhicules Moddés Add By CaPTaiN
	Description:
	Master configuration for vehicle weight.
*/
private["_className"];
_className = [_this,0,"",[""]] call BIS_fnc_param;

switch (_className) do
{
	case "C_Offroad_01_F": {65};
	case "B_G_Offroad_01_F": {65};
	case "B_Quadbike_01_F": {25};
	case "I_Truck_02_covered_F": {250};
	case "I_Truck_02_transport_F": {200};
	case "C_Hatchback_01_F": {40};
	case "C_Hatchback_01_sport_F": {45};
	case "C_SUV_01_F": {50};
	case "C_Van_01_transport_F": {100};
	case "I_G_Van_01_transport_F": {100};
	case "C_Van_01_box_F": {150};
	case "C_Boat_Civil_01_F": {85};
	case "C_Boat_Civil_01_police_F": {85};
	case "C_Boat_Civil_01_rescue_F": {85};
	case "B_Truck_01_box_F": {450};
	case "B_Truck_01_transport_F": {325};
	case "B_MRAP_01_F": {65};
	case "O_MRAP_02_F": {60};
	case "I_MRAP_03_F": {58};
	case "B_Heli_Light_01_F": {90};
	case "O_Heli_Light_02_unarmed_F": {210};
	case "I_Heli_Transport_02_F": {375};
	case "C_Rubberboat": {45};
	case "O_Boat_Armed_01_hmg_F": {175};
	case "B_Boat_Armed_01_minigun_F": {175};
	case "I_Boat_Armed_01_minigun_F": {175};
	case "B_G_Boat_Transport_01_F": {45};
	case "B_Boat_Transport_01_F": {45};
	case "O_Truck_03_transport_F": {285};
	case "O_Truck_03_covered_F": {300};
	case "O_Truck_03_device_F": {350};
	case "Land_CargoBox_V1_F": {5000};
	case "Box_IND_Grenades_F": {350};
	case "B_supplyCrate_F": {700};
	case "cl3_dbs_volante_blue": {20};
	case "cl3_lamborghini_gt1_dark_green": {20};
	case "cl3_lamborghini_gt1_blue": {20};
	case "cl3_lamborghini_gt1_black": {20};
	case "cl3_lamborghini_gt1_red": {20};
	case "cl3_lamborghini_gt1_yellow": {20};
	case "cl3_reventon_blue": {30};
	case "cl3_reventon_black": {30};
	case "cl3_reventon_red": {30};
	case "cl3_reventon_green": {30};
	case "cl3_reventon_yellow": {30};
	case "cl3_arielatom_black": {20};
	case "cl3_arielatom_blue": {20};
	case "cl3_arielatom_white": {20};
	case "cl3_arielatom_yellow": {20};
	case "cl3_arielatom_red": {20};
	case "cl3_r8_spyder_dark_green": {30};
	case "cl3_r8_spyder_blue": {30};
	case "cl3_r8_spyder_black": {30};
	case "cl3_r8_spyder_red": {30};
	case "cl3_r8_spyder_white": {30};
	case "cl3_458_blue": {30};
	case "cl3_458_black": {30};
	case "cl3_458_red": {30};
	case "cl3_458_yellow": {30};
	case "cl3_458_white": {30};
	case "cl3_murcielago_blue": {30};
	case "cl3_murcielago_black": {30};
	case "cl3_murcielago_yellow": {30};
	case "cl3_murcielago_red": {30};
	case "cl3_murcielago_green": {30};
	case "cl3_dbs_volante_blue": {20};
	case "cl3_dbs_volante_black": {20};
	case "cl3_dbs_volante_red": {20};
	case "cl3_dbs_volante_white": {20};
	case "cl3_dbs_volante_yellow": {20};
	case "cl3_e60_m5_blue": {30};
	case "cl3_e60_m5_black": {30};
	case "cl3_e60_m5_yellow": {30};
	case "cl3_e60_m5_red": {30};
	case "cl3_e60_m5_orange": {30};
	case "cl3_z4_2008_blue": {40};
	case "cl3_z4_2008_black": {40};
	case "cl3_z4_2008_red": {40};
	case "cl3_z4_2008_white": {40};
	case "cl3_z4_2008_yellow": {40};
	case "cl3_taurus_yellow": {80};
	case "cl3_taurus_white": {80};
	case "cl3_taurus_red": {80};
	case "cl3_taurus_blue": {80};
	case "cl3_taurus_black": {80};
	case "cl3_civic_vti_white": {50};
	case "cl3_e63_amg_blue": {50};
	case "cl3_e63_amg_black": {50};
	case "cl3_e63_amg_red": {50};
	case "cl3_e63_amg_yellow": {50};
	case "cl3_e63_amg_orange": {50};
	case "cl3_carrera_gt_black": {30}; 
	case "cl3_carrera_gt_blue": {30};
	case "cl3_carrera_gt_orange": {30};
	case "cl3_carrera_gt_white": {30};
	case "cl3_carrera_gt_yellow": {30};
	case "cl3_s1203_blue": {50};
	case "cl3_s1203_ambulance": {50};
	case "cl3_civic_vti_yellow": {50};
	case "cl3_civic_vti_blue": {50};
	case "cl3_civic_vti_black": {50};
	case "cl3_civic_vti_red": {50};
	case "cl3_range_rover_black": {60};
	case "cl3_range_rover_blue": {60};
	case "cl3_range_rover_red": {60}; 
	case "cl3_range_rover_white": {60};
	case "cl3_range_rover_yellow": {60}; 
	case "cl3_insignia_black": {60};
	case "cl3_insignia_blue": {60};
	case "cl3_insignia_red": {60}; 
	case "cl3_insignia_white": {60};
	case "cl3_insignia_yellow": {60};
	case "cl3_golf_mk2_blue": {60};
	case "cl3_golf_mk2_black": {60};
	case "cl3_golf_mk2_red": {50}; 
	case "cl3_golf_mk2_white": {50}; 
	case "cl3_golf_mk2_yellow": {50}; 
	case "cl3_polo_gti_red": {50}; 
	case "cl3_polo_gti_white": {50}; 
	case "cl3_polo_gti_yellow": {50}; 
	case "cl3_polo_gti_blue": {50}; 
	case "cl3_polo_gti_black": {50};
	case "DAR_ChargerPoliceStateSlick": {40};
	case "DAR_ChargerCiv": {50};
	case "DAR_ChargerPolice": {40};
	case "SAL_IROCCivBlack": {40};
	case "SAL_IROCCivBlue": {40};		
	case "SAL_IROCCivRed": {40};
	case "SAL_IROCCivSilver": {40};
	case "SAL_IROCCiv": {40};
	case "Jonzie_96_Impala": {40};
	case "Jonzie_96_Impala_Unmarked": {40};
	case "DAR_TahoeCivBlack": {40};
	case "DAR_TahoeCivBlue": {40};
	case "DAR_TahoeCivRed": {40};
	case "DAR_TahoeCivSilver": {40};
	case "DAR_TahoeCiv": {40};
	case "DAR_M3CivBlack": {40};
	case "DAR_M3CivGrey": {40};
	case "DAR_M3CivWhite": {40};
	case "DAR_ChallengerCivBlack": {40};
	case "DAR_ChallengerCivOrange": {40};
	case "DAR_ChallengerCivRed": {40};
	case "DAR_ChallengerCivWhite": {40};
	case "DAR_FusionCivBlack": {40};
	case "DAR_FusionCivBlue": {40};
	case "DAR_FusionCivRed": {40};
	case "DAR_FusionCiv": {40};
	case "SAL_AudiCivBlack": {40};
	case "SAL_AudiCivRed": {40};
	case "SAL_AudiCivSilver": {40};
	case "SAL_AudiCiv": {40};
	case "DAR_Charger_Blue": {40};
	case "DAR_TaurusCivBlack": {40};
	case "DAR_TaurusCivBlue": {40};
	case "DAR_TaurusCiv": {40};
	case "DAR_ImpalaCivE": {40};
	case "DAR_ImpalaCivA": {40};
	case "DAR_ImpalaCivC": {40};
	case "DAR_ImpalaCivB": {40};
	case "DAR_ImpalaCivD": {40};
	case "DAR_ImpalaCiv": {40};
	case "DAR_ImpalaPoliceDet": {40};
	case "DAR_ImpalaPoliceSlick": {40};
	case "DAR_ImpalaPolice": {40};
	case "DAR_TahoePolice": {40};
	case "SAL_77TRANSAMCiv": {40};
	case "DAR_CVPIAux": {40};
	case "DAR_CVPISlick": {40};
	case "DAR_CVPIPolice": {40};
	case "DAR_TahoePoliceDet": {40};
	case "DAR_ExplorerPoliceStealth": {40};
	case "DAR_ExplorerPolice": {40};
	case "DAR_ChargerPoliceState": {40};
	case "DAR_TaurusPoliceStateSlick": {40};
	case "DAR_TaurusPoliceState": {40};
	case "DAR_SWATPolice": {40};
	case "DAR_DAR_02FirebirdSSVPolice": {40};
	case "DAR_TaurusPolice": {40};
	
	default {-1};
};