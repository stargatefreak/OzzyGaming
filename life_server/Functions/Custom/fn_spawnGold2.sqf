private["_radius", "_diameter", "_base", "_pos"];
/* 
======================================================================================================================================================================================================
																	CONFIG AREA
======================================================================================================================================================================================================
Set the _radius
*/
_radius = 500;
/* 
Enter the name of the Markers that you will be using that will mark the center of the spawn zone
*/
goldZonesCfg = ["goldbar_1","goldbar_2","goldbar_3","goldbar_4","goldbar_5","goldbar_6","goldbar_7","goldbar_8","goldbar_9","goldbar_10","goldbar_11","goldbar_12","goldbar_13"];
/* 
======================================================================================================================================================================================================
										DO NOT EDIT ANYWHERE BELOW OTHERWISE IT COULD BREAK THE SPAWN
======================================================================================================================================================================================================
*/
_diameter = _radius * 2;
goldZones = [];
{
	_base = "Land_UWreck_MV22_F" createVehicle (getMarkerPos _x);
	_base enableSimulation false;
	_base setPosATL [(random _diameter) - _radius + ((getMarkerPos _x) select 0),(random _diameter) - _radius + ((getMarkerPos _x) select 1),0];
	_pos = getPos _base;
	goldZones pushBack _pos;
} foreach goldZonesCfg;

publicVariable "goldZonesCfg";
publicVariable "goldZones";