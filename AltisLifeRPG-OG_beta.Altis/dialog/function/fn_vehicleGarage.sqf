/*
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Vehicle Garage, why did I spawn this in an action its self?
*/
private["_spawnPos","_dir","_type","_impound"];
_type = [_this,1,"",[""]] call BIS_fnc_param;
_spawnPos = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_impound = [_this,2,false,[false]] call BIS_fnc_param;

life_garage_sp = [(_spawnPos modelToWorld [-11,0,0]),(getDir _spawnPos)-90];
life_garage_type = _type;
if(_impound) then {
    [[getPlayerUID player,playerSide,_type,player,true],"TON_fnc_getVehicles",false,false] spawn life_fnc_MP;
} else {
    [[getPlayerUID player,playerSide,_type,player],"TON_fnc_getVehicles",false,false] spawn life_fnc_MP;
};
createDialog "Life_impound_menu";
disableSerialization;
ctrlSetText[2802,(localize "STR_ANOTF_QueryGarage")];