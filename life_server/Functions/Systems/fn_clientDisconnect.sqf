/*
	Author: Bryan "Tonic" Boardwine
	
	Description:
	When a player disconnect it goes through the all the dead bodies
	and removes bodies owned by the server. This is built for the new
	medical / EMS system.
*/
private["_uid","_name","_pid","_gear","_cash","_atm","_containers","_query"];
_uid = _this select 0;
_name = _this select 2;
_gear = [];
_cash = 0;
_atm = 0;

{
    _gear = [_x] call TON_fnc_saveGear;
    _atm = _x getVariable["atm",0];
    _cash = _x getVariable["money",0];
	_pid = _x getVariable["steam64ID",""];
    _pos = getposATL _x;
    _side = switch(side _x) do {
        case west: {"cop"};
        case civilian: {"civ"};
        case independent: {"med"};
    };
    
	if(_uid == _pid OR _pid == "" OR owner _x < 3) then {
		_containers = nearestObjects[_x,["WeaponHolderSimulated"],5]; //Fetch list of containers (Simulated = weapons)
		{deleteVehicle _x;} foreach _containers; //Delete the containers.
		deleteVehicle _x; //Get rid of the corpse.
	};
} foreach allDeadMen;

_uid spawn TON_fnc_houseCleanup;