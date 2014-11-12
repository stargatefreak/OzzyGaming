/*
	Author: Bryan "Tonic" Boardwine
	
	Description:
	When a player disconnect it goes through the all the dead bodies
	and removes bodies owned by the server. This is built for the new
	medical / EMS system.
*/
private["_uid","_name","_query2","_tmp","_tmp1","_bank","_queryResult2","_value","_tickTime"];
_uid = _this select 0;
_name = _this select 2;
{
	_pid = _x getVariable["steam64ID",""];
	if(_uid == _pid OR _pid == "" OR owner _x < 3) then {
		_containers = nearestObjects[_x,["WeaponHolderSimulated"],5]; //Fetch list of containers (Simulated = weapons)
		{deleteVehicle _x;} foreach _containers; //Delete the containers.
		deleteVehicle _x; //Get rid of the corpse.
	};
	_query2 = format["SELECT onDeath, bankacc FROM players where playerid = '%1'",_uid];
	waitUntil {!DB_Async_Active};
	_queryResult2 = [_query2,2] call DB_fnc_asyncCall;
	_tmp = parseNumber (_queryResult2 select 0);
	_value = ([_tmp,1] call DB_fnc_bool);
	_queryResult2 set[0,_value];
	_tmp1 = parseNumber str(_queryResult2 select 1);
	/* _value = [_tmp1] call DB_fnc_numberSafe; */
	_queryResult2 set[1,_tmp1];
	_bank = _queryResult2 select 1;

	diag_log format["------------- PLAYER %1 DISCONNECTED -------------",_name];
	diag_log format["------------- %1 DEATH RETURN:-  %2 ---------",_name,_queryResult2];

	if(_queryResult2 select 0) then {
		_query2 = format["UPDATE players SET bankacc=(bankacc * 0.75), lastonline = NOW(), med_gear = '""[]""', civ_gear = '""[]""', cop_gear = '""[]""', onDeath = 0 WHERE playerid='%1'",_uid];
		waitUntil {!DB_Async_Active};
		[_query2,1] call DB_fnc_asyncCall;
	};
} foreach allDeadMen;

_uid spawn TON_fnc_houseCleanup;