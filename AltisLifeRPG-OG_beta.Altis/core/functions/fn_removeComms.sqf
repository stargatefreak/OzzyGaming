/* 
	File: fn_removeComms.sqf
	Auther: Aaron
	
    removes them from a group
 */
private["_target","_holder"];
_remover = [_this, 0, objNull,[objNull]] call BIS_fnc_param;
_target = [_this, 1, objNull,[objNull]] call BIS_fnc_param;

if(side _target != west) exitWith {};
if(!isNull _target) exitWith {
    [[_remover],"life_fnc_removeComms",_target,true,false] spawn life_fnc_MP;
};

_radioCount = 0;

if ("ItemRadio" in assignedItems player) then {player unassignItem "ItemRadio"};

_holder = "groundWeaponHolder" createVehicle position player;
_holder setPos getPos player;


if(!isNull unitBackpack player && "ItemRadio" in backpackItems player) then {
    {
        if (_x == "ItemRadio") then {
            _radioCount = _radioCount + 1;
        };
    } forEach backpackItems player;
};

if(vest player != "" && "ItemRadio" in vestItems player) then {
    {
        if (_x == "ItemRadio") then {
            _radioCount = _radioCount + 1;
        };
    } forEach vestItems player;
};

if(uniform player != "" && "ItemRadio" in uniformItems player) then {
    {
        if (_x == "ItemRadio") then {
            _radioCount = _radioCount + 1;
        };
    } forEach uniformItems player;
};
player removeItems "ItemRadio";
[player] join grpNull;
player setVariable ["comms",false,false];
[2,format["%1 has taken your Comms, You are no longer permitted to communicate with your team",name _remover]] spawn life_fnc_broadcast;
[[2,format["%1's comms have been taken, The police cant see them now!!",profileName]],"life_fnc_broadcast",_remover,false] spawn life_fnc_MP;
_holder addItemCargo ["ItemRadio",_radioCount];