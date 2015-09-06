#include <macro.h>
/*
	File: fn_adminFreeze.sqf
	Author: ColinM9991
 
	Description: Freezes selected player
*/
if(__GETC__(life_ogAdminlvl415) < (targetPlayerAdminLvl + 1)) exitWith {closeDialog 0; hint localize "STR_ANOTF_ErrorLevel";};

private["_unit"];
_unit = lbData[2902,lbCurSel (2902)];
_unit = call compile format["%1", _unit];
if(isNil "_unit") exitWith {};
if(isNull _unit) exitWith {};
if(_unit == player) exitWith {hint localize "STR_ANOTF_Error";};

[[player],"life_fnc_freezePlayer",_unit,false] spawn life_fnc_MP;

/* Temporary logging */
[[name player,side player,"Toggled freeze",name _unit,side _unit, str getPosATL player, str getPosATL _unit],"OG_fnc_adminLog",false,false] spawn life_fnc_MP;