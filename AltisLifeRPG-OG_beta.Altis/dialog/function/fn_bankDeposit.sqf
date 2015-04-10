/*
	File: fn_bankDeposit.sqf
	Author: Bryan "Tonic" Boardwine
	Tonic is an asshole - Heavy Bob
	Description:
	Figure it out.
*/
private["_value","_cache"];
_value = parseNumber(ctrlText 2702);
_cache = life_ogCash415;

//Series of stupid checks
if(_value > 999999) exitWith {hint localize "STR_ATM_GreaterThan";};
if(_value < 0) exitWith {};
if(!([str(_value)] call life_fnc_isnumeric)) exitWith {hint localize "STR_ATM_notnumeric"};
if(_value > life_ogCash415) exitWith {hint localize "STR_ATM_NotEnoughCash"};

life_ogCash415 = life_ogCash415 - _value;
life_ogBank415 = life_ogBank415 + _value;

if(life_ogCash415 == _cache) then {
	[[profileName,getPlayerUID player,"AtmHack"],"SPY_fnc_cookieJar",false,false] call life_fnc_MP;
	[[profileName,"Cash Injection: Atm Hack"],"SPY_fnc_notifyAdmins",true,false] call life_fnc_MP;
	closeDialog 0;
	["SpyGlass",false,false] call compile PreProcessFileLineNumbers "\a3\functions_f\Misc\fn_endMission.sqf";
};
hint format[localize "STR_ATM_DepositMSG",[_value] call life_fnc_numberText];
[] call life_fnc_atmMenu;
[6] call SOCK_fnc_updatePartial;