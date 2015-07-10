/*
	File: fn_queryRequest.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Handles the incoming request and sends an asynchronous query 
	request to the database.
	
	Return:
	ARRAY - If array has 0 elements it should be handled as an error in client-side files.
	STRING - The request had invalid handles or an unknown error and is logged to the RPT.
*/
private["_uid","_side","_query","_return","_queryResult","_qResult","_handler","_thread","_tickTime","_loops","_returnCount"];
_uid = [_this,0,"",[""]] call BIS_fnc_param;
_side = [_this,1,sideUnknown,[civilian]] call BIS_fnc_param;
_ownerID = [_this,2,ObjNull,[ObjNull]] call BIS_fnc_param;

if(isNull _ownerID) exitWith {};
_ownerID = owner _ownerID;

/*
	_returnCount is the count of entries we are expecting back from the async call.
	The other part is well the SQL statement.
*/
_query = switch(_side) do {
	case west: {_returnCount = 11; format["SELECT playerid, name, cash, bankacc, adminlevel, 1, cop_licenses, cop_gear, copCounter, (civCounter + medCounter), aliases, coplevel, copPilotLevel, copPilotGrounded, copBlacklist FROM players WHERE playerid='%1'",_uid];};
	case civilian: {_returnCount = 10; format["SELECT playerid, name, cash, bankacc, adminlevel, 1, civ_licenses, civ_gear, civCounter, (copCounter + medCounter), aliases, pmclevel, arrested FROM players WHERE playerid='%1'",_uid];};
	case independent: {_returnCount = 10; format["SELECT playerid, name, cash, bankacc, adminlevel, 1, med_licenses, med_gear, medCounter, (civCounter + copCounter), aliases, mediclevel, medicPilotGrounded, medicBlacklist FROM players WHERE playerid='%1'",_uid];};
};

/* waitUntil{sleep (random 0.3); !DB_Async_Active}; */
_tickTime = diag_tickTime;
_queryResult = [_query,2] call DB_fnc_asyncCall;

if (OZG_Debug) then {
    diag_log "------------- Client Query Request -------------";
    diag_log format["QUERY: %1",_query];
    diag_log format["Time to complete: %1 (in seconds)",(diag_tickTime - _tickTime)];
    diag_log format["Result: %1",_queryResult];
    diag_log "------------------------------------------------";
};

if(typeName _queryResult == "STRING") exitWith {
	[[],"SOCK_fnc_insertPlayerInfo",_ownerID,false,true] spawn life_fnc_MP;
};

if(count _queryResult == 0) exitWith {
	[[],"SOCK_fnc_insertPlayerInfo",_ownerID,false,true] spawn life_fnc_MP;
};

//Blah conversion thing from a2net->extDB
private["_tmp"];
_tmp = _queryResult select 2;
_queryResult set[2,[_tmp] call DB_fnc_numberSafe];
_tmp = _queryResult select 3;
_queryResult set[3,[_tmp] call DB_fnc_numberSafe];

//Parse Aliases
_new = [(_queryResult select 10)] call DB_fnc_mresToArray;
_queryResult set[10,_new];

//Parse licenses (Always index 6)
_new = [(_queryResult select 6)] call DB_fnc_mresToArray;
if(typeName _new == "STRING") then {_new = call compile format["%1", _new];};
_queryResult set[6,_new];

//Convert tinyint to boolean
_old = _queryResult select 6;
for "_i" from 0 to (count _old)-1 do
{
	_data = _old select _i;
	_old set[_i,[_data select 0, ([_data select 1,1] call DB_fnc_bool)]];
};

_queryResult set[6,_old];

// Parse gear (always 7)
_new = [(_queryResult select 7)] call DB_fnc_mresToArray;
if(typeName _new == "STRING") then {_new = call compile format["%1", _new];};
_queryResult set[7,_new];

//Parse data for specific side.
switch (_side) do {
	case west: {
		// blacklist
		_queryResult set[14,([_queryResult select 14,1] call DB_fnc_bool)];
	};
	
	case civilian: {
		// arrested
		_queryResult set[12,([_queryResult select 12,1] call DB_fnc_bool)];
		// Civ query is 10 long... house will be 11, and 12 will be gangs
		_houseData = _uid spawn TON_fnc_fetchPlayerHouses;
		waitUntil {scriptDone _houseData};
		_queryResult pushBack (missionNamespace getVariable[format["houses_%1",_uid],[]]);
		_gangData = _uid spawn TON_fnc_queryPlayerGang;
		waitUntil{scriptDone _gangData};
		_queryResult pushBack (missionNamespace getVariable[format["gang_%1",_uid],[]]);
	};
	
	case independent: {
		// blacklist
		_queryResult set[13,([_queryResult select 13,1] call DB_fnc_bool)];
	};
};

_keyArr = missionNamespace getVariable [format["%1_KEYS_%2",_uid,_side],[]];
_queryResult set[15,_keyArr];

[_queryResult,"SOCK_fnc_requestReceived",_ownerID,false] spawn life_fnc_MP;