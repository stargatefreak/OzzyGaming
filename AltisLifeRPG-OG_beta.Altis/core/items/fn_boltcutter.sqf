/*
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Breaks the lock on a single door (Closet door to the player).
*/
private["_building","_door","_doors","_cpRate","_title","_progressBar","_titleText","_cp","_ui"];
_building = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _building) exitWith {};
if(((west countside playableUnits) < 5) && (fed_bank getVariable ["countCops",0] == 0)) exitWith {hint localize "STR_Civ_NotEnoughCops"};
if(!(_building isKindOf "House_F")) exitWith {hint "You are not looking at a house door."};
if(isNil "life_boltcutter_uses") then {life_boltcutter_uses = 0;};
if((nearestObject [[16019.5,16952.9,0],"Land_Dome_Big_F"]) == _building OR (nearestObject [[16019.5,16952.9,0],"Land_Research_house_V1_F"]) == _building) then {
    if(OG_FederalSecurty && !(typeOf _building == "Land_Research_house_V1_F")) exitWith {
		hint parseText "<t size = 2><t align=center><t color='#FF0000'>Federal Bank Security<br /><t color='#00FF00'>Active<br /><br /><t size = 1><t color='#FFFF00'>You must wait 30 minutes between robberies to try again"
	};
	if(typeOf _building == "Land_Dome_Big_F") then {fed_bank setVariable ["countCops",west countSide playableUnits,true];};
	[[[1,2],localize "STR_ISTR_Bolt_AlertFed"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
} else {
	[[0,format[localize "STR_ISTR_Bolt_AlertHouse",name(player)]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
};

_doors = 1;
while {true} do {
	if(!isClass(configFile >> "CfgVehicles" >> (typeOf _building) >> "AnimationSources" >> format["Door_%1_source",_doors])) exitWith {};
	_doors = _doors + 1;
};

_door = 0;
//Find the nearest door
for "_i" from 1 to _doors do {
	_selPos = _building selectionPosition format["Door_%1_trigger",_i];
	_worldSpace = _building modelToWorld _selPos;
		if(player distance _worldSpace < 3.8) exitWith {_door = _i;};
};
if(_door == 0) exitWith {hint localize "STR_Cop_NotaDoor"}; //Not near a door to be broken into.
if((_building getVariable[format["bis_disabled_Door_%1",_door],0]) == 0) exitWith {hint localize "STR_House_Raid_DoorUnlocked"};
life_action_inUse = true;

//Setup the progress bar
disableSerialization;
_title = localize "STR_ISTR_Bolt_Process";
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNamespace getVariable "life_progress";
_progressBar = _ui displayCtrl 38201;
_titleText = _ui displayCtrl 38202;
_titleText ctrlSetText format["%2 (1%1)...","%",_title];
_progressBar progressSetPosition 0.01;
_cP = 0.01;

switch (typeOf _building) do {
	case "Land_Dome_Big_F": {_cpRate = 0.003;};
	case "Land_Research_house_V1_F": {_cpRate = 0.0015;};
	default {_cpRate = 0.08;}
};

animationInProgress = false;
[] spawn OG_fnc_animPlayer;

while {true} do
{
    animationInProgress = true;
	sleep 0.26;
	if(isNull _ui) then {
		5 cutRsc ["life_progress","PLAIN"];
		_ui = uiNamespace getVariable "life_progress";
		_progressBar = _ui displayCtrl 38201;
		_titleText = _ui displayCtrl 38202;
	};
	_cP = _cP + _cpRate;
	_progressBar progressSetPosition _cP;
	_titleText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_title];
	if(_cP >= 1 OR !alive player) exitWith {};
	if(life_istazed) exitWith {}; //Tazed
	if(life_interrupted) exitWith {};
	if(typeOf _building in ["Land_Dome_Big_F"] && OG_FederalSecurty) exitWith {};
};

//Kill the UI display and check for various states
animationInProgress = false;
5 cutText ["","PLAIN"];
player playActionNow "stop";
if(typeOf _building in ["Land_Dome_Big_F"] && OG_FederalSecurty) exitWith {life_action_inUse = false;};
if(!alive player OR life_istazed) exitWith {life_action_inUse = false;};
if((player getVariable["restrained",false])) exitWith {life_action_inUse = false;};
if(life_interrupted) exitWith {life_interrupted = false; titleText[localize "STR_NOTF_ActionCancel","PLAIN"]; life_action_inUse = false;};
life_boltcutter_uses = life_boltcutter_uses + 1;
life_action_inUse = false;
if(life_boltcutter_uses >= 5) then {
	[false,"boltcutter",1] call life_fnc_handleInv;
	life_boltcutter_uses = 0;
};

_building setVariable[format["bis_disabled_Door_%1",_door],0,true]; //Unlock the door.
if((_building getVariable["locked",false])) then {
	_building setVariable["locked",false,true];
};
[[getPlayerUID player,profileName,"459"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
_rscLayer = "osefStatusBar" call BIS_fnc_rscLayer;
_rscLayer cutRsc["osefStatusBar","PLAIN"];