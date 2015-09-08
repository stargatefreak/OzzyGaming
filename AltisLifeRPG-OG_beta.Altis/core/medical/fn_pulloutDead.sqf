/*
	File: fn_pulloutDead.sqf
	Author: destruktoid
	
	Description:
	Pull out dead players
*/
private["_vehicle"];
_vehicle = _this select 0;
if (isNull _vehicle) exitwith {};
if ((_vehicle distance player) > 5) exitwith {systemChat "You must be within 5m of the vehicle.";};
{
    if (!alive _x) then
        {_x setPosATL ([getPosATL player, 2.5, (getdir player + 150 + random(60))] call BIS_fnc_relPos);}
} forEach crew _vehicle;