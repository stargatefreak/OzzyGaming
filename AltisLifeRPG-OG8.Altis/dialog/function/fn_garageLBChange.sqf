#include <macro.h>
/*
	File: fn_garageLBChange.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Can't be bothered to answer it.. Already deleted it by accident..
*/
disableSerialization;
private["_control","_index","_className","_dataArr","_vehicleColor","_vehicleInfo","_trunkSpace","_sellPrice","_retrievePrice","_vehicleImpound","_vehiclePrice","_vehicleAge","_initialSell","_faulty"];
_control = _this select 0;
_index = _this select 1;

//Fetch some information.
_dataArr = _control lbData _index; _dataArr = call compile format["%1",_dataArr];
_className = _dataArr select 0;
_vehicleColor = [_className,_dataArr select 1] call life_fnc_vehicleColorStr;
_vehicleImpound = _dataArr select 2;
_vehiclePrice = _dataArr select 3;
_vehicleAge = _dataArr select 4;
_vehicleService = _dataArr select 5;
_vehicleInfo = [_className] call life_fnc_fetchVehInfo;
_trunkSpace = [_className] call life_fnc_vehicleWeightCfg;

if(_vehicleService > 30) then {_faulty = true} else {_faulty = false};

_retrievePrice = [_className,__GETC__(life_garage_prices)] call TON_fnc_index;
_retrievePrice = if(_retrievePrice == -1) then {1000} else {(__GETC__(life_garage_prices) select _retrievePrice) select 1;};
if(_vehicleImpound == 1) then {_retrievePrice = _retrievePrice * 2};
if(_vehiclePrice == 0) then {
    _sellPrice = [_className,__GETC__(life_garage_sell)] call TON_fnc_index;
    _sellPrice = if(_sellPrice == -1) then {1000} else {(__GETC__(life_garage_sell) select _sellPrice) select 1;};
} else {
    _initialSell = _vehiclePrice * 0.9;
    _minSellPrice = _vehiclePrice * 0.05;
    _sellPrice = _initialSell - (_initialSell * (_vehicleAge * 0.015));
    if(_sellPrice < _minSellPrice) then {_sellPrice = _minSellPrice};
};
(getControl(2800,2803)) ctrlSetStructuredText parseText format[
	(localize "STR_Shop_Veh_UI_RetrievalP")+ " <t color='#8cff9b'>$%1</t><br/>
	" +(localize "STR_Shop_Veh_UI_SellP")+ " <t color='#8cff9b'>$%2</t><br/>
	" +(localize "STR_Shop_Veh_UI_Color")+ " %8<br/>
	" +(localize "STR_Shop_Veh_UI_MaxSpeed")+ " %3 km/h<br/>
	" +(localize "STR_Shop_Veh_UI_HPower")+ " %4<br/>
	" +(localize "STR_Shop_Veh_UI_PSeats")+ " %5<br/>
	" +(localize "STR_Shop_Veh_UI_Trunk")+ " %6<br/>
	" +(localize "STR_Shop_Veh_UI_Fuel")+ " %7<br/>
	" +("Purchased Price")+ " <t color='#e1773d'>$%9</t><br/>
	" +("Purchased")+ " <t color='#e1773d'>%10 " + "days ago</t><br/><t color='#f7773a'>
	" +("Last Serviced")+ " <t color='#e1773d'>%11 " + "days ago</t><br/><t color='#f7773a'>
	" + "%12</t>",
[_retrievePrice] call life_fnc_numberText,
[_sellPrice] call life_fnc_numberText,
_vehicleInfo select 8,
_vehicleInfo select 11,
_vehicleInfo select 10,
if(_trunkSpace == -1) then {"None"} else {_trunkSpace},
_vehicleInfo select 12,
_vehicleColor,
[_vehiclePrice] call life_fnc_numberText,
[_vehicleAge] call life_fnc_numberText,
[_vehicleService] call life_fnc_numberText,
if(_faulty) then {"Due for Service"} else {"Service Up to date"}
];
OZG_garageFaulty = _faulty;
OZG_garageRetrieve = _retrievePrice;
OZG_garageSell = _sellPrice;
ctrlShow [2803,true];
ctrlShow [2830,true];