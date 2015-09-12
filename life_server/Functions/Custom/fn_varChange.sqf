/*
    File: fn_varChange
    Author:  Aaron (OzzyGaming.com)
    Email: aaron@ozzygaming.com
    
    Changes serverside variables
*/
private ["_caller","_var","_value","_code"];
_caller = [_this,0,objNull,[objNull]] call BIS_fnc_param;
_var = [_this,1,"",[""]] call BIS_fnc_param;
_value = [_this,2,0,["",0,[],false]] call BIS_fnc_param;
_public = [_this,3,false,[false]] call BIS_fnc_param;
_code = compile format ["%1 = %2;",_var,_value];
[] call _code;
if(_public) then {
	_code = compile format ["publicVariable ""%1"";",_var];
	[] call _code;
};
[[0,format ["%1 = %2;",_var,_value]],"life_fnc_broadcast",_caller,false] spawn life_fnc_MP;
