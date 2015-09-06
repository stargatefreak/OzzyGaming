#include <macro.h>
/*
	File: fn_initMedic.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Initializes the medic..
*/
private["_end"];
player addRating 99999999;
waitUntil {!(isNull (findDisplay 46))};

if(life_med_blacklisted) exitWith
{
	["Blacklisted",false,true] call BIS_fnc_endMission;
	sleep 30;
};

if((__GETC__(life_ozMediclvl)) < 1) exitWith {
	["Notwhitelisted",FALSE,TRUE] call BIS_fnc_endMission;
	sleep 35;
};

// Set Paycheck for Medic
switch(__GETC__(life_ozMediclvl)) do
{
	case 1: {life_ogPayday415 = life_ogPayday415 + 0;};
	case 2: {life_ogPayday415 = life_ogPayday415 + 3000;};
	case 3: {life_ogPayday415 = life_ogPayday415 + 6000;};
	case 4: {life_ogPayday415 = life_ogPayday415 + 7000;};
};

OZ_medicGroup = (group player);
publicVariable "OZ_medicGroup";

if("ItemRadio" in assignedItems player) then {
    [player] join OZ_medicGroup;
    player setVariable ["comms",true,false];
} else {
    [player] join grpNull;
    player setVariable ["comms",false,false];
};

[] call life_fnc_copUniform;
[] call life_fnc_spawnMenu;
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.

