/*
	File: fn_wantedAdd.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Adds or appends a unit to the wanted list.
*/
private["_uid","_type","_index","_data","_crimes","_val","_customBounty","_name"];
_uid = [_this,0,"",[""]] call BIS_fnc_param;
_name = [_this,1,"",[""]] call BIS_fnc_param;
_type = [_this,2,"",[""]] call BIS_fnc_param;
_customBounty = [_this,3,-1,[0]] call BIS_fnc_param;
if(_uid == "" OR _type == "" OR _name == "") exitWith {}; //Bad data passed.

//What is the crime?
switch(_type) do
{
	case "120S": {_type = ["Speeding Over Limit",1500]};
	case "120H": {_type = ["Habitual Speeding",2000]};
	case "120WL": {_type = ["Driving W/O License",1000]};
	case "120FS": {_type = ["Felony Speeding AOS",3000]};
	case "187V": {_type = ["Vehicular Manslaughter",20000]};
	case "187": {_type = ["Manslaughter",20000]};
	case "187L": {_type = ["Police Killing",80000]};
	case "187M": {_type = ["Paramedic Killing",120000]};
	case "901": {_type = ["Escaping Jail",25000]};
	case "261": {_type = ["Rape",5000]}; //What type of sick bastard would add this?
	case "261A": {_type = ["Attempted Rape",3000]};
	case "215": {_type = ["Attempted Auto Theft",4500]};
	case "213": {_type = ["Use of illegal explosives",10000]};
	case "211": {_type = ["Robbery",15000]};
	case "207": {_type = ["Kidnapping",30000]};
	case "207A": {_type = ["Attempted Kidnapping",20000]};
	case "390": {_type = ["Public Intoxication",15000]};
	case "487": {_type = ["Grand Theft",8000]};
	case "488": {_type = ["Petty Theft",8000]};
	case "480": {_type = ["Hit and run",1300]};
	case "481": {_type = ["Drug Possession",1000]};
	case "482": {_type = ["Intent to distribute",5000]};
	case "483": {_type = ["Drug Trafficking",5000]};
	case "459": {_type = ["Burglary",25000]};
	case "919": {_type = ["Organ Dealing",65000]};
	default {_type = [];};
};

if(count _type == 0) exitWith {}; //Not our information being passed...
//Is there a custom bounty being sent? Set that as the pricing.
if(_customBounty != -1) then {_type set[1,_customBounty];};
//Search the wanted list to make sure they are not on it.
_index = [_uid,life_wanted_list] call TON_fnc_index;

if(_index != -1) then
{
	_data = life_wanted_list select _index;
	_crimes = _data select 2;
	_crimes pushBack (_type select 0);
	_val = _data select 3;
	life_wanted_list set[_index,[_name,_uid,_crimes,(_type select 1) + _val]];
}
	else
{
	life_wanted_list pushBack [_name,_uid,[(_type select 0)],(_type select 1)];
};