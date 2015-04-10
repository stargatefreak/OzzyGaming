/*
	File: fn_buyClothes.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Buys the current set of clothes and closes out of the shop interface.
*/
private["_price"];
if((lbCurSel 3101) == -1) exitWith {titleText[localize "STR_Shop_NoClothes","PLAIN"];};
if(isNil "life_ogCash415") then {life_ogCash415 = 0; life_ogCash415_cache = life_ogCash415_random_val;};

_price = 0;
{
	if(_x != -1) then
	{
		_price = _price + _x;
	};
} foreach life_clothing_purchase;

if((life_ogCash415 + (life_ogCash415_random_val - 40000)) > life_ogCash415_cache OR (life_ogBank415 + (life_ogCash415_random_val - 40000)) > life_ogBank415_cache) then {
	[["-HACKLOG-", name player, getPlayerUID player, format["Kicked for hacked money. (Cash Hacked In = %1) (Bank Hacked In = %2)",life_ogCash415 - (life_ogCash415_cache - life_ogCash415_random_val),life_ogBank415 - (life_ogBank415_cache - life_ogCash415_random_val)]],"TON_fnc_logIt",false,false] call BIS_fnc_MP;
};
if((playerSide == civilian) && ((life_ogCash415 + (life_ogCash415_random_val - 40000)) > life_ogCash415_cache OR (life_ogBank415 + (life_ogCash415_random_val - 40000)) > life_ogBank415_cache)) exitWith {
	[[profileName,format["Hacked Cash Detected! (Cash Hacked In = %1) (Bank Hacked In = %2)",life_ogCash415 - (life_ogCash415_cache - life_ogCash415_random_val),life_ogBank415 - (life_ogBank415_cache - life_ogCash415_random_val)]],"SPY_fnc_notifyAdmins",true,false] spawn life_fnc_MP;
	["HackedMoney",false,true] call BIS_fnc_endMission;
};

if(_price > life_ogCash415) exitWith {titleText[localize "STR_Shop_NotEnoughClothes","PLAIN"];};
life_ogCash415 = life_ogCash415 - _price;
life_ogCash415_cache = life_ogCash415_cache - _price;

life_clothesPurchased = true;
closeDialog 0;

[] call life_fnc_copUniform;

if("ItemRadio" in assignedItems player) then {
    switch(playerSide) do {
        case independent: {
            [player] join OZ_medicGroup
        };
        case west: {
            [player] join OZ_policeGroup
        };
    };
    player setVariable ["comms",true,false];
} else {
    [player] join grpNull;
    player setVariable ["comms",false,false];
};