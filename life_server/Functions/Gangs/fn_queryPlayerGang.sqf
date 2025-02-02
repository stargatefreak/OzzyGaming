/*
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Queries to see if the player belongs to any gang.
*/
private["_query","_queryResult"];
diag_log format["Querying Gangs for: %1",_this];
_query = format["SELECT id, owner, name, maxmembers, bank, members FROM gangs WHERE active='1' AND members LIKE '%2%1%2'",_this,"%"];
waitUntil{!DB_Async_Active};
_queryResult = [_query,2] call DB_fnc_asyncCall;
diag_log format["-------------------------------------"];
diag_log format["Gangs Result for: %1",_this];
diag_log format["Gangs Result: %1",_queryResult];

if(count _queryResult != 0) then {
	_tmp = [_queryResult select 5] call DB_fnc_mresToArray;
	if(typeName _tmp == "STRING") then {_tmp = call compile format["%1",_tmp];};
	_queryResult set[5, _tmp];
};
missionNamespace setVariable[format["gang_%1",_this],_queryResult];
diag_log format["gang_%1 - %2",_this,_queryResult];
diag_log format["-------------------------------------"];