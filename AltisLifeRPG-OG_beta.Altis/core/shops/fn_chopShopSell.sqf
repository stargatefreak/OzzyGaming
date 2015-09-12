/*
	File: fn_chopShopSell.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Sells the selected vehicle off.
*/
disableSerialization;
private["_control","_price","_vehicle","_nearVehicles","_price2","_mode"];
_control = ((findDisplay 39400) displayCtrl 39402);
_price = _control lbValue (lbCurSel _control);
_vehicle = _control lbData (lbCurSel _control);
_vehicle = call compile format["%1", _vehicle];
_nearVehicles = nearestObjects [getMarkerPos life_chopShop,["Car","Truck","Air","Ship","Tank"],25];
_vehicle = _nearVehicles select _vehicle;
if(isNull _vehicle) exitWith {};
if(_vehicle getVariable["purpose",""] == "truck_mission") exitWith {hint parseText "You are not allowed to Chop Shop a Truck Mission, And now you loose it. have fun walking"; [[_vehicle;};

hint localize "STR_Shop_ChopShopSelling";
life_action_inUse = true;
_price2 = life_ogCash415 + _price;
_mode = 1;
[[player,_vehicle,_price,_price2,_mode],"TON_fnc_chopShopSell",false,false] spawn life_fnc_MP;
closeDialog 0;