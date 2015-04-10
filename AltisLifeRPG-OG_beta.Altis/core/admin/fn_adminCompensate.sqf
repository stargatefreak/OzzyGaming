#include <macro.h>
/*
	File: fn_adminCompensate.sqf
	Author: ColinM9991
	
	Description:
	Figure it out.
*/
private["_value","_action","_unit"];
if(__GETC__(life_ogAdminlvl415) < 2) exitWith {closeDialog 0; hint localize "STR_ANOTF_ErrorLevel";};
_value = parseNumber ctrlText 9922;
_maxComp = 0;
if(_value < 0) exitWith {};
switch(__GETC__(life_ogAdminlvl415)) do
{
    //Moderator
    case(2):{
        _maxComp = 500000;
        if(_value > _maxComp) exitWith {hint format[localize "STR_ANOTF_Fail",_maxComp]};
    };
    //Admin
    case(3):{
        _maxComp = 1000000;
        if(_value > _maxComp) exitWith {hint format[localize "STR_ANOTF_Fail",_maxComp]};
    };
    //Server Admin
    case(4):{
        _maxComp = 1500000;
        if(_value > _maxComp) exitWith {hint format[localize "STR_ANOTF_Fail",_maxComp]};
    };
    //Server Operator
    case(5):{
        _maxComp = 2000000;
        if(_value > _maxComp) exitWith {hint format[localize "STR_ANOTF_Fail",_maxComp]};
    };
    //Owner
    case(6):{
        _maxComp = 10000000;
        if(_value > _maxComp) exitWith {hint format[localize "STR_ANOTF_Fail",_maxComp]};
    };
};


//if(!([str(_value)] call life_fnc_isnumeric)) exitWith {hint localize "STR_AIM_notnumeric"};

_unit = lbData[2902,lbCurSel (2902)];
_unit = call compile format["%1", _unit];
if(isNil "_unit") exitWith {};
if(isNull _unit) exitWith {};

if(_unit == player) exitWith {

	_action = [
		format [localize "STR_ANOTF_CompWarn",[_value] call life_fnc_numberText],
		localize "STR_Admin_Compensate",
		localize "STR_Global_Yes",
		localize "STR_Global_No"
	] call BIS_fnc_guiMessage;

	if(_action) then {
		life_ogCash415 = life_ogCash415 + _value;
		hint format [localize "STR_ANOTF_Success",[_value] call life_fnc_numberText];
		closeDialog 0;
        
	} else {
		hint localize "STR_NOTF_ActionCancel";
		closeDialog 0;
	};
};

if(_unit != player) exitWith {
	_action = [
		format [localize "STR_ANOTF_CompWarn1",[_value] call life_fnc_numberText,_unit getVariable["realname",name _unit]],
		localize "STR_Admin_Compensate",
		localize "STR_Global_Yes",
		localize "STR_Global_No"
	] call BIS_fnc_guiMessage;

	if(_action) then {
        [[player,_unit,_value],"DB_fnc_insertComp",false,false] call life_fnc_MP;
		hint format [localize "STR_ANOTF_Success1",[_value] call life_fnc_numberText,_unit getVariable["realname",name _unit]];
		[[_value,player],"TON_fnc_clientWireCompensate",_unit,false] spawn life_fnc_MP;
		closeDialog 0;
	} else {
		hint localize "STR_NOTF_ActionCancel";
		closeDialog 0;
	};
};