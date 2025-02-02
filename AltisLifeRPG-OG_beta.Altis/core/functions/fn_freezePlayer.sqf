#include <macro.h>
/*
	File: fn_freezePlayer.sqf
	Author: ColinM9991
 
	Description: Freezes selected player
*/
private["_admin"];
_admin = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;

if(life_frozen) then {
	hint localize "STR_NOTF_Unfrozen";
	[[1,format[localize "STR_ANOTF_Unfrozen",profileName]],"life_fnc_broadcast",_admin,false] spawn life_fnc_MP;
	[2,format["You have been Unfrozen by admin: %1",name _admin]] spawn life_fnc_broadcast;
	disableUserInput false;
	life_frozen = false;
} else {
	hint localize "STR_NOTF_Frozen";
	[[1,format[localize "STR_ANOTF_Frozen",profileName]],"life_fnc_broadcast",_admin,false] spawn life_fnc_MP;
	[2,format["You have been Frozen by admin: %1",name _admin]] spawn life_fnc_broadcast;
	disableUserInput true;
	life_frozen = true;
};