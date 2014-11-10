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
if(life_blacklisted) exitWith
{
	["Blacklisted",false,true] call BIS_fnc_endMission;
	sleep 30;
};
if((str(player) in ["cop_21","cop_20"])) then {
	if(__GETC__(life_adminlevel) < 3) then {
		[[format["%1 has attempted to join as Zeus: %2, please report him.",name player,getPlayerUID player],player],"life_fnc_broadcast",true,false] spawn BIS_fnc_MP;
		["NotAdmin",false,true] call BIS_fnc_endMission;
		sleep 35;
	};
};

if(!(str(player) in ["cop_1","cop_2","cop_3","cop_4"])) then {
	if((__GETC__(life_coplevel) == 0) && (__GETC__(life_adminlevel) == 0)) then {
		["NotWhitelisted",false,true] call BIS_fnc_endMission;
		sleep 35;
	};
};

// Set Paycheck for Police
switch(__GETC__(life_coplevel)) do
{
	case 1: {life_paycheck = life_paycheck + 1000;};
	case 2: {life_paycheck = life_paycheck + 1500;};
	case 3: {life_paycheck = life_paycheck + 2000;};
	case 4: {life_paycheck = life_paycheck + 2500;};
	case 5: {life_paycheck = life_paycheck + 3000;};
	case 6: {life_paycheck = life_paycheck + 3500;};
	case 7: {life_paycheck = life_paycheck + 4000;};
};

player setVariable["rank",(__GETC__(life_coplevel)),true];
[] call life_fnc_spawnMenu;
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.
[] call life_fnc_copUniform;