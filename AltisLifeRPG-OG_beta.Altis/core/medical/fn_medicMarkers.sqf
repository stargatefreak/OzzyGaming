/*
	File: fn_medicMarkers.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Marks downed players on the map when it's open.
*/
private["_markers","_downedPlayers","_medics"];
_markers = [];
_downedPlayers = [];
_medics = [];

sleep 0.25;
if(visibleMap) then {
	// == == == == ==
	// Revive Markers
	// == == == == ==
	{
		_name = _x getVariable "name";
		_down = _x getVariable ["Revive",false];
		if(!isNil "_name" && !_down) then {
			_downedPlayers pushBack _x;
		};
	} foreach allDeadMen;
	
	//Loop through and create markers.
	{
		_marker = createMarkerLocal [format["%1_dead_marker",_x],visiblePosition _x];
		_marker setMarkerColorLocal "ColorRed";
		_marker setMarkerTypeLocal "loc_Hospital";
		_marker setMarkerTextLocal format["%1",(_x getVariable["name","Unknown Player"])];
		_markers pushBack [_marker,_x];
	} foreach _downedPlayers;

	// == == == == ==
	// Medic Markers
	// == == == == ==
	{if((side _x == independent) /*&& ("ItemRadio" in assignedItems _x)*/) then {_medics pushBack _x;}} foreach playableUnits;

	//Create markers
	{
		_marker = createMarkerLocal [format["%1_marker",_x],visiblePosition _x];
		_marker setMarkerColorLocal "ColorGreen";
		_marker setMarkerTypeLocal "Mil_dot";
		_marker setMarkerTextLocal format["%1", _x getVariable["realname",name _x]];
	
		_markers pushBack [_marker,_x];
	} foreach _medics;

	// Loop re-placing markers while map is open (allows for marker movement)
	while {visibleMap} do {
		{
			private["_marker","_unit"];
			_marker = _x select 0;
			_unit = _x select 1;
			if(!isNil "_unit") then
			{
				if(!isNull _unit) then
				{
					_marker setMarkerPosLocal (visiblePosition _unit);
				};
			};
		} foreach _markers;
		if(!visibleMap) exitWith {};
		sleep 0.02;
	};

	
	waitUntil {!visibleMap};
	{deleteMarkerLocal (_x select 0);} foreach _markers;
};