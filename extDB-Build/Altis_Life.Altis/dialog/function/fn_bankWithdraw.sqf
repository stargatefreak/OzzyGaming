/*
	COPY PASTE TIME
*/
private["_val","_cache"];
_val = parseNumber(ctrlText 2702);
_cache = life_ozAtm;

if(_val > 999999) exitWith {hint localize "STR_ATM_WithdrawMax";};
if(_val < 0) exitwith {};
if(!([str(_val)] call life_fnc_isnumeric)) exitWith {hint localize "STR_ATM_notnumeric"};
if(_val > life_ozAtm) exitWith {hint localize "STR_ATM_NotEnoughFunds"};
if(_val < 100 && life_ozAtm > 20000000) exitWith {hint localize "STR_ATM_WithdrawMin"}; //Temp fix for something.

life_ozCash = life_ozCash + _val;
life_ozAtm = life_ozAtm - _val;

if(life_ozAtm == _cache) then {
	[[profileName,getPlayerUID player,"AtmHack"],"SPY_fnc_cookieJar",false,false] call life_fnc_MP;
	[[profileName,"Cash Injection: Atm Hack"],"SPY_fnc_notifyAdmins",true,false] call life_fnc_MP;
	closeDialog 0;
	["SpyGlass",false,false] call compile PreProcessFileLineNumbers "\a3\functions_f\Misc\fn_endMission.sqf";
};
hint format [localize "STR_ATM_WithdrawSuccess",[_val] call life_fnc_numberText];
[] call life_fnc_atmMenu;
[6] call SOCK_fnc_updatePartial;