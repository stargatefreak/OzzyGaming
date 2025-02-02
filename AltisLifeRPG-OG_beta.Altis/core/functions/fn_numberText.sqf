/*
	Author: Karel Moricky

	Description:
	Convert a number into string (avoiding scientific notation)

	Parameter(s):
	_this: NUMBER

	Returns:
	STRING
*/
private ["_number","_mod","_digots","_digitsCount","_modBase","_numberText"];

_number = [_this,0,0,[0]] call bis_fnc_param;
_mod = [_this,1,3,[1]] call bis_fnc_param;
_noComma = [_this,2,false,[false]] call bis_fnc_param;

_digits = _number call bis_fnc_numberDigits;
_digitsCount = count _digits - 1;

if(_noComma) then {
	_modBase = _digitsCount % _mod;
	_numberText = "";
	{
		_numberText = _numberText + str _x;
	} foreach _digits;
} else {
	_modBase = _digitsCount % _mod;
	_numberText = "";
	{
		_numberText = _numberText + str _x;
		if ((_foreachindex - _modBase) % (_mod) == 0 && _foreachindex != _digitsCount) then {_numberText = _numberText + ",";};
	} foreach _digits;
};
_numberText