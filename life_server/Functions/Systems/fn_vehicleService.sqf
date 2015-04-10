/*
	File: fn_vehicleStore.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Stores the vehicle in the 'Garage'
*/
private["_vehicle","_impound","_vInfo","_vInfo","_plate","_uid","_query","_sql","_unit"];
_vehicle = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_unit = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param;

if(isNull _vehicle OR isNull _unit) exitWith {life_impound_inuse = false; (owner _unit) publicVariableClient "life_impound_inuse";life_garage_service = false;(owner _unit) publicVariableClient "life_garage_service";}; //Bad data passed.

_vInfo = _vehicle getVariable["dbInfo",[]];
if(count _vInfo > 0) then
{
	_plate = _vInfo select 1;
	_uid = _vInfo select 0;
};

if(count _vInfo == 0) exitWith
{
    [[1,"That vehicle is a rental and cannot be serviced"],"life_fnc_broadcast",(owner _unit),false] spawn life_fnc_MP;
    life_garage_service = false;
    (owner _unit) publicVariableClient "life_garage_service";
};

if(_uid != getPlayerUID _unit) exitWith
{
    [[1,"That vehicle doesn't belong to you therefor you cannot service it"],"life_fnc_broadcast",(owner _unit),false] spawn life_fnc_MP;
    life_garage_service = false;
    (owner _unit) publicVariableClient "life_garage_service";
};

_query = format["UPDATE vehicles SET lastUpdated=NOW(),lastService=NOW() WHERE pid='%1' AND plate='%2'",_uid,_plate];
waitUntil {!DB_Async_Active};
_thread = [_query,1] call DB_fnc_asyncCall;
life_garage_service = false;
(owner _unit) publicVariableClient "life_garage_service";
[[1,"The vehicle has been serviced"],"life_fnc_broadcast",(owner _unit),false] spawn life_fnc_MP;
[[_vehicle,(owner _unit)],"life_fnc_serviceVeh",(owner _unit),false] spawn life_fnc_MP;