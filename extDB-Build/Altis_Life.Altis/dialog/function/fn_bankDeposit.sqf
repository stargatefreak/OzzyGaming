/*
	File: fn_bankDeposit.sqf
	Author: Bryan "Tonic" Boardwine
	Tonic is an asshole - Heavy Bob
	Description:
	Figure it out.
*/
private["_value","_cache"];
_value = parseNumber(ctrlText 2702);
_cache = life_ozCash;

//Series of stupid checks
if(_value > 999999) exitWith {hint localize "STR_ATM_GreaterThan";};
if(_value < 0) exitWith {};
if(!([str(_value)] call life_fnc_isnumeric)) exitWith {hint localize "STR_ATM_notnumeric"};
if(_value > life_ozCash) exitWith {hint localize "STR_ATM_NotEnoughCash"};

life_ozCash = life_ozCash - _value;
life_ozAtm = life_ozAtm + _value;

if(life_ozCash == _cache) then {
	[[profileName,getPlayerUID player,"AtmHack"],"SPY_fnc_cookieJar",false,false] call life_fnc_MP;
	[[profileName,"Cash Injection: Atm Hack"],"SPY_fnc_notifyAdmins",true,false] call life_fnc_MP;
	closeDialog 0;
	["SpyGlass",false,false] call compile PreProcessFileLineNumbers "\a3\functions_f\Misc\fn_endMission.sqf";
};
hint format[localize "STR_ATM_DepositMSG",[_value] call life_fnc_numberText];
[] call life_fnc_atmMenu;
[6] call SOCK_fnc_updatePartial;