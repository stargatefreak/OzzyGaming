#include <macro.h>
/*
	File: fn_adminGodMode.sqf
	Author: Tobias 'Xetoxyc' Sittenauer
 
	Description: Enables God mode for Admin
*/

if(__GETC__(life_ogAdminlvl415) < 3) exitWith {closeDialog 0; hint localize "STR_ANOTF_ErrorLevel";};

[] spawn {
  while {dialog} do {
   closeDialog 0;
   sleep 0.01;
  };
};
 
if(life_god) then {
	life_god = false;
	titleText ["God mode disabled","PLAIN"]; titleFadeOut 2;
	player allowDamage true;
/* Temporary logging */
[[name player,side player,"God Mode On", str (getPosATL player), str (getPosATL _unit)],"OG_fnc_adminLog",false,false] spawn life_fnc_MP;
} else {
	life_god = true;
	titleText ["God mode enabled","PLAIN"]; titleFadeOut 2;
	player allowDamage false; //whitelisted
/* Temporary logging */
[[name player,side player,"God Mode Off", str (getPosATL player), str (getPosATL _unit)],"OG_fnc_adminLog",false,false] spawn life_fnc_MP;
}; 