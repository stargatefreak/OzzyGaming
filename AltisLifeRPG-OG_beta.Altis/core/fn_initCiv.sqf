/*
	File: fn_initCiv.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Initializes the civilian.
*/
private["_spawnPos"];
_buildinglist = [
	"Land_u_house_small_01_v1_f",
	"Land_u_house_small_02_v1_f",
	"Land_u_House_Big_01_V1_F",
	"Land_u_House_Big_02_V1_F",
	"Land_Unfinished_Building_01_F",
	"Land_Unfinished_Building_02_F",
	"Land_i_Stone_Shed_V1_F",
	"Land_i_Stone_Shed_V2_F",
	"Land_i_Stone_Shed_V3_F",
	"Land_i_Stone_HouseBig_V1_F",
	"Land_i_Stone_HouseBig_V2_F",
	"Land_i_Stone_HouseBig_V3_F"
];

civ_spawn_1 = nearestObjects[getMarkerPos  "civ_spawn_1", _buildinglist,250];
civ_spawn_2 = nearestObjects[getMarkerPos  "civ_spawn_2", _buildinglist,250];
civ_spawn_3 = nearestObjects[getMarkerPos  "civ_spawn_3", _buildinglist,250];
civ_spawn_4 = nearestObjects[getMarkerPos  "civ_spawn_4", _buildinglist,250];

waitUntil {!(isNull (findDisplay 46))};

if(life_is_arrested) then
{
	life_is_arrested = false;
	[player,true] spawn life_fnc_jail;
}
	else
{
	[] call life_fnc_spawnMenu;
	waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
	waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.
};

[] call life_fnc_zoneCreator;
player addRating 9999999;