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

[] spawn {
    private["_pos","_dir","_buildingSearch","_typeOf"];
    oldBuildingTypes = [
        "Land_u_Shop_01_V1_F",
        "Land_u_Shop_02_V1_F",
        "Land_u_Shop_01_V1_dam_F",
        "Land_u_Shop_02_V1_dam_F",
        "Land_Shop_01_V1_ruins_F",
        "Land_Shop_02_V1_ruins_F"
    ];
    ruinsTypes = [
        "Land_Shop_01_V1_ruins_F",
        "Land_Shop_02_V1_ruins_F"
    ];

    newBuildingTypes = [
        "Land_i_Shop_01_V1_F",
        "Land_i_Shop_02_V1_F",
        "Land_i_Shop_01_V1_dam_F",
        "Land_i_Shop_02_V1_dam_F",
        "Land_i_Shop_01_V1_F",
        "Land_i_Shop_02_V1_F"
    ];
    buildingArray = [];
    _buildingSearch = nearestObjects [getMarkerPos "civ_spawn_2",oldBuildingTypes,2000];
    {
        oldBuilding = _x;
        buildingArray pushBack _x;
        _typeOf = typeOf oldBuilding;
        _pos = getPosATL oldBuilding;
        _dir = getDir oldBuilding;
        index = oldBuildingTypes find (typeOf oldBuilding);
     
        hideObject oldBuilding;
        hideObjectGlobal oldBuilding;
        
        newBuilding = (newBuildingTypes select index) createVehicle [0,0,0];
        newBuilding allowDamage false;
        newBuilding setDir _dir;
        newBuilding setPosATL _pos;
        newBuilding setVectorUp [0,0,1];
    } forEach _buildingSearch;
    publicVariable "buildingArray";
};