/*
	File: fn_onPlayerKilled.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	When the player dies collect various information about that player
	and pull up the death dialog / camera functionality.
*/
private["_unit","_killer"];
disableSerialization;
_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_killer = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param;
life_death_pos = getPos _unit;
//Set some vars
_unit setVariable["Revive",FALSE,TRUE]; //Set the corpse to a revivable state.
_unit setVariable["name",profileName,TRUE]; //Set my name so they can say my name.
_unit setVariable["restrained",FALSE,TRUE];
_unit setVariable["Escorting",FALSE,TRUE];
_unit setVariable["transporting",FALSE,TRUE]; //Why the fuck do I have this? Is it used?
_unit setVariable["steam64id",(getPlayerUID player),true]; //Set the UID.
_unit setVariable["missingOrgan",FALSE,TRUE]; //I DONT KNOW WHY SOMETIMES THEY ARE CAPS or not
_unit setVariable["hasOrgan",FALSE,TRUE]; 
/* life_onDeath = true;

[8] call SOCK_fnc_updatePartial; */
//Setup our camera view
life_deathCamera  = "CAMERA" camCreate (getPosATL _unit);
showCinemaBorder TRUE;
life_deathCamera cameraEffect ["Internal","Back"];
createDialog "DeathScreen";
life_deathCamera camSetTarget _unit;
life_deathCamera camSetRelPos [0,3.5,4.5];
life_deathCamera camSetFOV .5;
life_deathCamera camSetFocus [50,0];
life_deathCamera camCommit 0;

(findDisplay 7300) displaySetEventHandler ["KeyDown","if((_this select 1) == 1) then {true}"]; //Block the ESC menu

//Create a thread for something?
_unit spawn
{
	private["_RespawnBtn","_MedicBtn","_Timer","_Medics"];
	disableSerialization;
	_RespawnBtn = ((findDisplay 7300) displayCtrl 7302);
	_MedicBtn = ((findDisplay 7300) displayCtrl 7303);
	_Timer = ((findDisplay 7300) displayCtrl 7301);
	_Medics = [independent] call life_fnc_playerCount;
	if(_Medics == 0) then {_MedicBtn ctrlEnable false} else {_MedicBtn ctrlEnable true};
	OG_maxTime = time + (life_respawn_timer * 60);
	_RespawnBtn ctrlEnable false;
	waitUntil {_Timer ctrlSetText format[localize "STR_Medic_Respawn",[(OG_maxTime - time),"MM:SS.MS"] call BIS_fnc_secondsToString]; 
	round(OG_maxTime - time) <= 0 OR isNull _this};
	_RespawnBtn ctrlEnable true;
	_Timer ctrlSetText localize "STR_Medic_Respawn_2";
};

[] spawn life_fnc_deathScreen;

//New Life Rule Timer 
if(life_nlrtimer_running) then
{
life_nlrtimer_stop = true;
waitUntil {!life_nlrtimer_running};
};
[] spawn life_fnc_newLifeRule;

//Create a thread to follow with some what precision view of the corpse.
[_unit] spawn
{
	private["_unit"];
	_unit = _this select 0;
	waitUntil {if(speed _unit == 0) exitWith {true}; life_deathCamera camSetTarget _unit; life_deathCamera camSetRelPos [0,3.5,4.5]; life_deathCamera camCommit 0;};
};

//Make the killer wanted

if(!isNull _killer && _killer != _unit) then {
    if(vehicle _killer != _killer && (driver vehicle _killer) == _killer) then {
		[[name _killer,side _killer,str(getPosATL _killer),name _unit,side _unit,str(getPosASL _unit),typeOf (vehicle _killer),getPlayerUID _killer,getPlayerUID _unit, mapGridPosition _killer, mapGridPosition _unit],"OG_fnc_killLog",false,false] spawn life_fnc_MP;
	} else {
        [[name _killer,side _killer,str(getPosATL _killer),name _unit,side _unit,str(getPosASL _unit),str(currentWeapon _killer),getPlayerUID _killer,getPlayerUID _unit, mapGridPosition _killer, mapGridPosition _unit],"OG_fnc_killLog",false,false] spawn life_fnc_MP;
	};
};
if(!isNull _killer && {_killer != _unit} && {side _killer != west} && {alive _killer}) then {
	if(vehicle _killer isKindOf "LandVehicle") then {
		[[getPlayerUID _killer,_killer getVariable["realname",name _killer],"187V"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
		//Get rid of this if you don't want automatic vehicle license removal.
		if(!local _killer) then {
			[[2],"life_fnc_removeLicenses",_killer,FALSE] spawn life_fnc_MP;
		};
	} else {
		switch(playerside) then {
			case independent: {
				[[getPlayerUID _killer,_killer getVariable["realname",name _killer],"187M"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
			};
			case west: {
				[[getPlayerUID _killer,_killer getVariable["realname",name _killer],"187L"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
			};
			default {
				[[getPlayerUID _killer,_killer getVariable["realname",name _killer],"187"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
			};
		};
		if(!local _killer) then {
			[[3],"life_fnc_removeLicenses",_killer,FALSE] spawn life_fnc_MP;
		};
	};
};

//Killed by cop stuff...
if(side _killer == west && playerSide != west) then {
	life_copRecieve = _killer;
	//Did I rob the federal reserve?
	if(!life_use_atm && {life_ogCash415 > 0}) then {
		[format[localize "STR_Cop_RobberDead",[life_ogCash415] call life_fnc_numberText],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		life_ogCash415 = 0;
	};
};

if(!isNull _killer && {_killer != _unit}) then {
	life_removeWanted = true;
};

_handle = [_unit] spawn life_fnc_dropItems;
waitUntil {scriptDone _handle};

life_hunger = 100;
life_thirst = 100;
life_carryWeight = 0;
life_ogCash415 = 0;

[] call life_fnc_hudUpdate; //Get our HUD updated.
[[player,life_sidechat,playerSide],"TON_fnc_managesc",false,false] spawn life_fnc_MP;

[0] call SOCK_fnc_updatePartial;
[3] call SOCK_fnc_updatePartial;
