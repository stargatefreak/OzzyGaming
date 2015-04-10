/*
	File: fn_clearVehicleAmmo.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Clears the vehicle of ammo types that we don't want.
*/
private["_vehicle","_veh"];
_vehicle = [_this,0,Objnull,[Objnull]] call BIS_fnc_param;
if(isNull _vehicle) exitWith {}; //DAFUQ
_veh = typeOf _vehicle;
_whitelistedAmmo = [
	"60Rnd_CMFlareMagazine",
	"120Rnd_CMFlareMagazine",
	"240Rnd_CMFlareMagazine",
	"60Rnd_CMFlare_Chaff_Magazine",
	"120Rnd_CMFlare_Chaff_Magazine",
	"240Rnd_CMFlare_Chaff_Magazine",
	"192Rnd_CMFlare_Chaff_Magazine",
	"168Rnd_CMFlare_Chaff_Magazine",
	"300Rnd_CMFlare_Chaff_Magazine"
	];

{
	if!(_x in _whitelistedAmmo) then {
		_vehicle removeMagazineTurret [_x,[-1]]
	}
} forEach getArray (configfile >> "CfgVehicles" >> _veh >> "magazines");

{
	if!(_x in _whitelistedAmmo) then {
		_vehicle removeMagazineTurret [_x,[0]]
	}
} forEach getArray (configfile >> "CfgVehicles" >> _veh >> "Turrets" >> "MainTurret" >> "magazines");

clearWeaponCargoGlobal _vehicle;
clearMagazineCargoGlobal _vehicle;
clearItemCargoGlobal _vehicle;