#include <macro.h>
/*
	File: fn_vehInvSearch.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Searches the vehicle for illegal items.
*/
private["_vehicle","_vehicleInfo","_value"];
_vehicle = cursorTarget;
if(isNull _vehicle) exitWith {};
if(!((_vehicle isKindOf "Air") OR (_vehicle isKindOf "Ship") OR (_vehicle isKindOf "LandVehicle"))) exitWith {};

_vehicleInfo = _vehicle getVariable ["Trunk",[]];
if(count _vehicleInfo == 0) exitWith {hint localize "STR_Cop_VehEmpty"};

_value = 0;
{
	_var = _x select 0;
	_val = _x select 1;
	
	_index = [_var,life_illegal_items] call TON_fnc_index;
	if(_index != -1) then
	{
		_vIndex = [_var,__GETC__(sell_array)] call TON_fnc_index;
		if(_vIndex != -1) then
		{
			_value = _value + (_val * ((__GETC__(sell_array) select _vIndex) select 1));
		};
	};
} foreach (_vehicleInfo select 0);

if (_vehicle getVariable ["type","private"] == "illegal") then {
    _value = random (200000) + 50000;
};

if(_value > 0) then
{
    if (_vehicle getVariable ["type","private"] == "illegal") then {
        hint "The search of the Delivery Truck turned up illicit materials";
        [[0,format["Altis Transport truck searched by Police turned up $%1 of stolen goods",[_value] call life_fnc_numberText]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		_vehicle setVariable ["type","legal",true];
    } else {
        [[0,format[localize "STR_NOTF_VehContraband",[_value] call life_fnc_numberText]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
    };
	life_ogBank415 = life_ogBank415 + _value;
	_vehicle setVariable["Trunk",[],true];
}
	else
{
	hint localize "STR_Cop_NoIllegalVeh";
};