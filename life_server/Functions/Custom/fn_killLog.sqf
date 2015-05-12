private["_killer","_killerSide","_killerPos","_victim","_victimSide","_victimPos","_with"];

_killer = [_this,0,objNull] call BIS_fnc_param;
_killerSide = [_this,1,objNull] call BIS_fnc_param;
_killerPos = [_this,2,objNull] call BIS_fnc_param;

_victim = [_this,3,objNull] call BIS_fnc_param;
_victimSide = [_this,4,objNull] call BIS_fnc_param;
_victimPos = [_this,5,objNull] call BIS_fnc_param;

_with = [_this,6,0] call BIS_fnc_param;

if(isNull _killer) exitWith{diag_log "KILL LOG ERROR : Killer is objNull"};
if(isNull _victim) exitWith{diag_log "KILL LOG ERROR : Victim is objNull"};
if(_type == 0) exitWith{diag_log "KILL LOG ERROR : Type is Nil"};

if(vehicle _killer != _killer && (driver vehicle _killer) == _killer) then {
    diag_log format["%1 (%2, %3) killed %4 (%5, %6) with %7",_killer, _killerPos, _killerSide, _victim, _victimPos, _victimSide, typeOf (vehicle _killer)];
} else {
    diag_log format["%1 (%2, %3) killed %4 (%5, %6) with %7",_killer, _killerPos, _killerSide, _victim, _victimPos, _victimSide, _with];
};