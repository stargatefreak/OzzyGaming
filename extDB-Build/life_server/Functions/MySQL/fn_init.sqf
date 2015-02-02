/*
	File: init.sqf
	Author:

	Description:
	Initializes extDB2, loads Protocol + options if any + Locks extDB2

	Parameters:
		0: STRING Database name as in extDB2-conf.ini
		1: STRING Protocol to enable
		2: STRING Optional Protocol Options i.e db_conf name for DB_CUSTOM
*/

private["_database","_protocol","_protocol_options","_return","_result","_extDB2_ID"];

_database = [_this,0,"",[""]] call BIS_fnc_param;
_protocol = [_this,1,"",[""]] call BIS_fnc_param;
_protocol_options = [_this,2,"",[""]] call BIS_fnc_param;


_return = false;

if ( isNil {uiNamespace getVariable "extDB2_ID"}) then
{
	// extDB2 Version
	_result = "extDB2" callExtension "9:VERSION";

	diag_log format ["extDB2: Version: %1", _result];
	if(_result == "") exitWith {diag_log "extDB2: Failed to Load"; false};
	if ((parseNumber _result) < 20) exitWith {diag_log "Error: extDB2 version 20 or Higher Required";};

	// extDB2 Connect to Database
	_result = call compile ("extDB2" callExtension format["9:DATABASE:Database2", _database]);
	if (_result select 0 == 0) exitWith {diag_log format ["extDB2: Error Database: %1", _result]; false};
	diag_log "extDB2: Connected to Database";

	// Generate Randomized Protocol Name
	_extDB2_ID = str(round(random(999999)));
	extDB2_ID = compileFinal _extDB2_ID;

	// extDB2 Load Protocol
	_result = [0];
	if (_protocol_options != "") then
	{
		_result = call compile ("extDB2" callExtension format["9:ADD:%1:%2:%3", _protocol, _extDB2_ID, _protocol_options]);
	}
	else
	{
		_result = call compile ("extDB2" callExtension format["9:ADD:%1:%2:%3", _protocol, _extDB2_ID, _protocol_options]);
	};
	if (_result select 0 == 0) exitWith {diag_log format ["extDB2: Error Database Setup: %1", _result]; false};
	diag_log format ["extDB2: Initalized %1 Protocol", _protocol];


	// extDB2 Lock
	"extDB2" callExtension "9:LOCK";
	diag_log "extDB2: Locked";

	// Save Randomized ID
	uiNamespace setVariable ["extDB2_ID", _extDB2_ID];

	_return = true;
}
else
{
	extDB2_ID = compileFinal str(uiNamespace getVariable "extDB2_ID");
	diag_log "extDB2: Already Setup";
	_return = true;
};

_return
