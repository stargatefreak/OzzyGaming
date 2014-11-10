/*
	File: fn_escortAction.sqf
*/
private["_unit"];
_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(_unit distance player > 3) exitWith {hint "Player not close enough"};
if(isNil "_unit" OR isNull _unit OR !isPlayer _unit) exitWith {};
if(!(side _unit in [civilian,independent])) exitWith {};
_unit attachTo [player,[0.1,1.1,0]];
_unit setVariable["transporting",false,true];
_unit setVariable["Escorting",true,true];
player reveal _unit;