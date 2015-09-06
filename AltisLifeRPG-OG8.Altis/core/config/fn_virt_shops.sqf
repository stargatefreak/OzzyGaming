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
	case "market": {["Marco's Market",["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","hazmatg","storagesmall","storagebig","bottles"]]};
	case "rebel": {["Rebel Market",["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","hazmatg","ziptie","boltcutter","blastingcharge"]]};
	case "gang": {["Gang Market", ["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","hazmatg","ziptie","blastingcharge","boltcutter"]]};
	case "wongs": {["Wong's Food Cart",["turtlesoup","turtle"]]};
	case "coffee": {["DeadShot's Coffee Club",["coffee","donuts"]]};
	case "heroin": {["Drug Dealer",["cocainep","heroinp","marijuana"]]};
	case "oil": {["Oil Trader",["oilp","pickaxe","fuelF"]]};
	case "fishmarket": {["Altis Fish Market",["salema","ornate","mackerel","mullet","tuna","catshark"]]};
	case "glass": {["Altis Glass Dealer",["glass"]]};
	case "iron": {["Altis Industrial Trader",["iron_r","copper_r"]]};
	case "diamond": {["Diamond & Gold Exchange",["diamond","diamondc","gold"]]};
	case "salt": {["Salt Dealer",["salt_r"]]};
	case "cop": {["Cop Item Shop",["donuts","coffee","spikeStrip","water","rabbit","apple","redgull","fuelF","defusekit"]]};
	case "med": {["EMS Market",["coffee","water","tbacon","rabbit","apple","redgull","fuelF"]]};
	case "pmc": {["PMC Market",["coffee","water","redgull","tbacon","rabbit","apple","fuelF","lockpick","ziptie","blastingcharge","boltcutter"]]};
	case "cement": {["Cement Dealer",["cement"]]};
	case "gold": {["Gold Buyer",["goldbar"]]};
	case "bar": {["The Lounge",["bottledbeer","bottledwhiskey","cornmeal","bottles"]]};
	case "speakeasy": {["Speakeasy's",["bottledwhiskey","bottledshine","bottledbeer","moonshine"]]};
	case "organ": {["Organ Dealer",["kidney"]]}; 
	case "uranium": {["Uranium Trader",["euranium","uranium"]]};
	case "Prospector": {["Gold Dealer",["goldbarp"]]};
	case "burger": {["Red Burger",["fries","redburger","pizza","nuggets","fishchips","calzone","noodles","cake","worksburger","cola","pipsi","franta","zolo","zift"]]}; 
};