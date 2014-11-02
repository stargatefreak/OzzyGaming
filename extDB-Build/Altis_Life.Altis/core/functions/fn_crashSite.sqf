/* 
	File: fn_crashSite.sqf
	Auther: Aaron
	
	Hides the crashsite until within range to prevent anyone from using
	 the clear underwater infinity glitch to detect the crash site
 */
private["_wreck","_render"];
{
	_wreck = _x nearestObject "Land_UWreck_MV22_F";
	_wreck hideObject true;
} forEach goldZones;
_render = 0;
while {true} do {
	if(((getpos player) select 2) < -10 && _render == 0) then {
		{
			_wreck = _x nearestObject "Land_UWreck_MV22_F";
			_wreck hideObject false;
			_render = 1;
		} forEach goldZones;
	};
	if(((getpos player) select 2) > -10 && _render == 1) then {
		{
			_wreck = _x nearestObject "Land_UWreck_MV22_F";
			_wreck hideObject true;
			_render = 0;
		} forEach goldZones;
	};
	waitUntil {(((getpos player) select 2) < -10 && _render == 0) or (((getpos player) select 2) > -10 && _render == 1)};
};