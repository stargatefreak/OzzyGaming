#include <macro.h>
/*
File:
Author: Bryan "Tonic" Boardwine
Description:
Master configuration list / array for buyable vehicles & prices and their shop.
*/

// PRICES NEED FIXING

private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{
    case "kart_shop":
    {
        _return = [
            ["C_Kart_01_Blu_F",15000],
            ["C_Kart_01_Fuel_F",15000],
            ["C_Kart_01_Red_F",15000],
            ["C_Kart_01_Vrana_F",15000]
        ];
    };

    case "med_shop":
    {
        _return = [
            ["C_Offroad_01_F",2400],
            ["I_Truck_02_medical_F",24000],
            ["O_Truck_03_medical_F",40000],
            ["B_Truck_01_medical_F",48000]
        ];
    };

    case "med_air_hs": 
    {
        _return = [
            ["B_Heli_Light_01_F",50000],
            ["C_Heli_Light_01_civil_F",50000],
            ["O_Heli_Light_02_unarmed_F",100000]
        ];
    };

    case "civ_car":
    {
        _return = [
            ["B_Quadbike_01_F",2500],
            ["C_Hatchback_01_F",9500],
            ["C_Offroad_01_F",16000],
            ["C_SUV_01_F",29000],
            ["C_Van_01_transport_F",35000]
        ];
    };

    case "civ_truck":
    {
        _return =[
            ["C_Van_01_box_F",84000],
            ["I_Truck_02_transport_F",200000],
            ["I_Truck_02_covered_F",250000],
            ["B_Truck_01_transport_F",400000],
            ["B_Truck_01_box_F",1400000],
            ["O_Truck_03_transport_F",315000],
            ["O_Truck_03_covered_F",380000],
            ["O_Truck_03_device_F",450000]
        ];	
    };

    case "reb_car":
    {
        _return = [
            ["B_Quadbike_01_F",2500],
            ["O_G_Offroad_01_F",15000],
            ["O_MRAP_02_F",750000],
            ["B_Heli_Light_01_F",425000],
            ["C_Heli_Light_01_civil_F",425000],
            ["I_MRAP_03_F",4000000],
            ["B_Truck_01_box_F",1350000],
	/*		["O_APC_Wheeled_02_rcws_F",1550000],
			["I_APC_Wheeled_03_cannon_F",2550000], */
            ["O_Heli_Light_02_unarmed_F",1000000],
            ["C_Hatchback_01_sport_F",100000],
            ["I_Heli_light_03_unarmed_F",3000000],
            ["I_Heli_Transport_02_F",3000000],
			["B_Heli_Transport_03_unarmed_F",2800000],
			["O_Heli_Transport_04_F",1500000],
			["O_Heli_Transport_04_covered_F",1900000]
        ];
    };

    case "reb_air":
    {
        _return = [
            ["B_Heli_Light_01_F",425000],
            ["O_Heli_Light_02_unarmed_F",1000000]
        ];
    };

    case "cop_car":
    {
        switch(true) do {
            case (__GETC__(life_ozCoplvl) == 0):
			{
                _return = [
                    ["C_Offroad_01_F",5000]
                ];
			};
            case ((__GETC__(life_ozCoplvl) > 0) AND (__GETC__(life_ozCoplvl) < 5)):
			{
                _return = [
                    ["C_Offroad_01_F",4500],
                    ["C_SUV_01_F",10000],
                    ["C_Hatchback_01_sport_F",20000]
                ];
			};
            case ((__GETC__(life_ozCoplvl) > 4) AND (__GETC__(life_ozCoplvl) < 7)):
			{
                _return = [
                    ["C_Offroad_01_F",4000],
                    ["C_SUV_01_F",9000],
                    ["C_Hatchback_01_sport_F",17000],
                    ["B_MRAP_01_F",70000]
                ];
			};
            case (__GETC__(life_ozCoplvl) > 6):
			{
                _return = [
                    ["C_Offroad_01_F",3500],
                    ["C_SUV_01_F",8000],
                    ["C_Hatchback_01_sport_F",14000],
                    ["B_MRAP_01_F",60000],
                    ["B_APC_Tracked_01_rcws_F",120000]
                ];
			};
        };
    };

    case "civ_air":
    {
        _return = [
            ["B_Heli_Light_01_F",425000],
            ["C_Heli_Light_01_civil_F",425000],
            ["O_Heli_Light_02_unarmed_F",1000000],
            ["I_Heli_Transport_02_F",3200000],
			["B_Heli_Transport_03_unarmed_F",2800000],
			["O_Heli_Transport_04_F",1500000],
			["O_Heli_Transport_04_covered_F",1900000]
        ];
    };

    case "cop_air":
    {
        switch(true) do {
            case ((__GETC__(life_ozCoplvl) > 1) AND (__GETC__(life_ozCoplvl) < 6)):
			{
                _return = [
				["B_Heli_Light_01_F",80000],
				["C_Heli_Light_01_civil_F",80000]
				];
			};
            
            case (__GETC__(life_ozCoplvl) >= 6):
			{
                _return = [
                    ["B_Heli_Light_01_F",70000],
                    ["C_Heli_Light_01_civil_F",70000],
                    ["B_Heli_Transport_01_F",150000],
					["B_Heli_Transport_03_unarmed_F",2200000],
					["O_Heli_Transport_04_F",1100000],
					["O_Heli_Transport_04_covered_F",1500000]
                ];
			};
            default { _return = ""; };
        };
        if (__GETC__(life_ozCoplvl) >= 4) then {
        _return pushBack ["I_Heli_light_03_unarmed_F",800000];
        }
    };

    case "cop_airhq":
    {
        switch(true) do {
            case ((__GETC__(life_ozCoplvl) > 1) AND (__GETC__(life_ozCoplvl) < 6)):
			{
                _return = [
				["B_Heli_Light_01_F",80000],
				["C_Heli_Light_01_civil_F",80000]
				];
			};
            case (__GETC__(life_ozCoplvl) >= 6):
			{
                _return = [
                    ["B_Heli_Light_01_F",70000],
                    ["C_Heli_Light_01_civil_F",70000],
                    ["B_Heli_Transport_01_F",150000],
					["B_Heli_Transport_03_unarmed_F",2200000],
					["O_Heli_Transport_04_F",1100000],
					["O_Heli_Transport_04_covered_F",1500000]
                ];
			};
            default { _return = ""; };
        };
        if (__GETC__(life_ozCoplvl) >= 4) then {
        _return pushBack ["I_Heli_light_03_unarmed_F",800000];
        }
    };

    case "civ_ship":
    {
        _return = [
            ["C_Rubberboat",5000],
            ["C_Boat_Civil_01_F",22000],
            ["B_Boat_Transport_01_F",22000],
            ["B_SDV_01_F",5000]
        ];
    };

    case "cop_ship":
    {
		switch(true) do {
			case (__GETC__(life_ozCoplvl) < 2):
			{
                _return = [["B_Boat_Transport_01_F",5000]];
			};
			case (__GETC__(life_ozCoplvl) == 2):
			{
                _return = [
                    ["B_Boat_Transport_01_F",5000],
                    ["C_Boat_Civil_01_police_F",5000]
                ];
			};
			case (__GETC__(life_ozCoplvl) > 2):
			{
                _return = [
                    ["B_Boat_Transport_01_F",5000],
                    ["C_Boat_Civil_01_police_F",5000],
                    ["B_SDV_01_F",5000]
                ];
			};
            default { _return = ""; };
        };
    };
	case "donator_1":
	{
        switch(true) do {
            case (__GETC__(life_Ozdonator) == 1):
			{
                _return = [
                    ["B_Quadbike_01_F",2000],
                    ["C_Offroad_01_F",10000],
                    ["C_SUV_01_F",15000],
                    ["B_Heli_Light_01_F",300000],
                    ["C_Heli_Light_01_civil_F",300000],
                    ["C_Van_01_transport_F",20000],
                    ["B_Truck_01_box_F",1100000],
                    ["O_Heli_Light_02_unarmed_F",800000],
                    ["C_Hatchback_01_sport_F",17500],
                    ["I_Heli_Transport_02_F",2800000],
                    ["I_Heli_light_03_unarmed_F",2400000],
                    ["I_MRAP_03_F",2500000],
					["B_Heli_Transport_03_unarmed_F",2240000],
					["O_Heli_Transport_04_F",1200000],
					["O_Heli_Transport_04_covered_F",1520000]
                ];
			};
            case (__GETC__(life_Ozdonator) == 2):
			{
                _return = [
                    ["B_Quadbike_01_F",1800],
                    ["C_Offroad_01_F",8000],
                    ["C_SUV_01_F",10000],
                    ["B_Heli_Light_01_F",250000],
                    ["C_Heli_Light_01_civil_F",250000],
                    ["C_Van_01_transport_F",15500],
                    ["B_Truck_01_box_F",800000],
                    ["O_Heli_Light_02_unarmed_F",800000],
                    ["C_Hatchback_01_sport_F",15000],
                    ["I_Heli_Transport_02_F",2000000],
                    ["I_Heli_light_03_unarmed_F",2000000],
                    ["I_MRAP_03_F",2000000],
                    ["B_Heli_Transport_03_unarmed_F",1792000],
                    ["O_Heli_Transport_04_F",960000],
                    ["O_Heli_Transport_04_covered_F",1216000]
                ];
			};
            case (__GETC__(life_Ozdonator) == 3):
			{
                _return = [
                    ["B_Quadbike_01_F",1600],
                    ["C_Offroad_01_F",7000],
                    ["C_SUV_01_F",8000],
                    ["B_Heli_Light_01_F",200000],
                    ["C_Heli_Light_01_civil_F",200000],
                    ["C_Van_01_transport_F",10000],
                    ["B_Truck_01_box_F",600000],
                    ["O_Heli_Light_02_unarmed_F",600000],
                    ["C_Hatchback_01_sport_F",8000],
                    ["I_Heli_Transport_02_F",1000000],
                    ["I_Heli_light_03_unarmed_F",1700000],
                    ["I_MRAP_03_F",1000000],
                    ["B_Heli_Transport_03_unarmed_F",1433600],
                    ["O_Heli_Transport_04_F",768000],
                    ["O_Heli_Transport_04_covered_F",972800]
                ];
			};
            case (__GETC__(life_Ozdonator) > 3):
			{
                _return = [
                    ["B_Quadbike_01_F",1450],
                    ["C_Offroad_01_F",6000],
                    ["C_SUV_01_F",7000],
                    ["B_Heli_Light_01_F",150000],
                    ["C_Heli_Light_01_civil_F",150000],
                    ["C_Van_01_transport_F",8000],
                    ["B_Truck_01_box_F",300000],
                    ["O_Heli_Light_02_unarmed_F",500000],
                    ["C_Hatchback_01_sport_F",7000],
                    ["I_Heli_Transport_02_F",800000],
                    ["I_Heli_light_03_unarmed_F",1400000],
                    ["I_MRAP_03_F",800000],
                    ["B_Heli_Transport_03_unarmed_F",1146880],
                    ["O_Heli_Transport_04_F",768000],
                    ["O_Heli_Transport_04_covered_F",778240]
                ];
			};
		};
	};
};
_return;
