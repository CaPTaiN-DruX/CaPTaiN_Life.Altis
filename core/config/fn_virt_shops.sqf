/*
	File: fn_virt_shops.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Config for virtual shops.
*/
private["_shop"];
_shop = _this select 0;

switch (_shop) do
{
	case "market": {["Marché",["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","boltcutter","storagesmall","storagebig","henraw","roosterraw","goatraw","sheepraw","rabbitraw"]]};
	case "rebel": {["Market Rebel",["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","boltcutter","blastingcharge"]]};
	case "gang": {["Gang Market", ["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","blastingcharge","boltcutter"]]};
	case "wongs": {["Wong's Food Cart",["turtlesoup","turtle"]]};
	case "coffee": {["Stratis Coffee Club",["coffee","donuts"]]};
	case "heroin": {["Drug Dealer",["cocainep","heroinp","marijuana","lsdp"]]};
	case "oil": {["Oil Trader",["oilp","pickaxe","fuelF"]]};
	case "fishmarket": {["Altis Fish Market",["salema","ornate","mackerel","mullet","tuna","catshark"]]};
	case "glass": {["Altis Glass Dealer",["glass"]]};
	case "iron": {["Altis Industrial Trader",["iron_r","copper_r","silver_r"]]};
	case "diamond": {["Diamond Dealer",["diamond","diamondc"]]};
	case "salt": {["Salt Dealer",["salt_r"]]};
	case "cop": {["Cop Item Shop",["donuts","coffee","spikeStrip","water","rabbit","apple","redgull","fuelF","defusekit","mur","sac","cone","barre","lightr","lightg","lighty","flecheg","fleched"]]};
	case "cement": {["Cement Dealer",["cement"]]};
	case "gold": {["Revendeur dOr",["goldbar"]]};
	case "pharmacie": {["Pharmacie d'Altis",["kitmeth"]]};
	case "meth": {["Dealer de Meth",["crystalmeth","crystalmethpur"]]};
	case "organ": {["Dealer d'Organe",["kidney"]]};
	case "tabac": {["Revendeur de Tabac",["tabacp"]]};
	case "ble": {["Boulangerie",["pain"]]}; 	
};