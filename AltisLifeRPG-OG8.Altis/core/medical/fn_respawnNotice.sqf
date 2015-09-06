/*
	File: fn_respawnNotice.sqf
	Author: Aaron
	
	Description:
	Does something but I won't know till I write it...
*/

if(OZ_medRequest) then {
    [[0,format["%1 has given up and respawned",(player getVariable["realname",name player])]],"life_fnc_broadcast",independent,false] spawn life_fnc_MP;
    OZ_medRequest = false;
};