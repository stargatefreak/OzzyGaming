/*
	File: fn_serviceVehicle.sqf
	Author: Bryan "Tonic" Boardwine
    modified by Aaron
	
	Description:
	services the vehicle nearby.
*/
private["_nearVehicles","_vehicle","_price","_vehData","_vehOwner","_pass"];
if(vehicle player != player) then
{
	_vehicle = vehicle player;
}
	else
{
	_nearVehicles = nearestObjects[getPos (_this select 0),["Car","Air","Ship","Tank"],30];
	if(count _nearVehicles > 0) then
	{
		{
			if(!isNil "_vehicle") exitWith {};
			_vehData = _x getVariable["vehicle_info_owners",[]];
			if(count _vehData  > 0) then
			{
				_vehOwner = (_vehData select 0) select 0;
				if((getPlayerUID player) == _vehOwner) exitWith
				{
					_vehicle = _x;
				};
			};
		} foreach _nearVehicles;
	};
};
if(isNil "_vehicle") exitWith {hint localize "STR_Garage_NoNPC"};
if(isNull _vehicle) exitWith {};

switch (true) do
{
    case (_vehicle isKindOf "Car"): {_price = call life_impound_car;};
    case (_vehicle isKindOf "Ship"): {_price = call life_impound_boat;};
    case (_vehicle isKindOf "Air"): {_price = call life_impound_air;};
    case (_vehicle isKindOf "Tank"): {_price = call life_impound_armor;};
};
_price = _price * 3;
_pass = [_price,false] call OG_fnc_payment;
if (!_pass) exitwith {hint format["The service of this vehicle requires $%1 in either in hand or in your bank",[_price] call life_fnc_numberText]};

[[_vehicle,(_this select 1),false,[_price] call life_fnc_numberText],"TON_fnc_vehicleService",false,false] spawn life_fnc_MP;
hint "The server is trying to service the vehicle...";
life_garage_service = true;