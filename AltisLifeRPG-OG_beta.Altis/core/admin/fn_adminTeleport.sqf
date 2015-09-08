#include <macro.h>
/*
	File: fn_adminTeleport.sqf
	Author: ColinM9991
	Credits: To original script author(s)
	Description:
	Teleport to chosen position.
*/
private ["_oldPos"];
if(__GETC__(life_ogAdminlvl415) == 0) exitWith {closeDialog 0;};

_oldPos = str (getPosATL player);

[] spawn {
  while {dialog} do {
   closeDialog 0;
   sleep 0.01;
  };
};

tele={
	_pos = [_this select 0, _this select 1, _this select 2];
	(vehicle player) setpos [_pos select 0, _pos select 1, 0];
	onMapSingleClick "";
	openMap [false, false];
	hint "You have teleported to your selected position";
	
/* Temporary logging */
[[name player,side player,"teleported self",str (getPosATL player), _oldPos],"OG_fnc_adminLog",false,false] spawn life_fnc_MP;
};
openMap [true, false];
onMapSingleClick "[_pos select 0, _pos select 1, _pos select 2] call tele";