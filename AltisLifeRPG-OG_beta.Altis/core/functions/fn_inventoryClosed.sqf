/*
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Used for syncing house container data but when the inventory menu
	is closed a sync request is sent off to the server.
*/
private["_container"];
_container = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _container) exitWith {}; //MEH

if((typeOf _container) in ["Box_IND_Grenades_F","B_supplyCrate_F"]) exitWith {
	_house = lineIntersectsWith [getPosASL player, ATLtoASL screenToWorld[0.5,0.5]];
	
	switch(true) do {
		case (count _house == 0): {_exit = true;};
		case (count _house == 1): {_house = _house select 0;};
		default {
			{if(_x isKindOf "House_F") exitWith {_house = _x;};} foreach _house;
		};
	};
	if(!isNil "_exit" OR !(_house isKindOf "House_F")) exitWith {systemChat localize "STR_House_ContainerError"};
	[[_house],"TON_fnc_updateHouseContainers",false,false] spawn life_fnc_MP;
    [] call SOCK_fnc_updateRequest;
};

if(playerSide == west) then {
    [] call life_fnc_copUniform;
    if("ItemRadio" in assignedItems player) then {
        [player] join OZ_policeGroup;
        player setVariable ["comms",true,true];
    } else {
        [player] join grpNull;
        player setVariable ["comms",false,true];
    };
};

if(playerSide == independent) then {
    [] call life_fnc_copUniform;
    if("ItemRadio" in assignedItems player) then {
        [player] join OZ_medicGroup;
        player setVariable ["comms",true,false];
    } else {
        [player] join grpNull;
        player setVariable ["comms",false,false];
    };
};