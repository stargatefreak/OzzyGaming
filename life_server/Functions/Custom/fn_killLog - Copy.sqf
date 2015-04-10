private["_killer","_victim","_with"];
_killer = [_this,0,objNull] call BIS_fnc_param;
_victim = [_this,1,objNull] call BIS_fnc_param;
_with = [_this,2,0] call BIS_fnc_param;

if(isNull _killer) exitWith{diag_log "KILL LOG ERROR : Killer is objNull"};
if(isNull _victim) exitWith{diag_log "KILL LOG ERROR : Victim is objNull"};
if(_type == 0) exitWith{diag_log "KILL LOG ERROR : Type is Nil"};

diag_log format["%1 (%2, %3) killed %4 (%5, %6) with %7",_killer, getPosASL(_killer), side _killer, _victim, getPosASL(_victim), side _victim, _with];