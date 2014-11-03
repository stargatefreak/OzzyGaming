/*
	File: fn_buyClothes.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Buys the current set of clothes and closes out of the shop interface.
*/
private["_price"];
if((lbCurSel 3101) == -1) exitWith {titleText[localize "STR_Shop_NoClothes","PLAIN"];};
if(isNil "life_cash") then {life_cash = 0; life_cash_cache = life_cash_random_val;};
life_cash_random_val = 1337;
_price = 0;
{
	if(_x != -1) then
	{
		_price = _price + _x;
	};
} foreach life_clothing_purchase;

if((life_cash + (life_cash_random_val - 40000)) > life_cash_cache OR (life_atmcash + (life_cash_random_val - 40000)) > life_atmcash_cache) then {
	[["-HACKLOG-", name player, getPlayerUID player, format["Kicked for hacked money. (Cash Hacked In = %1) (Bank Hacked In = %2)",life_cash - (life_cash_cache - life_cash_random_val),life_atmcash - (life_atmcash_cache - life_cash_random_val)]],"TON_fnc_logIt",false,false] call BIS_fnc_MP;
};
if((playerSide == civilian) && ((life_cash + (life_cash_random_val - 40000)) > life_cash_cache OR (life_atmcash + (life_cash_random_val - 40000)) > life_atmcash_cache)) exitWith {
	[[profileName,format["Hacked Cash Detected! (Cash Hacked In = %1) (Bank Hacked In = %2)",life_cash - (life_cash_cache - life_cash_random_val),life_atmcash - (life_atmcash_cache - life_cash_random_val)]],"SPY_fnc_notifyAdmins",true,false] spawn life_fnc_MP;
	["HackedMoney",false,true] call BIS_fnc_endMission;
};

if(_price > life_cash) exitWith {titleText[localize "STR_Shop_NotEnoughClothes","PLAIN"];};
life_cash = life_cash - _price;
life_cash_cache = life_cash_cache - _price;

life_clothesPurchased = true;
closeDialog 0;