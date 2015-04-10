#include <macro.h>
/*
	File: fn_initCop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Cop Initialization file.
*/
private["_end"];
player addRating 9999999;
waitUntil {!(isNull (findDisplay 46))};
_end = false;
if(life_cop_blacklisted) exitWith
{
	["Blacklisted",false,true] call BIS_fnc_endMission;
	sleep 30;
};
if((str(player) in ["cop_21","cop_20"])) then {
	if(__GETC__(life_ogAdminlvl415) < 3) then {
		[[format["%1 has attempted to join as Zeus: %2, please report him.",name player,getPlayerUID player],player],"life_fnc_broadcast",true,false] spawn BIS_fnc_MP;
		["NotAdmin",false,true] call BIS_fnc_endMission;
		sleep 35;
	};
};

if(!(str(player) in ["cop_1","cop_2","cop_3","cop_4"])) then {
	if((__GETC__(life_ozCoplvl) == 0) && (__GETC__(life_ogAdminlvl415) == 0)) then {
		["NotWhitelisted",false,true] call BIS_fnc_endMission;
		sleep 35;
	};
};

// Set Paycheck for Police
switch(__GETC__(life_ozCoplvl)) do
{
	case 1: {life_ogPayday415 = life_ogPayday415 + 1000;};
	case 2: {life_ogPayday415 = life_ogPayday415 + 1500;};
	case 3: {life_ogPayday415 = life_ogPayday415 + 2000;};
	case 4: {life_ogPayday415 = life_ogPayday415 + 2500;};
	case 5: {life_ogPayday415 = life_ogPayday415 + 3000;};
	case 6: {life_ogPayday415 = life_ogPayday415 + 3500;};
	case 7: {life_ogPayday415 = life_ogPayday415 + 4000;};
};

OZ_policeGroup = (group player);
publicVariable "OZ_policeGroup";

if("ItemRadio" in assignedItems player) then {
    [player] join OZ_policeGroup;
    player setVariable ["comms",true,false];
} else {
    [player] join grpNull;
    player setVariable ["comms",false,false];
};

player setVariable["rank",(__GETC__(life_ozCoplvl)),true];
[] call life_fnc_spawnMenu;
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.