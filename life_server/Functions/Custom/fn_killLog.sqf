private["_killer","_killerSide","_killerPos","_victim","_victimSide","_victimPos","_with"];

_killer = [_this,0,objNull] call BIS_fnc_param;
_killerSide = [_this,1,objNull] call BIS_fnc_param;
_killerPos = [_this,2,objNull] call BIS_fnc_param;

_victim = [_this,3,objNull] call BIS_fnc_param;
_victimSide = [_this,4,objNull] call BIS_fnc_param;
_victimPos = [_this,5,objNull] call BIS_fnc_param;

_with = [_this,6,0] call BIS_fnc_param;
_killerUID = [_this,7,0] call BIS_fnc_param;
_victimUID = [_this,8,0] call BIS_fnc_param;
_killerMap = [_this,9,0] call BIS_fnc_param;
_victimMap = [_this,10,0] call BIS_fnc_param;

if(isNull _killer) exitWith{diag_log "KILL LOG ERROR : Killer is objNull"};
if(isNull _victim) exitWith{diag_log "KILL LOG ERROR : Victim is objNull"};
if(_type == 0) exitWith{diag_log "KILL LOG ERROR : Type is Nil"};

diag_log format["%8:%1 (%2, %10, %3) killed %9:%4 (%5, %11, %6) with %7",_killer, _killerPos, _killerSide, _victim, _victimPos, _victimSide, _with, _killerUID, _victimUID, _killerMap, _victimMap];