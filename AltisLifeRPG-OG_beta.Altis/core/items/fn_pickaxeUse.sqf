/*
	File: fn_pickaxeUse.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main functionality for pickaxe in mining.
*/
closeDialog 0;
private["_mine","_itemWeight","_diff","_itemName","_val","_gloves","_dice"];
_zone = [_this,0,"",[""]] call BIS_fnc_param;
if(OG_gatherProtection != 0 || life_action_inUse) then {OG_gatherProtection = 0; exit} else {OG_gatherProtection = 0}; //Action is in use, exit to prevent spamming.
life_action_inUse = true;

if(_zone == "" || (missionNamespace getVariable (["pickaxe",0] call life_fnc_varHandle)) == 0) exitWith {
	life_action_inUse = false;
	OG_gatherProtection = OG_gatherProtection - 1;
	if(OG_gatherProtection < 0) then {
		OG_gatherProtection = 0;
	};
};

switch (_zone) do
{
	case "lead_1": {_mine = "copperore"; _val = 2;};
	case "iron_1": {_mine = "ironore"; _val = 2;};
	case "gold_1": {_mine = "goldore"; _val = 2;};
	case "salt_1": {_mine = "salt"; _val = 4;};
	case "sand_1": {_mine = "sand"; _val = 5;};
	case "diamond_1": {_mine = "diamond"; _val = 1;};
	case "oil_1": {_mine = "oilu"; _val = 1;};
	case "oil_2": {_mine = "oilu"; _val = 1;};
	case "rock_1": {_mine = "rock"; _val = 2;};
	case "uranium_1": {_mine = "uranium"; _val = 2;};
	default {_mine = "";};
};
//Mine check
if(_mine == "") exitWith {
	hint localize "STR_ISTR_Pick_NotNear";
	life_action_inUse = false;
	OG_gatherProtection = OG_gatherProtection - 1;
	if(OG_gatherProtection < 0) then {
		OG_gatherProtection = 0;
	};
};
if(vehicle player != player) exitWith {
	hint localize "STR_ISTR_Pick_MineVeh";
	life_action_inUse = false;
	OG_gatherProtection = OG_gatherProtection - 1;
	if(OG_gatherProtection < 0) then {
		OG_gatherProtection = 0;
	};
};

_diff = [_mine,_val,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
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

if(_mine == "uranium") then {
	_itemName = [([_mine,0] call life_fnc_varHandle)] call life_fnc_varToStr;
	_gloves = missionNamespace getVariable (["hazmatg",0] call life_fnc_varHandle);
	if(([true,_mine,_diff] call life_fnc_handleInv)) then {
		if(_gloves < 0) then
		{
			_dice = random(100);
			if(_dice < 60) then
			{
				titleText[format["While mining up %2 %1, you get burned badly by radiation. I need gloves",_itemName,_diff],"PLAIN"];
				player setdamage ((damage player) + 0.6);
			} else {
				titleText[format["You have mined %2 %1. Radiation burns you slightly. Need some gloves",_itemName,_diff],"PLAIN"];
				player setdamage ((damage player) + .04);
			};
		} else {
			_dice = random(100);
			if(_dice < 10) then {
				titleText[format["You have mined %2 %1, HazMat gloves had shielded the radiation slightly",_itemName,_diff],"PLAIN"];
				player setdamage ((damage player) + 0.01);
			} else {
				titleText[format["You have mined %2 %1, HazMat gloves have been contaminated with Radiation",_itemName,_diff],"PLAIN"];
				player setdamage ((damage player) + 0.05);
				[false,"hazmatg",1] call life_fnc_handleInv;
			};
		};
		player say3D "uranium";
	};
} else {
	if(([true,_mine,_diff] call life_fnc_handleInv)) then
	{
		_itemName = [([_mine,0] call life_fnc_varHandle)] call life_fnc_varToStr;
		titleText[format[localize "STR_ISTR_Pick_Success",_itemName,_diff],"PLAIN"];
	};
};

life_action_inUse = false;
OG_gatherProtection = OG_gatherProtection - 1;
if(OG_gatherProtection < 0) then {
	OG_gatherProtection = 0;
};
if(OG_gatherProtection > 0 && !life_action_inUse) then {
	OG_gatherProtection = 0;
};
_rscLayer = "osefStatusBar" call BIS_fnc_rscLayer;
_rscLayer cutRsc["osefStatusBar","PLAIN"];