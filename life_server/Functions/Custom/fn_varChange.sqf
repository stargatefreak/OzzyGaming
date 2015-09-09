/*
    File: fn_varChange
    Author:  Aaron (OzzyGaming.com)
    Email: aaron@ozzygaming.com
    
    Changes serverside variables
*/
private ["_var","_value","_code"];
_var = [_this,0,"",[""]] call BIS_fnc_param;
_value = [_this,0,0,["",0,[]]] call BIS_fnc_param;
_code = compile format ["%1 = %2;",_var,_value];
[] call _code;