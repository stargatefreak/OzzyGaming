#include <macro.h>
/*
	File: fn_adminTpHere.sqf
	Author: ColinM9991
	
	Description:
	Teleport selected player to you.
*/
if(__GETC__(life_ogAdminlvl415) == 0) exitWith {closeDialog 0;};

private["_target"];
_target = lbData[2902,lbCurSel (2902)];
_target = call compile format["%1", _target];
if(isNil "_target") exitwith {};
if(isNull _target) exitWith {};
if(_target == player) exitWith {hint localize "STR_ANOTF_Error";};

/* Temporary logging */
[[name player,side player,"teleported player",name _target,side _target, str (getPosATL player), str (getPosATL _target)],"OG_fnc_adminLog",false,false] spawn life_fnc_MP;

_target setPos (getPos player);
hint format["You have teleported %1 to your location",_target getVariable["realname",name _target]];