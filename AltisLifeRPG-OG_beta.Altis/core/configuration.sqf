#include <macro.h>
/*
Master Life Configuration File
This file is to setup variables for the client, there are still other configuration files in the system
*****************************
****** Backend Variables *****
*****************************
*/
life_query_time = time;
life_action_delay = time;
life_trunk_vehicle = Objnull;
life_session_completed = false;
life_garage_store = false;
life_garage_service = false;
life_session_tries = 0;
life_truck_in_progress = false;
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_clothing_filter = 0;
life_clothing_uniform = -1;
life_redgull_effect = time;
life_is_processing = false;
life_bail_paid = false;
life_impound_inuse = false;
life_action_inUse = false;
life_spikestrip = ObjNull;
life_respawn_timer = 0.5; //Scaled in minutes
life_knockout = false;
life_interrupted = false;
life_respawned = false;
life_removeWanted = false;
life_markers = false;
life_god = false;
life_frozen = false;
life_drink = 0;
OZ_medRequest = false;
//Persistent Saving
__CONST__(life_save_civ,TRUE); //Save weapons for civs?
__CONST__(life_save_yinv,TRUE); //Save Y-Inventory for players?
//Revive constant variables.
__CONST__(life_revive_cops,FALSE); //Set to false if you don't want cops to be able to revive downed players.
__CONST__(life_revive_fee,1250); //Fee for players to pay when revived.
//House Limit
__CONST__(life_houseLimit,5); //Maximum amount of houses a player can buy (TODO: Make Tiered licenses).
//Gang related stuff?
__CONST__(life_gangPrice,75000); //Price for creating a gang (They're all persistent so keep it high to avoid 345345345 gangs).
__CONST__(life_gangUpgradeBase,10000); //MASDASDASD
__CONST__(life_gangUpgradeMultipler,2.5); //BLAH
//Uniform price (0),Hat Price (1),Glasses Price (2),Vest Price (3),Backpack Price (4)
life_clothing_purchase = [-1,-1,-1,-1,-1];
/*
*****************************
****** Weight Variables *****
*****************************
*/
life_maxWeight = 24; //Identifies the max carrying weight (gets adjusted throughout game when wearing different types of clothing).
__CONST__(life_maxWeightT,24); //Static variable representing the players max carrying weight on start.
life_carryWeight = 0; //Represents the players current inventory weight (MUST START AT 0).
/*
*****************************
****** Life Variables *******
*****************************
*/
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_bank_fail = false;
life_use_atm = true;
life_is_arrested = false;
life_onDeath = false;
life_delivery_in_progress = false;
life_action_in_use = false;
life_thirst = 100;
life_hunger = 100;
__CONST__(life_ogPayday_peroid,5); //Five minutes
life_ogCash415 = 0;
__CONST__(life_impound_car,350);
__CONST__(life_impound_boat,250);
__CONST__(life_impound_air,850);
__CONST__(life_impound_armor,800);
life_istazed = false;
life_my_gang = ObjNull;
life_vehicles = [];
bank_robber = [];
switch (playerSide) do
{
case west:
{
life_ogBank415 = 60000; //Starting Bank Money
life_ogPayday415 = 1400; //Paycheck Amount
};
case civilian:
{
life_ogBank415 = 60000; //Starting Bank Money
life_ogPayday415 = 1000; //Paycheck Amount
};
case independent:
{
life_ogBank415 = 60000;
life_ogPayday415 = 5000;
};
};
/*
Master Array of items?
*/
life_vShop_rentalOnly = ["B_MRAP_01_hmg_F","B_G_Offroad_01_armed_F"];
__CONST__(life_vShop_rentalOnly,life_vShop_rentalOnly); //These vehicles can never be bought and only 'rented'. Used as a balancer & money sink. If you want your server to be chaotic then fine.. Remove it..
life_inv_items =
[
"life_inv_oilu",
"life_inv_oilp",
"life_inv_heroinu",
"life_inv_heroinp",
"life_inv_cannabis",
"life_inv_marijuana",
"life_inv_apple",
"life_inv_rabbit",
"life_inv_salema",
"life_inv_ornate",
"life_inv_mackerel",
"life_inv_tuna",
"life_inv_mullet",
"life_inv_catshark",
"life_inv_hazmat_gloves",
"life_inv_turtle",
"life_inv_fishingpoles",
"life_inv_ziptie",
"life_inv_water",
"life_inv_donuts",
"life_inv_turtlesoup",
"life_inv_coffee",
"life_inv_kidney",
"life_inv_fuelF",
"life_inv_fuelE",
"life_inv_pickaxe",
"life_inv_copperore",
"life_inv_ironore",
"life_inv_ironr",
"life_inv_goldr",
"life_inv_goldw",
"life_inv_goldore",
"life_inv_gold",
"life_inv_copperr",
"life_inv_sand",
"life_inv_salt",
"life_inv_saltr",
"life_inv_glass",
"life_inv_tbacon",
"life_inv_lockpick",
"life_inv_redgull",
"life_inv_peach",
"life_inv_diamond",
"life_inv_coke",
"life_inv_cokep",
"life_inv_diamondr",
"life_inv_spikeStrip",
"life_inv_rock",
"life_inv_cement",
"life_inv_goldbar",
"life_inv_goldbarp",
"life_inv_blastingcharge",
"life_inv_boltcutter",
"life_inv_defusekit",
"life_inv_storagesmall",
"life_inv_storagebig",
"life_inv_cornmeal",
"life_inv_beerp",
"life_inv_whiskey",
"life_inv_rye",
"life_inv_hops",
"life_inv_yeast",
"life_inv_bottles",
"life_inv_bottledshine",
"life_inv_bottledbeer",
"life_inv_bottledwhiskey",
"life_inv_moonshine",
"life_inv_uranium",
"life_inv_euranium",
"life_inv_mash",
"life_inv_fries",
"life_inv_redburger",
"life_inv_pizza",
"life_inv_nuggets",
"life_inv_fishchips",
"life_inv_calzone",
"life_inv_noodles",
"life_inv_cake",
"life_inv_worksburger",
"life_inv_cola",
"life_inv_pipsi",
"life_inv_franta",
"life_inv_zolo",
"life_inv_zift"
];
//Setup variable inv vars.
{missionNamespace setVariable[_x,0];} foreach life_inv_items;
//Licenses [license var, civ/cop]
life_licenses =
[
["license_cop_air","cop"],
["license_cop_swat","cop"],
["license_cop_cg","cop"],
["license_civ_driver","civ"],
["license_civ_air","civ"],
["license_civ_heroin","civ"],
["license_civ_marijuana","civ"],
["license_civ_gang","civ"],
["license_civ_boat","civ"],
["license_civ_oil","civ"],
["license_civ_gold","civ"],
["license_civ_dive","civ"],
["license_civ_truck","civ"],
["license_civ_gun","civ"],
["license_civ_rebel","civ"],
["license_civ_coke","civ"],
["license_civ_diamond","civ"],
["license_civ_copper","civ"],
["license_civ_iron","civ"],
["license_civ_sand","civ"],
["license_civ_salt","civ"],
["license_civ_cement","civ"],
["license_med_air","med"],
["license_civ_home","civ"],
["license_civ_stiller","civ"],
["license_civ_liquor","civ"],
["license_civ_uranium", "civ"],
["license_civ_bottler","civ"],
["license_civ_goldbar","civ"]
];
//Setup License Variables
{missionNamespace setVariable[(_x select 0),false];} foreach life_licenses;
life_dp_points = ["dp_1","dp_2","dp_3","dp_4","dp_5","dp_6","dp_7","dp_8","dp_9","dp_10","dp_11","dp_12","dp_13","dp_14","dp_15","dp_15","dp_16","dp_17","dp_18","dp_19","dp_20","dp_21","dp_22","dp_23","dp_24","dp_25"];
life_truck_points = ["ABDERA","ZAROS","KAVALA","AGGELOCHORI","NEOCHORI","LAKKA","CHALKEIA","CHARKIA","PYRGOS","PAROS","SOFIA","SELAKANO"];
//[shortVar,reward]
life_illegal_items = [["heroinu",1200],["heroinp",2500],["cocaine",1500],["cocainep",3500],["marijuana",2000],["turtle",3000],["blastingcharge",10000],["boltcutter",500],["moonshine",9000],["bottledshine",11000],["mash",5000],["kidney",5000]];
/*
Sell / buy arrays
*/
sell_array =
[
["apple",50],
["heroinu",1850],
["heroinp",2650],
["salema",45],
["ornate",40],
["mackerel",175],
["tuna",700],
["mullet",250],
["catshark",300],
["rabbit",65],
["oilp",3200],
["turtle",3000],
["kidney",50000],
["water",5],
["coffee",5],
["ziptie",2],
["turtlesoup",1000],
["donuts",60],
["marijuana",2350],
["tbacon",25],
["lockpick",75],
["pickaxe",750],
["redgull",200],
["peach",55],
["cocaine",3000],
["cocainep",5000],
["hazmatg",1000],
["diamond",750],
["diamondc",2000],
["iron_r",3200],
["gold",12000],
["copper_r",1500],
["salt_r",1650],
["glass",1450],
["fuelF",500],
["spikeStrip",1200],
["cement",1950],
["goldbar",95000],
["goldbarp",25000],
["uranium",3500],
["euranium",4800],
["bottledshine",15000],
["bottledwhiskey",11000],
["bottledbeer",10000],
["moonshine",7000],
["whiskey",5000],
["beerp",4500],
["mash",2500],
["rye",2000],
["hops",1800],
["yeast",2000],
["cornmeal",200],
["bottles",75],
["fries",30],
["redburger",80],
["pizza",80],
["nuggets",35],
["fishchips",30],
["calzone",15],
["cake",35],
["worksburger",140],
["cola",5],
["pipsi",5],
["franta",5],
["zolo",5],
["zift",5]
];
__CONST__(sell_array,sell_array);
buy_array =
[
["apple",65],
["rabbit",75],
["salema",55],
["ornate",50],
["mackerel",200],
["tuna",900],
["mullet",300],
["catshark",350],
["water",10],
["turtle",4000],
["turtlesoup",2500],
["donuts",120],
["coffee",10],
["kidney",75000],
["tbacon",75],
["hazmatg",2000],
["lockpick",150],
["pickaxe",1200],
["redgull",1500],
["fuelF",850],
["ziptie",100],
["peach",68],
["spikeStrip",2500],
["blastingcharge",35000],
["boltcutter",7500],
["defusekit",2500],
["storagesmall",75000],
["storagebig",150000],
["bottledshine",18500],
["bottledwhiskey",14000],
["bottledbeer",12500],
["moonshine",7500],
["whiskey",5500],
["beerp",5000],
["cornmeal",500],
["mash",2500],
["bottles",100],
["fries",50],
["redburger",120],
["pizza",120],
["nuggets",50],
["fishchips",60],
["calzone",40],
["cake",50],
["worksburger",200],
["cola",25],
["pipsi",25],
["franta",25],
["zolo",25],
["zift",25]
];
__CONST__(buy_array,buy_array);
life_weapon_shop_array =
[
["arifle_SDAR_F",8000],
["hgun_P07_snds_F",650],
["hgun_P07_F",1500],
["ItemGPS",45],
["ToolKit",75],
["FirstAidKit",65],
["Medikit",450],
["NVGoggles",980],
["16Rnd_9x21_Mag",15],
["20Rnd_556x45_UW_mag",35],
["ItemMap",35],
["ItemCompass",25],
["Chemlight_blue",50],
["Chemlight_yellow",50],
["Chemlight_green",50],
["Chemlight_red",50],
["hgun_Rook40_F",500],
["arifle_Katiba_F",12000],
["30Rnd_556x45_Stanag",65],
["20Rnd_762x51_Mag",85],
["30Rnd_65x39_caseless_green",50],
["DemoCharge_Remote_Mag",7500],
["SLAMDirectionalMine_Wire_Mag",2575],
["optic_ACO_grn",250],
["acc_flashlight",100],
["srifle_EBR_F",20000],
["arifle_TRG21_F",14000],
["optic_MRCO",5000],
["optic_Aco",850],
["arifle_MX_F",7500],
["arifle_MXC_F",5000],
["arifle_MXM_F",8500],
["MineDetector",500],
["optic_Holosight",275],
["acc_pointer_IR",175],
["arifle_TRG20_F",14000],
["arifle_TRG21_F",14000],
["SMG_01_F",1500],
["arifle_Mk20C_F",20000],
["arifle_Mk20C_plain_F",20000],
["30Rnd_45ACP_Mag_SMG_01",60],
["srifle_DMR_01_F",20000],
["SMG_02_F",14000],
["hgun_PDW2000_F",5000],
["srifle_LRR_F",240000],
["LMG_Mk200_F",200000],
["30Rnd_9x21_Mag",30]
];
__CONST__(life_weapon_shop_array,life_weapon_shop_array);
life_garage_prices =
[
["B_Quadbike_01_F",63],
["C_Hatchback_01_F",238],
["C_Offroad_01_F",400],
["B_G_Offroad_01_F",400],
["C_SUV_01_F",700],
["C_Van_01_transport_F",875],
["C_Kart_01_Blu_F",375],
["C_Kart_01_Fuel_F",375],
["C_Kart_01_Red_F",375],
["C_Kart_01_Vrana_F",375],
["C_Rubberboat",125],
["C_Boat_Civil_01_F",550],
["B_Boat_Transport_01_F",550],
["B_SDV_01_F",125],
["C_Van_01_box_F",2100],
["I_Truck_02_transport_F",5000],
["I_Truck_02_covered_F",6250],
["B_Truck_01_transport_F",10000],
["O_Truck_03_transport_F",7875],
["O_Truck_03_covered_F",9500],
["B_Truck_01_box_F",19000],
["B_Truck_01_covered_F",14500],
["O_Truck_03_device_F",35000],
["B_MRAP_01_F",3500],
["C_Boat_Civil_01_police_F",500],
["I_Truck_02_medical_F",1200],
["O_Truck_03_medical_F",2000],
["B_Truck_01_medical_F",2400],
["O_G_Offroad_01_F",375],
["O_MRAP_02_F",18750],
["I_MRAP_03_F",100000],
["C_Hatchback_01_sport_F",2500],
["I_Heli_light_03_unarmed_F",100000],
["I_Heli_Transport_02_F",100000],
["B_Heli_Light_01_F",10625],
["O_Heli_Light_02_unarmed_F",25000],
["B_Heli_Transport_03_unarmed_F",91750],
["O_Heli_Transport_04_F",61440],
["O_Heli_Transport_04_covered_F",62259]
];
__CONST__(life_garage_prices,life_garage_prices);
life_garage_sell =
[
["B_Quadbike_01_F",750],
["C_Hatchback_01_F",2850],
["C_Offroad_01_F",4800],
["B_G_Offroad_01_F",400],
["C_SUV_01_F",8400],
["C_Van_01_transport_F",10500],
["C_Kart_01_Blu_F",4500],
["C_Kart_01_Fuel_F",4500],
["C_Kart_01_Red_F",4500],
["C_Kart_01_Vrana_F",4500],
["C_Rubberboat",1500],
["C_Boat_Civil_01_F",6600],
["B_Boat_Transport_01_F",6600],
["B_SDV_01_F",1500],
["C_Van_01_box_F",25200],
["I_Truck_02_transport_F",60000],
["I_Truck_02_covered_F",75000],
["B_Truck_01_transport_F",120000],
["O_Truck_03_transport_F",94500],
["O_Truck_03_covered_F",114000],
["B_Truck_01_box_F",228000],
["B_Truck_01_covered_F",174000],
["O_Truck_03_device_F",420000],
["B_MRAP_01_F",35000],
["C_Boat_Civil_01_police_F",1000],
["I_Truck_02_medical_F",12000],
["O_Truck_03_medical_F",20000],
["B_Truck_01_medical_F",24000],
["O_G_Offroad_01_F",7000],
["O_MRAP_02_F",225000],
["I_MRAP_03_F",1200000],
["C_Hatchback_01_sport_F",30000],
["I_Heli_light_03_unarmed_F",1200000],
["I_Heli_Transport_02_F",1200000],
["B_Heli_Light_01_F",127500],
["C_Heli_Light_01_civil_F", 100000],
["O_Heli_Light_02_unarmed_F",300000],
["B_Heli_Transport_03_unarmed_F",917504],
["O_Heli_Transport_04_F",614400],
["O_Heli_Transport_04_covered_F",622592]
];
__CONST__(life_garage_sell,life_garage_sell);
typeHouses =
[
"Land_i_House_Big_02_V1_F",
"Land_i_House_Big_02_V2_F",
"Land_i_House_Big_02_V3_F",
"Land_i_House_Big_01_V1_F",
"Land_i_House_Big_01_V2_F",
"Land_i_House_Big_01_V3_F",
"Land_i_Garage_V1_F",
"Land_i_Garage_V2_F",
"Land_i_House_Small_02_V1_F",
"Land_i_House_Small_02_V2_F",
"Land_i_House_Small_02_V3_F",
"Land_i_House_Small_03_V1_F",
"Land_i_Stone_HouseSmall_V2_F",
"Land_i_Stone_HouseSmall_V1_F",
"Land_i_Stone_HouseSmall_V3_F"
];

typeHeli = 
[
"I_Heli_light_03_unarmed_F",
"I_Heli_Transport_02_F",
"B_Heli_Light_01_F",
"O_Heli_Light_02_unarmed_F",
"B_Heli_Transport_03_unarmed_F",
"O_Heli_Transport_04_F",
"O_Heli_Transport_04_covered_F"
];
__CONST__(typeHeli,typeHeli);
