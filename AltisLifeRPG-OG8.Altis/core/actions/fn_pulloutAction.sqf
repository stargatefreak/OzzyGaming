/*
	File: fn_pulloutAction.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Pulls civilians out of a car if it's stopped.
*/
private["_crew"];
if(cursorTarget distance player > 3) exitWith {hint "Vehicle not close enough"};
_crew = crew cursorTarget;

if (playerSide == independent) then 
{
    {
        // Only get dead players
        if (!alive _x or damage _x == 1) then {
            _dir = 90;
            // prevent moving to front or back or bodies will end up under vehicle
            if (floor(random(2)) == 1) then {
                _dir = 25 + random(130);
            } else {
                _dir = 205 + random(130);
            };
            _dist = 2 + random(6);
            _x setPos ([(getPos cursorTarget), _dist, _dir] call BIS_fnc_relPos);
        };
    } forEach (_crew);
} else {
    {
        if(side _x != west) then
        {
            _x setVariable ["transporting",false,true]; _x setVariable ["Escorting",false,true];
            [[_x],"life_fnc_pulloutVeh",_x,false] spawn life_fnc_MP;
        };
    } foreach _crew;
};