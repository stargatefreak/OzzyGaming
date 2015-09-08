#include <macro.h>
/*
	File: fn_adminMarkers.sqf
	Sourced from Lystics Player Markers Loop
*/
if(__GETC__(life_ogAdminlvl415) < 3) exitWith {closeDialog 0; hint localize "STR_ANOTF_ErrorLevel";};
life_markers = !life_markers;
if(life_markers) then {
/* Temporary logging */
[[name player,side player,"Markers Enabled"],"OG_fnc_adminLog",false,false] spawn life_fnc_MP;
	PlayerMarkers = [];
	FinishedLoop = false;
	hint localize "STR_ANOTF_MEnabled";
	while{life_markers} do {
		{
			if !(_x in allUnits) then {
				deleteMarkerLocal str _x;
			};
		} forEach PlayerMarkers;
		PlayerMarkers = [];
		{
			if(alive _x && isplayer _x) then {
				deleteMarkerLocal str _x;
				_pSee = createMarkerLocal [str _x,getPos _x];
				_pSee setMarkerTypeLocal "mil_triangle";
				_pSee setMarkerPosLocal getPos _x;
				_pSee setMarkerSizeLocal [1,1];
				_pSee setMarkerTextLocal format['%1',_x getVariable["realname",name _x]];
				/* All the colors of the rainbow :D */
				switch (side _x) do {
					case "WEST": { _pSee setMarkerColorLocal ("ColorBLUFOR"); };
					case "EAST": { _pSee setMarkerColorLocal ("ColorOPFOR"); };
					case "GUER": { _pSee setMarkerColorLocal ("ColorIndependent"); };
					case "CIV":  { _pSee setMarkerColorLocal ("ColorCivilian"); };
					default      { _pSee setMarkerColorLocal ("ColorYellow"); };
				};
				/* _pSee setMarkerColorLocal ("ColorRed"); */
				PlayerMarkers = PlayerMarkers + [_x];
		};
	} forEach allUnits;
	sleep 0.2;
};
FinishedLoop = true;
} else {
/* Temporary logging */
[[name player,side player,"Markers Disabled"],"OG_fnc_adminLog",false,false] spawn life_fnc_MP;
	if(isNil "FinishedLoop") exitWith {};
	hint localize "STR_ANOTF_MDisabled";
	waitUntil{FinishedLoop};
	{
		deleteMarkerLocal str _x;
	} forEach PlayerMarkers;	
/* ??? fix ??? */
PlayerMarkers = [];
};