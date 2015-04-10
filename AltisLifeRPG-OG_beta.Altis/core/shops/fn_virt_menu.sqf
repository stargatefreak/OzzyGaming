#include <macro.h>
/*
	File: fn_virt_menu.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Initialize the virtual shop menu.
*/
private["_shop"];
_shop = _this select 3;
if(isNil {_shop}) exitWith {};
life_shop_type = _shop;
life_shop_npc = _this select 0;
if(_shop == "cop" && playerSide != west) exitWith {hint localize "STR_NOTF_NotACop"};
if(_shop == "med" && playerSide != independent) exitWith {hint localize "STR_NOTF_NotAMed"};
if(_shop == "rebel" && playerSide != civilian) exitWith {hint localize "STR_Shop_NotaCiv"};
if(_shop == "gang" && playerSide != civilian) exitWith {hint localize "STR_Shop_NotaCiv"};
if(_shop == "pmc" && playerSide != civilian) exitWith {hint localize "STR_Shop_NotaCiv"};
if(_shop == "pmc" && (__GETC__(life_ozPmclvl) == 0)) exitWith {hint localize "STR_Shop_NotPmc"};
createDialog "shops_menu";

[] call life_fnc_virt_update;