private["_veh"];
_veh = [_this,0,objNull,[objNull]] call BIS_fnc_param;

if(isNull _veh) exitWith {diag_log "--- ERROR DELETING VEHICLE : Vehicle is objNull ---"};

deleteVehicle _veh;	