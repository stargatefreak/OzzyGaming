/*
	File: fn_serviceVeh.sqf
	Author: Tobias 'Xetoxyc' Sittenauer

	Description: Strip the player down
*/
private["_vehicle","_price"];
_vehicle = [_this,0,objNull,[objNull]] call BIS_fnc_param;
_player = [_this,1,objNull,[objNull]] call BIS_fnc_param;

switch (true) do
{
    case (_vehicle isKindOf "Car"): {_price = call life_impound_car;};
    case (_vehicle isKindOf "Ship"): {_price = call life_impound_boat;};
    case (_vehicle isKindOf "Air"): {_price = call life_impound_air;};
    case (_vehicle isKindOf "Tank"): {_price = call life_impound_armor;};
};
_price = _price * 3;
if (_price < life_ogCash415 || _price < life_ogBank415)) exitwith {format["The service of this vehicle requires $%1 which you don't have",[_price] call life_fnc_numberText];};
if(_price > life_ogCash415) then {
    life_ogBank415 = life_ogBank415 - _price;
} else {
    life_ogCash415 = life_ogCash415 - _price;
};
_vehicle setVariable["faulty",false,true];
["Transaction",[format["Your service Cost you $%1",[_price] call life_fnc_numberText]]] call bis_fnc_showNotification;