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

if((__GETC__(life_medicLevel)) < 1) exitWith {
	["Notwhitelisted",FALSE,TRUE] call BIS_fnc_endMission;
	sleep 35;
};
/* 
// Set Paycheck for Medic
switch(__GETC__(life_medicLevel)) do
{
	case 1: {life_paycheck = life_paycheck + 1000;};
	case 2: {life_paycheck = life_paycheck + 1500;};
	case 3: {life_paycheck = life_paycheck + 2000;};
};
 */
[] call life_fnc_spawnMenu;
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.