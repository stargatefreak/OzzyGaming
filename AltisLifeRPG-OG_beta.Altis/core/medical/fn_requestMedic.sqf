/*
	File: fn_requestMedic.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	N/A
*/
private["_medicsOnline"];
_medicsOnline = {_x != player && {side _x == independent} && {alive _x}} count playableUnits > 0; //Check if medics (indep) are in the room.
OZ_medRequest = true;
if(_medicsOnline) then {
	//There is medics let's send them the request.
	[[life_corpse,profileName],"life_fnc_medicRequest",independent,FALSE] spawn life_fnc_MP;
} else {
	//No medics were online, send it to the police.
	[[life_corpse,profileName],"life_fnc_copMedicRequest",west,FALSE] spawn life_fnc_MP;
};
OG_maxTime = time + (4 * 60);

//Create a thread to monitor duration since last request (prevent spammage).
[] spawn 
{
	((findDisplay 7300) displayCtrl 7303) ctrlEnable false;
	sleep (2 * 60);
	((findDisplay 7300) displayCtrl 7303) ctrlEnable true;
};

[] spawn 
{
    ((findDisplay 7300) displayCtrl 7302) ctrlEnable false;
	sleep (4 * 60);
	((findDisplay 7300) displayCtrl 7302) ctrlEnable true;
};