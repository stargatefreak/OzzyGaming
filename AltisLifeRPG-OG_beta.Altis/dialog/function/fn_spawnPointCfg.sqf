#include <macro.h>
/*
	File: fn_spawnPointCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for available spawn points depending on the units side.
	
	Return:
	[Spawn Marker,Spawn Name,Image Path]
*/
private["_side","_return","_len1","_len","_left","_donatorlvl","_cityimg","_rebelimg","_donatorimg","_hospitalimg","_minDistance","_copSpawnlist","_civSpawnlist","_medSpawnlist","_rebSpawnlist"];
_side = [_this,0,civilian,[civilian]] call BIS_fnc_param;
_cityimg = "\a3\ui_f\data\map\MapControl\watertower_ca.paa";
_rebelimg = "\a3\ui_f\data\map\Diary\Icons\playereast_ca.paa";
_hospitalimg = "\a3\ui_f\data\map\MapControl\hospital_ca.paa";
_return = [];
_minDistance = 5000;

_copSpawnlist = [
	["cop_spawn_1","Pyrgos Police HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
	["cop_spawn_2","Kavala Station","\a3\ui_f\data\map\MapControl\fuelstation_ca.paa"],
	["cop_spawn_3","Athira Station","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
	["cop_spawn_4","Police Airbase","\a3\ui_f\data\map\Markers\NATO\b_air.paa"],
	["cop_spawn_5","Highway Patrol","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
	["cop_spawn_6","Training HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
	["cop_spawn_7","Zaros Station","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
	["cop_spawn_8","Sofia Station","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"]
];

_civSpawnlist = [
	["civ_spawn_1","Pyrgos",_cityimg],
	["civ_spawn_2","Kavala",_cityimg],
	["civ_spawn_3","Athira",_cityimg],
	["civ_spawn_4","Sofia",_cityimg]
];

if(__GETC__(life_ozPmclvl) > 0) then {_civSpawnlist pushBack ["pmc_spawn","PMC Base",_cityimg]};

_medSpawnlist = [
	["medic_spawn_1","Pygros Hospital",_hospitalimg],
	["medic_spawn_2","Kavala Hospital",_hospitalimg],
	["medic_spawn_3","Athira Hospital",_hospitalimg],
	["medic_spawn_4","West Ambo Station",_hospitalimg],
	["medic_spawn_5","South Ambo Station",_hospitalimg],
	["medic_spawn_6","East Ambo Station",_hospitalimg]
];

_rebSpawnlist = [
	["reb_spawn_1","Rebel (Nth Abdera)",_rebelimg],
	["reb_spawn_2","Rebel (Sth Vikos)",_rebelimg],
	["reb_spawn_3","Rebel (Gang Area)",_rebelimg]
];

//Spawn Marker, Spawn Name, PathToImage
switch (_side) do
{
	case west:
	{		
		{	
		/* 	if(life_death_pos distance getMarkerPos str(_x select 0) > _minDistance) then { */
			_return pushBack _x;
		/* 	}; */
		} forEach _copSpawnlist;
	};
	
	case civilian:
	{
		{
		/* 	if(life_death_pos distance getMarkerPos (_x select 0) > _minDistance) then { */
			_return pushBack _x;
		/* 	}; */
		} forEach _civSpawnlist;
		
		if(count life_houses > 0) then {
			{
				_pos = call compile format["%1",_x select 0];
				_house = nearestBuilding _pos;
				_houseName = getText(configFile >> "CfgVehicles" >> (typeOf _house) >> "displayName");
				
			/* 	if(life_death_pos distance _pos > _minDistance) then { */
					_return pushBack [format["house_%1",_house getVariable "uid"],_houseName,"\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"];
				/* }; */
			} foreach life_houses;
		};
		
		{
			/* if(life_death_pos distance getMarkerPos (_x select 0) > _minDistance) then { */
			_return pushBack _x;
		/* 	}; */
		} forEach _rebSpawnlist;
		
	};
	
	case independent: {
		_return = _medSpawnlist;
	};
};

_return;