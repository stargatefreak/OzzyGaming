/*
	File: fn_cooldown.sqf
	Author: Aaron "StargateFreak"
	
	Description:
	Cooldown for Vehicle Selling to prevent the system from selling the same vehicle twice.
*/
private["_cooldown"];
_cooldown = _this select 0;
if (isNull _cooldown or !isNumber _cooldown) exitWith {};

life_cooldown = _cooldown;
waitUntil {
{sleep 1; life_cooldown - 1;};
life_cooldown == 0;
};