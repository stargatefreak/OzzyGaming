/*
	File: fn_initSpy.sqf
	
	Description:
	Does some things that I made over-complicated / un-needed but blah.
	Will eventually include server-side checks but it's blah at this point.
	
	Will also become a standalone system which is why it's setup like this.
*/
private["_binConfigPatches","_cfgPatches","_endM"];
if(isServer && !hasInterface) exitWith {}; //Server doesn't need to know.
#define __CONST__(var1,var2) var1 = compileFinal (if(typeName var2 == "STRING") then {var2} else {str(var2)})
#define __GETC__(var) (call var)

__CONST__(W_O_O_K_I_E_ANTI_ANTI_HAX,"No");
__CONST__(W_O_O_K_I_E_FUD_ANTI_ANTI_HAX,"No");
__CONST__(E_X_T_A_S_Y_ANTI_ANTI_HAX,"CopyPasta");
__CONST__(E_X_T_A_S_Y_Pro_RE,"Iswhat");
__CONST__(E_X_T_A_S_Y_Car_RE,"Youdo");
__CONST__(DO_NUKE,"LOL");
__CONST__(JxMxE_spunkveh,"Blah");
__CONST__(JxMxE_spunkveh2,"Blah");
__CONST__(JxMxE_spunkair,"Blah");
__CONST__(JJJJ_MMMM___EEEEEEE_LLYYSSTTIICCC_SHIT_RE,"No");
__CONST__(JJJJ_MMMM___EEEEEEE_LLYYSSTTIICCC_SHIT_RE_OLD,"No");
__CONST__(JJJJ_MMMM___EEEEEEE_SPAWN_VEH,"No");
__CONST__(JJJJ_MMMM___EEEEEEE_SPAWN_WEAPON,"No");

/*
	Compile our list of allowed addon patches, by default this DOES NOT ALLOW ANY ADDONS.
	
	If you want to white-list addons such as JSRS or Blastcore you need to start a test instance (Host locally and not the mission) and first fill the SPY_cfg_patchList array, once you executed it (Filled it)
	Run the following code and it will copy the list of addons / patches not in the list to your clipboard (Ctrl + V) and then add it to the array.
	
	_cfgPatches = [];
	_binConfigPatches = configFile >> "CfgPatches";
	for "_i" from 0 to count (_binConfigPatches)-1 do {
		_patchEntry = _binConfigPatches select _i;
		if(isClass _patchEntry) then {
			if(!((configName _patchEntry) in SPY_cfg_patchList)) then {
				_cfgPatches set[count _cfgPatches,(configName _patchEntry)];
			};
		};
	};

	copyToClipboard str(_cfgPatches);
	
	i.e
	["cba_xeh","Extended_EventHandlers","CBA_Extended_EventHandlers","JSRS_Environment","WarFXPE","cba_common","cba_events","cba_hashes","cba_network","cba_strings","cba_ui","cba_vectors","JSRS2_120mm_Cannon","JSRS2_127","JSRS2_155mm_AMOS",
	"JSRS2_230mm_Titan","JSRS2_30mm_Cannon","JSRS2_35mm_Autocannon","JSRS2_4Five45","JSRS2_ACPC","JSRS2_Autocannon","JSRS2_Bullethits","JSRS2_DAGR","JSRS2_DAR","JSRS2_EBR","JSRS2_Explosions","JSRS2_Explosives","JSRS2_Filters","JSRS2_FS2000",
	"JSRS2_Gatling","JSRS2_GMG20","JSRS2_GMG40","JSRS2_Khaybar","JSRS2_LMGRCWS","JSRS2_M134","JSRS2_M200","JSRS2_M320R","JSRS2_M6","JSRS2_Minigun","JSRS2_MX","JSRS2_NLAW","JSRS2_P07","JSRS2_PDW","JSRS2_Rahim","JSRS2_Rook40","JSRS2_RPG32",
	"JSRS2_Scorpian","JSRS2_SDAR","JSRS2_Skalpel_ATGM","JSRS2_Skyfire","JSRS2_Sonic_Cracks","JSRS2_Titan","JSRS2_TRG20","JSRS2_Vector","JSRS2_Veh_Titan","JSRS2_Zafir","JSRS2_Zubr45","Blastcore_VEP","cba_ai","cba_arrays","cba_diagnostic","cba_help",
	"cba_ui_helper","cba_versioning","JSRS2_Movement","JSRS2_Silencers","cba_main","cba_main_a3","JSRS2_2S9_Sorcher","JSRS2_AFV4_Gorgon","JSRS2_AH99_Blackfoot","JSRS2_AH9_Pawnee","JSRS2_AMV7_Marshal","JSRS2_BTRK_Kamysh","JSRS2_CH49_Mohawk","JSRS2_Distance",
	"JSRS2_FighterPlane3","JSRS2_FV720_Mora","JSRS2_Hunter","JSRS2_Ifrit","JSRS2_IFV6a_Cheetah","JSRS2_IFV6c_Panther","JSRS2_M2A1_Slammer","JSRS2_M4_Scorcher","JSRS2_M5_Sandstorm","JSRS2_MBT52_Kuma","JSRS2_Mi48_Kajman","JSRS2_MSE3_Marid","JSRS2_Offroad",
	"JSRS2_Po30_Orca","JSRS2_Strider","JSRS2_SUV","JSRS2_T100_Varsuk","JSRS2_Truck1","JSRS2_Truck2","JSRS2_UAV_1","JSRS2_UH80_GhostHawk","JSRS2_Van","JSRS2_WY55_Hellcat","JSRS2_ZSU39_Tigris","cba_xeh_a3"]
*/
	
_patchList = 
[
"life_server","CAData","A3_Air_F", "A3_Air_F_Heli_Light_01", "A3_Air_F_Heli_Light_02", "A3_Air_F_Beta", "A3_Air_F_Beta_Heli_Attack_01", "A3_Air_F_Beta_Heli_Attack_02", "A3_Air_F_Beta_Heli_Transport_01", 
"A3_Air_F_Beta_Heli_Transport_02", "A3_Air_F_Beta_Parachute_01", "A3_Air_F_Beta_Parachute_02", "A3_Air_F_Gamma_Plane_Fighter_03", "A3_Animals_F_Animconfig", "A3_Animals_F", "A3_Animals_F_Fishes", "A3_Animals_F_Kestrel", 
"A3_Animals_F_Rabbit", "A3_Animals_F_Seagull", "A3_Animals_F_Snakes", "A3_Animals_F_Turtle", "A3_Animals_F_Dog", "A3_Animals_F_Goat", "A3_Animals_F_Chicken", "A3_Animals_F_Sheep", "A3_Anims_F", "A3_Anims_F_Config_Sdr", 
"A3_Armor_F", "A3_Armor_F_Panther", "A3_Armor_F_Beta_APC_Tracked_02", "A3_Armor_F_AMV", "A3_Armor_F_Marid", "A3_Armor_F_Beta", "A3_Armor_F_APC_Wheeled_03", "A3_Armor_F_Slammer", "A3_Armor_F_T100K", "A3_BaseConfig_F", 
"A3_Boat_F_Boat_Armed_01", "A3_Boat_F_Boat_Transport_01", "A3_Boat_F", "A3_Boat_F_Beta_Boat_Armed_01", "A3_Boat_F_Beta_Boat_Transport_01", "A3_Boat_F_Sdv_01", "A3_Boat_F_Civilian_Boat", "A3_Boat_F_Trawler", 
"A3_Boat_F_Gamma_Boat_Transport_01", "A3_Cargoposes_F", "A3_Data_F", "A3_Data_F_Particleeffects", "A3_Air_F_Gamma_Uav_01", "A3_Air_F_Gamma_Uav_02", "A3_Uav_F_Characters_F_Gamma", "A3_Soft_F_Crusher_Ugv", 
"A3_Uav_F_Weapons_F_Gamma_Ammoboxes", "A3_Weapons_F_Gamma_Items", "A3_Dubbing_Radio_F", "A3_Editor_F", "A3_Functions_F", "A3_Characters_F_Blufor", "A3_Characters_F", "A3_Characters_F_Civil", "A3_Characters_F_Common", 
"A3_Characters_F_Heads", "A3_Characters_F_Opfor", "A3_Characters_F_Proxies", "A3_Characters_F_Beta", "A3_Characters_F_Indep", "A3_Characters_F_Gamma", "A3_Language_F", "A3_Language_F_Beta", "A3_Language_F_Gamma", 
"A3_Languagemissions_F", "A3_Languagemissions_F_Beta", "A3_Languagemissions_F_Gamma", "A3_Map_Altis", "A3_Map_Altis_Scenes", "A3_Map_Data", "A3_Map_Stratis", "A3_Map_Stratis_Scenes", "A3_Misc_F", "A3_Misc_F_Helpers", 
"A3_Missions_F", "A3_Missions_F_Beta", "A3_Missions_F_Gamma", "A3_Modules_F", "A3_Modules_F_Dyno", "A3_Modules_F_Effects", "A3_Modules_F_Events", "A3_Modules_F_Groupmodifiers", "A3_Modules_F_Hc", "A3_Modules_F_Intel", 
"A3_Modules_F_Livefeed", "A3_Modules_F_Marta", "A3_Modules_F_Misc", "A3_Modules_F_Multiplayer", "A3_Modules_F_Objectmodifiers", "A3_Modules_F_Sites", "A3_Modules_F_Skirmish", "A3_Modules_F_Strategicmap", 
"A3_Modules_F_Supports", "A3_Modules_F_Uav", "A3_Modules_F_Beta", "A3_Modules_F_Beta_Firingdrills", "A3_Music_F", "A3_Plants_F_Bush", "A3_Roads_F", "A3_Rocks_F", "A3_Signs_F", "A3_Signs_F_Ad", "A3_Soft_F", 
"A3_Soft_F_Mrap_01", "A3_Soft_F_Mrap_02", "A3_Soft_F_Offroad_01", "A3_Soft_F_Quadbike", "A3_Soft_F_Mrap_03", "A3_Soft_F_Beta_Quadbike", "A3_Soft_F_Hemtt", "A3_Soft_F_Truckheavy", "A3_Soft_F_Car", "A3_Soft_F_Gamma_Offroad", 
"A3_Soft_F_Gamma_Quadbike", "A3_Soft_F_Suv", "A3_Soft_F_Gamma_Hemtt", "A3_Soft_F_Gamma_Truckheavy", "A3_Soft_F_Truck", "A3_Sounds_F", "A3_Static_F", "A3_Static_F_Mortar_01", "A3_Static_F_Beta_Mortar_01", 
"A3_Static_F_Gamma_Aa", "A3_Static_F_Gamma_At", "A3_Static_F_Gamma", "A3_Static_F_Gamma_Mortar_01", "A3_Structures_F", "A3_Structures_F_Bridges", "A3_Structures_F_Civ", "A3_Structures_F_Civ_Accessories", 
"A3_Structures_F_Civ_Ancient", "A3_Structures_F_Civ_Belltowers", "A3_Structures_F_Civ_Calvaries", "A3_Structures_F_Civ_Camping", "A3_Structures_F_Civ_Chapels", "A3_Structures_F_Civ_Constructions", "A3_Structures_F_Civ_Dead", 
"A3_Structures_F_Civ_Garbage", "A3_Structures_F_Civ_Graffiti", "A3_Structures_F_Civ_Infoboards", "A3_Structures_F_Civ_Kiosks", "A3_Structures_F_Civ_Lamps", "A3_Structures_F_Civ_Market", "A3_Structures_F_Civ_Offices", 
"A3_Structures_F_Civ_Pavements", "A3_Structures_F_Civ_Playground", "A3_Structures_F_Civ_Sportsgrounds", "A3_Structures_F_Civ_Statues", "A3_Structures_F_Civ_Tourism", "A3_Structures_F_Dominants", 
"A3_Structures_F_Dominants_Amphitheater", "A3_Structures_F_Dominants_Castle", "A3_Structures_F_Dominants_Church", "A3_Structures_F_Dominants_Hospital", "A3_Structures_F_Dominants_Lighthouse", "A3_Structures_F_Dominants_Wip", 
"A3_Structures_F_Furniture", "A3_Structures_F_Households", "A3_Structures_F_Households_Addons", "A3_Structures_F_Households_House_Big01", "A3_Structures_F_Households_House_Big02", "A3_Structures_F_Households_House_Shop01", 
"A3_Structures_F_Households_House_Shop02", "A3_Structures_F_Households_House_Small01", "A3_Structures_F_Households_House_Small02", "A3_Structures_F_Households_House_Small03", "A3_Structures_F_Households_Slum",
"A3_Structures_F_Households_Stone_Big", "A3_Structures_F_Households_Stone_Shed", "A3_Structures_F_Households_Stone_Small", "A3_Structures_F_Households_Wip", "A3_Structures_F_Ind", "A3_Structures_F_Ind_Airport", 
"A3_Structures_F_Ind_Cargo", "A3_Structures_F_Ind_Carservice", "A3_Structures_F_Ind_Concretemixingplant", "A3_Structures_F_Ind_Crane", "A3_Structures_F_Ind_Dieselpowerplant", "A3_Structures_F_Ind_Factory", 
"A3_Structures_F_Ind_Fuelstation", "A3_Structures_F_Ind_Fuelstation_Small", "A3_Structures_F_Ind_Pipes", "A3_Structures_F_Ind_Powerlines", "A3_Structures_F_Ind_Reservoirtank", "A3_Structures_F_Ind_Shed", 
"A3_Structures_F_Ind_Solarpowerplant", "A3_Structures_F_Ind_Tank", "A3_Structures_F_Ind_Transmitter_Tower", "A3_Structures_F_Ind_Wavepowerplant", "A3_Structures_F_Ind_Windmill", "A3_Structures_F_Ind_Windpowerplant", 
"A3_Structures_F_Items", "A3_Structures_F_Items_Cans", "A3_Structures_F_Items_Documents", "A3_Structures_F_Items_Electronics", "A3_Structures_F_Items_Gadgets", "A3_Structures_F_Items_Luggage", "A3_Structures_F_Items_Medical", 
"A3_Structures_F_Items_Military", "A3_Structures_F_Items_Stationery", "A3_Structures_F_Items_Tools", "A3_Structures_F_Items_Valuables", "A3_Structures_F_Items_Vessels", "A3_Structures_F_Mil", "A3_Structures_F_Mil_Bagbunker", 
"A3_Structures_F_Mil_Bagfence", "A3_Structures_F_Mil_Barracks", "A3_Structures_F_Mil_Bunker", "A3_Structures_F_Mil_Cargo", "A3_Structures_F_Mil_Flags", "A3_Structures_F_Mil_Fortification", "A3_Structures_F_Mil_Helipads", 
"A3_Structures_F_Mil_Offices", "A3_Structures_F_Mil_Radar", "A3_Structures_F_Mil_Scrapyard", "A3_Structures_F_Mil_Shelters", "A3_Structures_F_Mil_Tenthangar", "A3_Structures_F_Naval", "A3_Structures_F_Naval_Buoys", 
"A3_Structures_F_Naval_Fishing", "A3_Structures_F_Naval_Piers", "A3_Structures_F_Naval_Rowboats", "A3_Structures_F_Research", "A3_Structures_F_Signs_Companies", "A3_Structures_F_System", "A3_Structures_F_Training", 
"A3_Structures_F_Training_Invisibletarget", "A3_Structures_F_Walls", "A3_Structures_F_Wrecks", "A3_Ui_F", "A3_Uifonts_F", "A3_Weapons_F_Acc", "A3_Weapons_F_Ammoboxes", "A3_Weapons_F", "A3_Weapons_F_Dummyweapons", 
"A3_Weapons_F_Explosives", "A3_Weapons_F_Items", "A3_Weapons_F_Launchers_Nlaw", "A3_Weapons_F_Launchers_Law", "A3_Weapons_F_Ebr", "A3_Weapons_F_Longrangerifles_Gm6", "A3_Weapons_F_Longrangerifles_M320", 
"A3_Weapons_F_Machineguns_M200", "A3_Weapons_F_Pistols_P07", "A3_Weapons_F_Pistols_Rook40", "A3_Weapons_F_Rifles_Khaybar", "A3_Weapons_F_Rifles_Mx", "A3_Weapons_F_Rifles_Sdar", "A3_Weapons_F_Rifles_Trg20", 
"A3_Weapons_F_Beta_Acc", "A3_Weapons_F_Beta_Ammoboxes", "A3_Weapons_F_Beta", "A3_Weapons_F_Launchers_Titan", "A3_Weapons_F_Beta_Ebr", "A3_Weapons_F_Machineguns_Zafir", "A3_Weapons_F_Pistols_Acpc2", 
"A3_Weapons_F_Beta_Rifles_Khaybar", "A3_Weapons_F_Rifles_Mk20", "A3_Weapons_F_Beta_Rifles_Mx", "A3_Weapons_F_Beta_Rifles_Trg20", "A3_Weapons_F_Rifles_Vector", "A3_Weapons_F_Rifles_Smg_02", "A3_Weapons_F_Gamma_Acc", 
"A3_Weapons_F_Gamma_Ammoboxes", "A3_Weapons_F_Gamma", "A3_Weapons_F_Pistols_Pdw2000", "A3_Weapons_F_Nato", "A3_Weapons_F_Csat", "A3_Weapons_F_Aaf", "A3_Weapons_F_Fia", "A3_Weapons_F_Itemholders", "A3_Weapons_F_Headgear", 
"A3_Weapons_F_Uniforms", "A3_Weapons_F_Vests", "A3_Anims_F_Epa", "A3_Functions_F_Epa", "A3_Characters_F_Epa", "A3_Language_F_Epa", "A3_Missions_F_Epa", "A3_Music_F_Epa", "A3_Structures_F_Epa_Civ_Camping", 
"A3_Structures_F_Epa_Civ_Constructions", "A3_Structures_F_Epa_Items_Electronics", "A3_Structures_F_Epa_Items_Food", "A3_Structures_F_Epa_Items_Medical", "A3_Structures_F_Epa_Items_Tools", "A3_Structures_F_Epa_Items_Vessels",
"A3_Structures_F_Epa_Mil_Scrapyard", "A3_Structures_F_Epa_Walls", "A3_Weapons_F_Epa", "A3_Weapons_F_Epa_Acc", "A3_Weapons_F_Epa_Ammoboxes", "A3_Weapons_F_Epa_Longrangerifles_Dmr_01", "A3_Weapons_F_Epa_Ebr", 
"A3_Weapons_F_Epa_Longrangerifles_Gm6", "A3_Weapons_F_Pistols_Pistol_Heavy_01", "A3_Weapons_F_Pistols_Pistol_Heavy_02", "A3_Weapons_F_Epa_Rifles_Mx", "A3_Air_F_Epb_Heli_Light_03", "A3_Armor_F_Epb_Apc_Tracked_03", 
"A3_Armor_F_Epb_Mbt_03", "A3_Characters_F_Epb", "A3_Characters_F_Epb_Heads", "A3_Language_F_Epb", "A3_Modules_F_Epb", "A3_Modules_F_Epb_Misc", "A3_Sounds_F_Epb", "A3_Weapons_F_Epb", "A3_Weapons_F_Epb_Acc", 
"A3_Weapons_F_Epb_Ammoboxes", "A3_Weapons_F_Epb_Longrangerifles_Gm3", "A3_Weapons_F_Epb_Longrangerifles_M320", "A3_Weapons_F_Epb_Rifles_Mx_Black", "A3_Structures_F_Epb_Civ_Accessories", "A3_Structures_F_Epb_Civ_Camping", 
"A3_Structures_F_Epb_Civ_Dead", "A3_Structures_F_Epb_Civ_Garbage", "A3_Structures_F_Epb_Civ_Graffiti", "A3_Structures_F_Epb_Civ_Playground", "A3_Structures_F_Epb_Furniture", "A3_Structures_F_Epb_Items_Documents", 
"A3_Structures_F_Epb_Items_Luggage", "A3_Structures_F_Epb_Items_Military", "A3_Structures_F_Epb_Items_Vessels", "A3_Structures_F_Epb_Naval_Fishing", "A3_Air_F_Epc_Plane_Cas_01", "A3_Air_F_Epc_Plane_Cas_02", 
"A3_Air_F_Epc_Plane_Fighter_03", "A3_Anims_F_Epc", "A3_Armor_F_Epc_Mbt_01", "A3_Boat_F_Epc_Submarine_01_F", "A3_Functions_F_Epc", "A3_Characters_F_Epc", "A3_Language_F_Epc", "A3_Music_F_Epc", "A3_Soft_F_Epc_Truck_03", 
"A3_Sounds_F_Epc", "A3_Structures_F_Epc_Civ_Accessories", "A3_Weapons_F_Epc", "A3_Structures_F_Epc_Civ_Camping", "A3_Structures_F_Epc_Civ_Garbage", "A3_Structures_F_Epc_Civ_Infoboards", "A3_Structures_F_Epc_Civ_Kiosks", 
"A3_Structures_F_Epc_Civ_Playground", "A3_Structures_F_Epc_Civ_Tourism", "A3_Structures_F_Epc_Dominants_Ghosthotel", "A3_Structures_F_Epc_Dominants_Stadium", "A3_Structures_F_Epc_Furniture", 
"A3_Structures_F_Epc_Items_Documents", "A3_Structures_F_Epc_Items_Electronics", "A3_Structures_F_Epc_Walls", "A3_Characters_F_Bootcamp", "A3_Characters_F_Bootcamp_Common", "A3_Data_F_Bootcamp", "A3_Functions_F_Bootcamp", 
"A3_Language_F_Bootcamp", "A3_Missions_F_Bootcamp", "A3_Modules_F_Bootcamp", "A3_Modules_F_Bootcamp_Misc", "A3_Music_F_Bootcamp", "A3_Soft_F_Bootcamp_Offroad_01", "A3_Soft_F_Bootcamp_Quadbike", "A3_Soft_F_Bootcamp_Truck", 
"A3_Sounds_F_Bootcamp", "A3_Structures_F_Bootcamp_Civ_Camping", "A3_Structures_F_Bootcamp_Civ_Sportsgrounds", "A3_Structures_F_Bootcamp_Ind_Cargo", "A3_Structures_F_Bootcamp_Items_Electronics", 
"A3_Structures_F_Bootcamp_Items_Food", "A3_Structures_F_Bootcamp_Items_Sport", "A3_Structures_F_Bootcamp_System", "A3_Structures_F_Bootcamp_Training", "A3_Structures_F_Bootcamp_Vr_Blocks", 
"A3_Structures_F_Bootcamp_Vr_Coverobjects", "A3_Structures_F_Bootcamp_Vr_Helpers", "A3_Weapons_F_Bootcamp", "A3_Weapons_F_Bootcamp_Ammoboxes", "A3_Weapons_F_Bootcamp_Longrangerifles_Gm6", 
"A3_Weapons_F_Bootcamp_Longrangerifles_M320", "A3_Data_F_Curator", "A3_Data_F_Curator_Characters", "A3_Data_F_Curator_Intel", "A3_Data_F_Curator_Respawn", "A3_Functions_F_Curator", "A3_Missions_F_Curator", 
"A3_Modules_F_Curator", "A3_Modules_F_Curator_Animals", "A3_Modules_F_Curator_Cas", "A3_Modules_F_Curator_Curator", "A3_Modules_F_Curator_Effects", "A3_Modules_F_Curator_Environment", "A3_Modules_F_Curator_Flares", 
"A3_Modules_F_Curator_Chemlights", "A3_Modules_F_Curator_Intel", "A3_Modules_F_Curator_Lightning", "A3_Modules_F_Curator_Mines", "A3_Modules_F_Curator_Misc", "A3_Modules_F_Curator_Multiplayer", 
"A3_Modules_F_Curator_Objectives", "A3_Modules_F_Curator_Ordnance", "A3_Modules_F_Curator_Respawn", "A3_Modules_F_Curator_Smokeshells", "A3_Ui_F_Curator", "A3_Anims_F_Kart", "A3_Data_F_Kart", "A3_Data_F_Kart_Particleeffects", 
"A3_Characters_F_Kart", "A3_Language_F_Kart", "A3_Languagemissions_F_Kart", "A3_Missions_F_Kart", "A3_Soft_F_Kart_Kart_01", "A3_Modules_F_Kart", "A3_Modules_F_Kart_Timetrials", "A3_Structures_F_Kart_Civ_Sportsgrounds", 
"A3_Structures_F_Kart_Mil_Flags", "A3_Structures_F_Kart_Signs_Companies", "A3_Ui_F_Kart", "A3_Weapons_F_Kart", "A3_Weapons_F_Kart_Pistols_Pistol_Signal_F", "A3_Air_F_Heli_Heli_Attack_01", "A3_Air_F_Heli_Heli_Attack_02", 
"A3_Air_F_Heli_Heli_Light_01", "A3_Air_F_Heli_Heli_Light_02", "A3_Air_F_Heli_Heli_Light_03", "A3_Air_F_Heli_Heli_Transport_02", "A3_Air_F_Heli_Heli_Transport_03", "A3_Air_F_Heli_Heli_Transport_04", "A3_Anims_F_Heli", 
"A3_Boat_F_Heli_Boat_Armed_01", "A3_Boat_F_Heli_SDV_01", "A3_Cargoposes_F_Heli", "A3_Data_F_Heli", "A3_Functions_F_Heli", "A3_Language_F_Heli", "A3_Missions_F_Heli", "A3_Modules_F_Heli", "A3_Modules_F_Heli_Spawnai", 
"A3_Music_F_Heli", "A3_Soft_F_Heli_Car", "A3_Soft_F_Heli_Crusher_UGV", "A3_Soft_F_Heli_MRAP_01", "A3_Soft_F_Heli_MRAP_02", "A3_Soft_F_Heli_MRAP_03", "A3_Soft_F_Heli_Quadbike", "A3_Soft_F_Heli_SUV", "A3_Soft_F_Heli_Truck", 
"A3_Structures_F_Heli_Civ_Accessories", "A3_Structures_F_Heli_Civ_Constructions", "A3_Structures_F_Heli_Civ_Garbage", "A3_Structures_F_Heli_Civ_Market", "A3_Structures_F_Heli_Furniture", "A3_Structures_F_Heli_Ind_Airport", 
"A3_Structures_F_Heli_Ind_Cargo", "A3_Structures_F_Heli_Ind_Machines", "A3_Structures_F_Heli_Items_Airport", "A3_Structures_F_Heli_Items_Electronics", "A3_Structures_F_Heli_Items_Food", "A3_Structures_F_Heli_Items_Luggage", 
"A3_Structures_F_Heli_Items_Sport", "A3_Structures_F_Heli_Items_Tools", "A3_Structures_F_Heli_Vr_Helpers", "A3_Supplies_F_Heli", "A3_Supplies_F_Heli_Bladders", "A3_Supplies_F_Heli_Cargonets", "A3_Supplies_F_Heli_Fuel", 
"A3_Supplies_F_Heli_Slingload", "A3_Ui_F_Heli", "A3_Air_F_Heli"
];

uiNamespace setVariable["RscDisplayRemoteMissions",displayNull]; //For Spy-Glass..

_endM = compile PreProcessFileLineNumbers "\a3\functions_f\Misc\fn_endMission.sqf";

_binConfigPatches = configFile >> "CfgPatches";
for "_i" from 0 to count (_binConfigPatches)-1 do {
	_patchEntry = _binConfigPatches select _i;
	if(isClass _patchEntry) then {
		if(!((configName _patchEntry) in _patchList)) exitWith {
			[[profileName,getPlayerUID player,(configName _patchEntry)],"SPY_fnc_cookieJar",false,false] spawn life_fnc_MP;
			[[profileName,format["Unknown Addon Patch: %1",(configName _patchEntry)]],"SPY_fnc_notifyAdmins",true,false] spawn life_fnc_MP;
			sleep 0.5;
			["SpyGlass",false,false] call _endM;
		};
	};
};

//Check for copy-pasters of Dev-Con styled execution.
//Because I am nice, add these to the following below to allow CBA; "CBA_CREDITS_CONT_C","CBA_CREDITS_M_P
private["_children","_allowedChildren"];
_children = [configFile >> "RscDisplayMPInterrupt" >> "controls",0] call BIS_fnc_returnChildren;
_allowedChildren = [
"Title","MissionTitle","DifficultyTitle","PlayersName","ButtonCancel","ButtonSAVE","ButtonSkip","ButtonRespawn","ButtonOptions",
"ButtonVideo","ButtonAudio","ButtonControls","ButtonGame","ButtonTutorialHints","ButtonAbort","DebugConsole","Feedback","MessageBox"
];

{
	if(!((configName _x) in _allowedChildren)) exitWith {
		[[profileName,getPlayerUID player,"Modified_MPInterrupt"],"SPY_fnc_cookieJar",false,false] spawn life_fnc_MP;
		[[profileName,"Devcon like executor detected"],"SPY_fnc_notifyAdmins",true,false] spawn life_fnc_MP;
		sleep 0.5;
		["SpyGlass",false,false] call _endM;
	};
} foreach _children;

/*
	Display Validator
	Loops through and makes sure none of the displays were modified..
	
	TODO: Run check every x minutes and validate all displays.
*/
{
	_onLoad = getText(configFile >> (_x select 0) >> "onLoad");
	_onUnload = getText(configFile >> (_x select 0) >> "onUnload");
	if(_onLoad != (_x select 1) OR _onUnload != (_x select 2)) exitWith {
		[[profileName,getPlayerUID player,format["Modified_Method_%1",_x select 0]],"SPY_fnc_cookieJar",false,false] call life_fnc_MP;
		[[profileName,format["Modified Display Method %1 (Memory Edit)",_x select 0]],"SPY_fnc_notifyAdmins",true,false] call life_fnc_MP;
		sleep 0.5;
		["SpyGlass",false,false] call _endM;
	};
}
foreach [
			["RscDisplayMainMap","[""onLoad"",_this,""RscDiary"",'GUI'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')","[""onUnload"",_this,""RscDiary"",'GUI'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')"],
			["RscDisplayGetReady","[""onLoad"",_this,""RscDiary"",'GUI'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')","[""onUnload"",_this,""RscDiary"",'GUI'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')"],
			["RscDisplayInventory","[""onLoad"",_this,""RscDisplayInventory"",'IGUI'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')","[""onUnload"",_this,""RscDisplayInventory"",'IGUI'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')"],
			["RscDisplayLoadMission","[""onLoad"",_this,""RscDisplayLoading"",'Loading'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')","[""onUnload"",_this,""RscDisplayLoading"",'Loading'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')"],
			["RscDisplayInterrupt","[""onLoad"",_this,""RscDisplayInterrupt"",'GUI'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')","[""onUnload"",_this,""RscDisplayInterrupt"",'GUI'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')"],
			["RscDisplayOptionsVideo","[""onLoad"",_this,""RscDisplayOptionsVideo"",'GUI'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')","[""onUnload"",_this,""RscDisplayOptionsVideo"",'GUI'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')"],
			["RscDisplayOptions","[""onLoad"",_this,""RscDisplayOptions"",'GUI'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')","[""onUnload"",_this,""RscDisplayOptions"",'GUI'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')"],
			["RscDisplayAVTerminal","[""onLoad"",_this,""RscDisplayAVTerminal"",'IGUI'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')","[""onUnload"",_this,""RscDisplayAVTerminal"",'IGUI'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')"],
			["RscDisplayConfigureAction","[""onLoad"",_this,""RscDisplayConfigureAction"",'GUI'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')","[""onUnload"",_this,""RscDisplayConfigureAction"",'GUI'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')"],
			["RscDisplayConfigureControllers","[""onLoad"",_this,""RscDisplayConfigureControllers"",'GUI'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')","[""onUnload"",_this,""RscDisplayConfigureControllers"",'GUI'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')"],
			["RscDisplayControlSchemes","[""onLoad"",_this,""RscDisplayControlSchemes"",'GUI'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')","[""onUnload"",_this,""RscDisplayControlSchemes"",'GUI'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')"],
			["RscDisplayCustomizeController","[""onLoad"",_this,""RscDisplayCustomizeController"",'GUI'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')","[""onUnload"",_this,""RscDisplayCustomizeController"",'GUI'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')"],
			["RscDisplayDebriefing","[""onLoad"",_this,""RscDisplayDebriefing"",'GUI'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')","[""onUnload"",_this,""RscDisplayDebriefing"",'GUI'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')"],
			["RscDisplayDiary","[""onLoad"",_this,""RscDiary"",'GUI'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')","[""onUnload"",_this,""RscDiary"",'GUI'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')"],
			["RscDisplayGameOptions","[""onLoad"",_this,""RscDisplayGameOptions"",'GUI'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')","[""onUnload"",_this,""RscDisplayGameOptions"",'GUI'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')"],
			["RscDisplayJoystickSchemes","[""onLoad"",_this,""RscDisplayJoystickSchemes"",'GUI'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')","[""onUnload"",_this,""RscDisplayJoystickSchemes"",'GUI'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')"],
			["RscDisplayLoading","[""onLoad"",_this,""RscDisplayLoading"",'Loading'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')","[""onUnload"",_this,""RscDisplayLoading"",'Loading'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')"],
			["RscDisplayMicSensitivityOptions","[""onLoad"",_this,""RscDisplayMicSensitivityOptions"",'GUI'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')","[""onUnload"",_this,""RscDisplayMicSensitivityOptions"",'GUI'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')"],
			["RscDisplayOptionsAudio","[""onLoad"",_this,""RscDisplayOptionsAudio"",'GUI'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')","[""onUnload"",_this,""RscDisplayOptionsAudio"",'GUI'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')"],
			["RscDisplayOptionsLayout","[""onLoad"",_this,""RscDisplayOptionsLayout"",'GUI'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')","[""onUnload"",_this,""RscDisplayOptionsLayout"",'GUI'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')"],
			["RscDisplayStart","[2] call compile preprocessfilelinenumbers gettext (configfile >> 'CfgFunctions' >> 'init'); ['onLoad',_this,'RscDisplayLoading','Loading'] call (uinamespace getvariable 'BIS_fnc_initDisplay')","[""onUnload"",_this,""RscDisplayLoading"",'Loading'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')"],
			["RscDisplayVehicleMsgBox","[""onLoad"",_this,""RscDisplayVehicleMsgBox"",'GUI'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')","[""onUnload"",_this,""RscDisplayVehicleMsgBox"",'GUI'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')"],
			["RscDisplayInsertMarker","[""onLoad"",_this,""RscDisplayInsertMarker"",'GUI'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')","[""onUnload"",_this,""RscDisplayInsertMarker"",'GUI'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')"]
		];

[] execVM "SpyGlass\fn_cmdMenuCheck.sqf";
[] execVM "SpyGlass\fn_variableCheck.sqf";
[] execVM "SpyGlass\fn_menuCheck.sqf";

//Create a no-recoil hack check.
[] spawn {
	waitUntil {(!isNil "life_fnc_moveIn") && !isNull (findDisplay 46)};
	_endM = compile PreProcessFileLineNumbers "\a3\functions_f\Misc\fn_endMission.sqf";
	while {true} do {
		if((unitRecoilCoefficient player) < 1) then {
			[[profileName,getPlayerUID player,"No_recoil_hack"],"SPY_fnc_cookieJar",false,false] spawn life_fnc_MP;
			[[profileName,"No recoil hack"],"SPY_fnc_notifyAdmins",true,false] spawn life_fnc_MP;
			sleep 0.5;
			["SpyGlass",false,false] call _endM;
		};
		sleep 1.5;
	};
};
