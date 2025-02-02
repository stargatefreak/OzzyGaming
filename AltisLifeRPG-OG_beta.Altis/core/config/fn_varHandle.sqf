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
			case "money": {"life_ogCash415"};
			case "pickaxe": {"life_inv_pickaxe"};
			case "copperore": {"life_inv_copperore"};
			case "ironore": {"life_inv_ironore"};
			case "goldore": {"life_inv_goldore"};
			case "gold": {"life_inv_gold"};
			case "gold_r": {"life_inv_goldr"};
			case "gold_w": {"life_inv_goldw"};
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
			case "rye": {"life_inv_rye"};
			case "hops": {"life_inv_hops"};
			case "yeast": {"life_inv_yeast"};
			case "cornmeal": {"life_inv_cornmeal"};
			case "moonshine": {"life_inv_moonshine"};
			case "bottles": {"life_inv_bottles"};
			case "bottledshine": {"life_inv_bottledshine"};
			case "bottledbeer": {"life_inv_bottledbeer"};
			case "bottledwhiskey": {"life_inv_bottledwhiskey"};
			case "beerp": {"life_inv_beerp"};
			case "whiskey": {"life_inv_whiskey"};
			case "mash": {"life_inv_mash"};
			case "uranium": {"life_inv_uranium"};
			case "euranium": {"life_inv_euranium"};
			case "hazmatg": {"life_inv_hazmat_gloves"};
			case "kidney": {"life_inv_kidney"};
			case "ziptie": {"life_inv_ziptie"};
			case "goldbarp": {"life_inv_goldbarp"};
			
			//Fast Food
			case "fries": {"life_inv_fries"};
			case "redburger": {"life_inv_redburger"};
			case "pizza": {"life_inv_pizza"};
			case "nuggets": {"life_inv_nuggets"};
			case "fishchips": {"life_inv_fishchips"}; 
			case "calzone": {"life_inv_calzone"};
			case "noodles": {"life_inv_noodles"};
			case "cake": {"life_inv_cake"};
			case "worksburger": {"life_inv_worksburger"};
			case "cola": {"life_inv_cola"};
			case "pipsi": {"life_inv_pipsi"};
			case "franta": {"life_inv_franta"};
			case "zolo": {"life_inv_zolo"};
			case "zift": {"life_inv_zift"};
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
			case "life_ogCash415": {"money"};
			case "life_inv_pickaxe": {"pickaxe"};
			case "life_inv_copperore": {"copperore"};
			case "life_inv_ironore": {"ironore"};
			case "life_inv_ironr": {"iron_r"};
			case "life_inv_goldore": {"goldore"};
			case "life_inv_goldr": {"gold_r"};
			case "life_inv_goldw": {"gold_w"};
			case "life_inv_gold": {"gold"};
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
			case "life_inv_goldbarp": {"goldbarp"};	
			case "life_inv_blastingcharge": {"blastingcharge"};
			case "life_inv_boltcutter": {"boltcutter"};
			case "life_inv_defusekit": {"defusekit"};
			case "life_inv_storagesmall": {"storagesmall"};
			case "life_inv_storagebig": {"storagebig"};
			case "life_inv_mash": {"mash"};
			case "life_inv_yeast": {"yeast"};
			case "life_inv_rye": {"rye"};
			case "life_inv_hops": {"hops"};
			case "life_inv_whiskey": {"whiskey"};
			case "life_inv_beerp": {"beerp"};
			case "life_inv_bottles": {"bottles"};
			case "life_inv_cornmeal": {"cornmeal"};
			case "life_inv_bottledwhiskey": {"bottledwhiskey"};
			case "life_inv_bottledbeer": {"bottledbeer"};
			case "life_inv_bottledshine": {"bottledshine"};
			case "life_inv_moonshine": {"moonshine"};
			case "life_inv_uranium": {"uranium"};
			case "life_inv_euranium": {"euranium"};
			case "life_inv_kidney": {"kidney"}; 
			case "life_inv_ziptie": {"ziptie"};
			case "life_inv_hazmat_gloves": {"hazmatg"};
			
			//Fast Food
			case "life_inv_fries": {"fries"};
			case "life_inv_redburger": {"redburger"};
			case "life_inv_pizza": {"pizza"};
			case "life_inv_nuggets": {"nuggets"};
			case "life_inv_fishchips": {"fishchips"}; 
			case "life_inv_calzone": {"calzone"};
			case "life_inv_noodles": {"noodles"};
			case "life_inv_cake": {"cake"};
			case "life_inv_worksburger": {"worksburger"};
			case "life_inv_cola": {"cola"};
			case "life_inv_pipsi": {"pipsi"};
			case "life_inv_franta": {"franta"};
			case "life_inv_zolo": {"zolo"};
			case "life_inv_zift": {"zift"};
		};
	};
};
