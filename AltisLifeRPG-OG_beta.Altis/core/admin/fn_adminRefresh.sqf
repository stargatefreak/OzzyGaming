#include <macro.h>
/*
	File: fn_adminMenu.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Opens the admin menu, sorry nothing special in here. Take a look for yourself.
*/
queryCompleted = false;
if(__GETC__(life_ogAdminlvl415) < 1) exitWith {closeDialog 0;};
private["_display","_list","_side"];
disableSerialization;
_display = findDisplay 2900;
_list = _display displayCtrl 2902;
//Purge List
lbClear _list;

{
	_side = switch(side _x) do {case west: {"Cop"}; case civilian : {"Civ"}; case independent : {"Med"}; default {"Unknown"};};
	_list lbAdd format["%1 - %2", _x getVariable["realname",name _x],_side];
	_list lbSetdata [(lbSize _list)-1,str(_x)];
} foreach playableUnits;