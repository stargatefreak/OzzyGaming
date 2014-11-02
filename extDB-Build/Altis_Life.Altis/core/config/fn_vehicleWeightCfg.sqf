/*
	File: fn_vehicleWeightCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for vehicle weight.
*/
private["_className"];
_className = [_this,0,"",[""]] call BIS_fnc_param;

switch (_className) do
{
	case "C_Offroad_01_F": {84};
	case "B_G_Offroad_01_F": {84};
	case "B_Quadbike_01_F": {32};
	case "I_Truck_02_covered_F": {351};
	case "I_Truck_02_transport_F": {286};
	case "C_Hatchback_01_F": {52};
	case "C_Hatchback_01_sport_F": {59};
	case "C_SUV_01_F": {65};
	case "C_Van_01_transport_F": {130};
	case "I_G_Van_01_transport_F": {130};
	case "C_Van_01_box_F": {195};
	case "C_Boat_Civil_01_F": {110};
	case "C_Boat_Civil_01_police_F": {110};
	case "C_Boat_Civil_01_rescue_F": {110};
	case "B_Truck_01_box_F": {715};
	case "B_Truck_01_transport_F": {553};
	case "B_Truck_01_covered_F": {618};
	case "B_MRAP_01_F": {65};
	case "O_MRAP_02_F": {65};
	case "I_MRAP_03_F": {65};
	case "B_SDV_01_F": {250};
	case "B_Heli_Light_01_F": {117};
	case "O_Heli_Light_02_unarmed_F": {273};
	case "I_Heli_Transport_02_F": {488};
	case "I_Heli_light_03_unarmed_F": {358};
	case "C_Rubberboat": {58};
	case "O_Boat_Armed_01_hmg_F": {228};
	case "B_Boat_Armed_01_minigun_F": {228};
	case "I_Boat_Armed_01_minigun_F": {228};
	case "B_G_Boat_Transport_01_F": {58};
	case "B_Boat_Transport_01_F": {58};
	case "O_Truck_03_transport_F": {378};
	case "O_Truck_03_covered_F": {423};
	case "O_Truck_03_device_F": {455};
	case "Box_IND_AmmoVeh_F": {500};
	case "Box_IND_Grenades_F": {350};
	case "B_supplyCrate_F": {700};
	default {-1};
};