/*
	File: fn_gather.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main functionality for gathering.
*/
private["_gather","_itemWeight","_diff","_itemName","_val","_resourceZones","_zone","_mineZones"];
_resourceZones = ["apple_1","apple_2","apple_3","apple_4","apple_5","peaches_1","peaches_2","peaches_3","peaches_4","peaches_5","heroin_1","cocaine_1","weed_1","rye_1","rye_2","hops_1","hops_2","yeast_1","yeast_2","corn_1","corn_2"];
_mineZones = ["lead_1","iron_1","gold_1","salt_1","sand_1","diamond_1","oil_1","oil_2","rock_1","uranium_1"];
_zone = "";
if(OG_gatherProtection != 0 || life_action_inUse) then {OG_gatherProtection = 0; exit} else {OG_gatherProtection = 0}; //Action is in use, exit to prevent spamming.
OG_gatherProtection = OG_gatherProtection + 1;
if(life_action_inUse) exitWith {}; //Action is in use, exit to prevent spamming.
life_action_inUse = true;

//Find out what zone we're near
{
	if(player distance (getMarkerPos _x) < 50) exitWith {_zone = _x;};
} foreach _resourceZones;

{
	if(player distance (getMarkerPos _x) < 80) exitWith {_zone = _x;};
} foreach _mineZones;

if(_zone == "") exitWith {
	life_action_inUse = false;
	OG_gatherProtection = OG_gatherProtection - 1;
	if(OG_gatherProtection < 0) then {
		OG_gatherProtection = 0;
	};
};

if(_zone in _mineZones) exitWith {
    [_zone] spawn life_fnc_pickAxeUse;
};

//Get the resource that will be gathered from the zone name...
switch(true) do {
	case (_zone in ["apple_1","apple_2","apple_3","apple_4","apple_5"]): {_gather = "apple"; _val = 3;};
	case (_zone in ["peaches_1","peaches_2","peaches_3","peaches_4","peaches_5"]): {_gather = "peach"; _val = 3;};
	case (_zone in ["heroin_1"]): {_gather = "heroinu"; _val = 1;};
	case (_zone in ["cocaine_1"]): {_gather = "cocaine"; _val = 1;};
	case (_zone in ["weed_1"]): {_gather = "cannabis"; _val = 1;};
	case (_zone in ["rye_1","rye_2"]): {_gather = "rye"; _val = 2;};
	case (_zone in ["yeast_1","yeast_2"]): {_gather = "yeast"; _val = 2;};
	case (_zone in ["hops_1","hops_2"]): {_gather = "hops"; _val = 2;}; 
	case (_zone in ["corn_1","corn_2"]): {_gather = "cornmeal"; _val = 2;}; 
	default {""};
};
//gather check??
if(vehicle player != player) exitWith {
	life_action_inUse = false;
	OG_gatherProtection = OG_gatherProtection - 1;
	if(OG_gatherProtection < 0) then {
		OG_gatherProtection = 0;
	};
};

_diff = [_gather,_val,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
if(_diff == 0) exitWith {
	hint localize "STR_NOTF_InvFull";
	life_action_inUse = false;
	OG_gatherProtection = OG_gatherProtection - 1;
	if(OG_gatherProtection < 0) then {
		OG_gatherProtection = 0;
	};
};
for "_i" from 0 to 2 do
{
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
	sleep 2.5;
};

if(([true,_gather,_diff] call life_fnc_handleInv)) then
{
	_itemName = [([_gather,0] call life_fnc_varHandle)] call life_fnc_varToStr;
	titleText[format[localize "STR_NOTF_Gather_Success",_itemName,_diff],"PLAIN"];
};

life_action_inUse = false;
OG_gatherProtection = OG_gatherProtection - 1;
if(OG_gatherProtection < 0) then {
	OG_gatherProtection = 0;
};
if(OG_gatherProtection > 0 && !life_action_inUse) then {
	OG_gatherProtection = 0;
};