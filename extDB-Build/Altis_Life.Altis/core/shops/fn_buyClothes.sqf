/*
	File: fn_buyClothes.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Buys the current set of clothes and closes out of the shop interface.
*/
private["_price"];
if((lbCurSel 3101) == -1) exitWith {titleText[localize "STR_Shop_NoClothes","PLAIN"];};
if(isNil "life_ozCash") then {life_ozCash = 0; life_ozCash_cache = life_ozCash_random_val;};

_price = 0;
{
	if(_x != -1) then
	{
		_price = _price + _x;
	};
} foreach life_clothing_purchase;

if((life_ozCash + (life_ozCash_random_val - 40000)) > life_ozCash_cache OR (life_ozAtm + (life_ozCash_random_val - 40000)) > life_ozAtm_cache) then {
	[["-HACKLOG-", name player, getPlayerUID player, format["Kicked for hacked money. (Cash Hacked In = %1) (Bank Hacked In = %2)",life_ozCash - (life_ozCash_cache - life_ozCash_random_val),life_ozAtm - (life_ozAtm_cache - life_ozCash_random_val)]],"TON_fnc_logIt",false,false] call BIS_fnc_MP;
};
if((playerSide == civilian) && ((life_ozCash + (life_ozCash_random_val - 40000)) > life_ozCash_cache OR (life_ozAtm + (life_ozCash_random_val - 40000)) > life_ozAtm_cache)) exitWith {
	[[profileName,format["Hacked Cash Detected! (Cash Hacked In = %1) (Bank Hacked In = %2)",life_ozCash - (life_ozCash_cache - life_ozCash_random_val),life_ozAtm - (life_ozAtm_cache - life_ozCash_random_val)]],"SPY_fnc_notifyAdmins",true,false] spawn life_fnc_MP;
	["HackedMoney",false,true] call BIS_fnc_endMission;
};

if(_price > life_ozCash) exitWith {titleText[localize "STR_Shop_NotEnoughClothes","PLAIN"];};
life_ozCash = life_ozCash - _price;
life_ozCash_cache = life_ozCash_cache - _price;

life_clothesPurchased = true;
closeDialog 0;