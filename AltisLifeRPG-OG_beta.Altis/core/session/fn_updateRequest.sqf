/*
	File: fn_updateRequest.sqf
	Author: Tonic
*/
private["_packet","_array","_flag"];
_packet = [getPlayerUID player,(profileName),playerSide,life_ogCash415,life_ogBank415];
_array = [];
_flag = switch(playerSide) do {case west: {"cop"}; case civilian: {"civ"}; case independent: {"med"};};
{
	if(_x select 1 == _flag) then
	{
		_array pushBack [_x select 0,(missionNamespace getVariable (_x select 0))];
	};
} foreach life_licenses;
_packet pushBack _array;

[] call life_fnc_saveGear;
_packet pushBack life_gear;
switch (playerSide) do {
	case west: {
		_packet pushBack copTimer;
	};
	case civilian: {
		_packet pushBack civTimer;
		_packet pushBack life_is_arrested;
	};
	case independent: {
		_packet pushBack medicTimer;
	};
};

[_packet,"DB_fnc_updateRequest",false,false] spawn life_fnc_MP;