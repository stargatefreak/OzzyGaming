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
            ["C_Kart_01_Blu_F",22500],
            ["C_Kart_01_Fuel_F",22500],
            ["C_Kart_01_Red_F",22500],
            ["C_Kart_01_Vrana_F",22500]
        ];
    };

    case "med_shop":
    {
        _return = [
            ["C_Offroad_01_F",3500],
            ["I_Truck_02_medical_F",36000],
            ["O_Truck_03_medical_F",60000],
            ["B_Truck_01_medical_F",72000]
        ];
    };

    case "med_air_hs": 
    {
        _return = [
            ["B_Heli_Light_01_F",75000],
            ["C_Heli_Light_01_civil_F",75000],
            ["O_Heli_Light_02_unarmed_F",150000]
        ];
    };

    case "civ_car":
    {
        _return = [
            ["B_Quadbike_01_F",4000],
            ["C_Hatchback_01_F",15000],
            ["C_Offroad_01_F",24000],
            ["C_SUV_01_F",43500],
            ["C_Van_01_transport_F",52500]
        ];
    };

    case "civ_truck":
    {
        _return =[
            ["C_Van_01_box_F",125000],
            ["I_Truck_02_transport_F",300000],
            ["I_Truck_02_covered_F",375000],
            ["B_Truck_01_transport_F",600000],
            ["B_Truck_01_box_F",2100000],
            ["O_Truck_03_transport_F",470000],
            ["O_Truck_03_covered_F",570000],
            ["O_Truck_03_device_F",675000]
        ];	
    };

    case "reb_car":
    {
        _return = [
            ["B_Quadbike_01_F",4000],
            ["O_G_Offroad_01_F",22500],
            ["O_MRAP_02_F",1300000],
            ["B_Heli_Light_01_F",638000],
            ["C_Heli_Light_01_civil_F",638000],
            ["I_MRAP_03_F",6000000],
            ["B_Truck_01_box_F",2025000],
	/*		["O_APC_Wheeled_02_rcws_F",2325000],
			["I_APC_Wheeled_03_cannon_F",3825000], */
            ["O_Heli_Light_02_unarmed_F",1500000],
            ["C_Hatchback_01_sport_F",150000],
            ["I_Heli_light_03_unarmed_F",4500000],
            ["I_Heli_Transport_02_F",4500000],
			["B_Heli_Transport_03_unarmed_F",4200000],
			["O_Heli_Transport_04_F",2250000],
			["O_Heli_Transport_04_covered_F",2850000]
        ];
    };

    case "reb_air":
    {
        _return = [
            ["B_Heli_Light_01_F",637500],
            ["O_Heli_Light_02_unarmed_F",1500000]
        ];
    };

    case "cop_car":
    {
                // Rank 0 - Public
        _return = [
            ["C_Offroad_01_F",7500]
        ];
        
        // WHITELISTED
        // Rank 1 - Cadet
        if(__GETC__(life_ozCoplvl) >= 1) then {
        };

        // DUTY OFFICERS
        // Rank 2 - Probationary Constable
        if(__GETC__(life_ozCoplvl) >= 2) then {
            _return pushBack ["C_SUV_01_F",15000];
            _return pushBack ["C_Hatchback_01_sport_F",30000];
        };
        // Rank 3 - Constable
        // Rank 4 - Senior Constable

        // JUNIOR NCO
        // Rank 5 - 

        // NCOs
        // Rank 6 - Sergeant
        // Rank 7 - Senior Sergeant
        // Rank 8 - 

        // JUNIOR OFFICER
        // Rank 9 - 2nd Lieutenant

        // OFFICERS
        // Rank 10 - 1st Lieutenant
        if(__GETC__(life_ozCoplvl) >= 10) then {
            _return pushBack ["B_MRAP_01_F",105000];
            _return pushBack ["B_APC_Tracked_01_rcws_F",500000];
        };
        // Rank 11 - Captain
        // Rank 12 - Inspector

        // SENIOR OFFICERS
        // Rank 20 - Lead Inspector, Deputy Chief, Chief, Deputy Commissioner, Comissioner
    };

    case "civ_air":
    {
        _return = [
            ["B_Heli_Light_01_F",637500],
            ["C_Heli_Light_01_civil_F",637500],
            ["O_Heli_Light_02_unarmed_F",1500000],
            ["I_Heli_Transport_02_F",4800000],
            ["B_Heli_Transport_03_unarmed_F",4200000],
            ["O_Heli_Transport_04_F",2250000],
            ["O_Heli_Transport_04_covered_F",2850000]
        ];
    };

    case ("cop_air" or "cop_airhq"): {
                // Rank 0 - Public
			_return = [];
        if (__GETC__(life_ozCopPilotGround) == 1) exitwith {hint "You have been grounded. No aircraft for you."};
        if (__GETC__(life_ozCopPilotLvl) == 0) then {
       
            // WHITELISTED
            // Rank 1 - Cadet

            // DUTY OFFICERS
            // Rank 2 - Probationary Constable
            // Rank 3 - Constable
            if(__GETC__(life_ozCoplvl) >= 3) then {
                _return pushBack ["C_Heli_Light_01_civil_F",150000];
            };
            // Rank 4 - Senior Constable

            // JUNIOR NCO
            // Rank 5 - 

            // NCOs
            // Rank 6 - Sergeant
            // Rank 7 - Senior Sergeant
            // Rank 8 - 

            // JUNIOR OFFICER
            // Rank 9 - 2nd Lieutenant

            // OFFICERS
            // Rank 10 - 1st Lieutenant
            // Rank 11 - Captain
            if(__GETC__(life_ozCoplvl) >= 11) then {
                _return pushBack ["B_Heli_Transport_01_F",750000];
            };
            // Rank 12 - Inspector

            // SENIOR OFFICERS
            // Rank 20 - Lead Inspector, Deputy Chief, Chief, Deputy Commissioner, Comissioner
        } else {
            // Pilot Trainee
            if (__GETC__(life_ozCopPilotLvl) >= 1) then {
                _return pushBack ["B_Heli_Light_01_F",128000];
                _return pushBack ["C_Heli_Light_01_civil_F",98000];
            };
            // Pilot
            if (__GETC__(life_ozCopPilotLvl) >= 2) then {
                _return pushBack ["B_Heli_Transport_01_F",600000];
                _return pushBack ["I_Heli_light_03_unarmed_F",750000];
            };
            // Senior Pilot
            if (__GETC__(life_ozCopPilotLvl) >= 3) then {
                _return pushBack ["B_Heli_Transport_03_unarmed_F",2000000];
                _return pushBack ["O_Heli_Transport_04_F",3000000];
                _return pushBack ["O_Heli_Transport_04_covered_F",3500000];
            };
        };
	};

    case "civ_ship":
    {
        _return = [
            ["C_Rubberboat",7500],
            ["C_Boat_Civil_01_F",33000],
            ["B_Boat_Transport_01_F",33000],
            ["B_SDV_01_F",7500]
        ];
    };

    case "cop_ship":
    {
        // Rank 0 - Public
        _return = [
            ["B_Boat_Transport_01_F",7500]
        ];
        
        // WHITELISTED
        // Rank 1 - Cadet

        // DUTY OFFICERS
        // Rank 2 - Probationary Constable
        if(__GETC__(life_ozCoplvl) >= 2) then {
        _return pushBack ["C_Boat_Civil_01_police_F",12000];
        };
        // Rank 3 - Constable
        if(__GETC__(life_ozCoplvl) >= 3) then {
        _return pushBack ["B_SDV_01_F",6000];
        };
        // Rank 4 - Senior Constable

        // JUNIOR NCO
        // Rank 5 - 

        // NCOs
        // Rank 6 - Sergeant
        // Rank 7 - Senior Sergeant
        // Rank 8 - 

        // JUNIOR OFFICER
        // Rank 9 - 2nd Lieutenant

        // OFFICERS
        // Rank 10 - 1st Lieutenant
        // Rank 11 - Captain
        // Rank 12 - Inspector

        // SENIOR OFFICERS
        // Rank 20 - Lead Inspector, Deputy Chief, Chief, Deputy Commissioner, Comissioner
    };
	case "donator_1":
	{
        switch(true) do {
            case (__GETC__(life_Ozdonator) == 1):
			{
                _return = [
                    ["B_Quadbike_01_F",3000],
                    ["C_Offroad_01_F",15000],
                    ["C_SUV_01_F",22500],
                    ["B_Heli_Light_01_F",450000],
                    ["C_Heli_Light_01_civil_F",450000],
                    ["C_Van_01_transport_F",30000],
                    ["B_Truck_01_box_F",1650000],
                    ["O_Heli_Light_02_unarmed_F",1200000],
                    ["C_Hatchback_01_sport_F",26300],
                    ["I_Heli_Transport_02_F",4200000],
                    ["I_Heli_light_03_unarmed_F",3600000],
                    ["I_MRAP_03_F",3750000],
					["B_Heli_Transport_03_unarmed_F",3360000],
					["O_Heli_Transport_04_F",1800000],
					["O_Heli_Transport_04_covered_F",2280000]
                ];
			};
            case (__GETC__(life_Ozdonator) == 2):
			{
                _return = [
                    ["B_Quadbike_01_F",2700],
                    ["C_Offroad_01_F",12000],
                    ["C_SUV_01_F",15000],
                    ["B_Heli_Light_01_F",375000],
                    ["C_Heli_Light_01_civil_F",375000],
                    ["C_Van_01_transport_F",23250],
                    ["B_Truck_01_box_F",1200000],
                    ["O_Heli_Light_02_unarmed_F",1200000],
                    ["C_Hatchback_01_sport_F",22500],
                    ["I_Heli_Transport_02_F",3000000],
                    ["I_Heli_light_03_unarmed_F",3000000],
                    ["I_MRAP_03_F",3000000],
                    ["B_Heli_Transport_03_unarmed_F",2688000],
                    ["O_Heli_Transport_04_F",1440000],
                    ["O_Heli_Transport_04_covered_F",1824000]
                ];
			};
            case (__GETC__(life_Ozdonator) == 3):
			{
                _return = [
                    ["B_Quadbike_01_F",2400],
                    ["C_Offroad_01_F",10500],
                    ["C_SUV_01_F",12000],
                    ["B_Heli_Light_01_F",300000],
                    ["C_Heli_Light_01_civil_F",300000],
                    ["C_Van_01_transport_F",15000],
                    ["B_Truck_01_box_F",900000],
                    ["O_Heli_Light_02_unarmed_F",900000],
                    ["C_Hatchback_01_sport_F",12000],
                    ["I_Heli_Transport_02_F",1500000],
                    ["I_Heli_light_03_unarmed_F",2550000],
                    ["I_MRAP_03_F",1500000],
                    ["B_Heli_Transport_03_unarmed_F",2150400],
                    ["O_Heli_Transport_04_F",1152000],
                    ["O_Heli_Transport_04_covered_F",1459200]
                ];
			};
            case (__GETC__(life_Ozdonator) > 3):
			{
                _return = [
                    ["B_Quadbike_01_F",2175],
                    ["C_Offroad_01_F",9000],
                    ["C_SUV_01_F",10500],
                    ["B_Heli_Light_01_F",225000],
                    ["C_Heli_Light_01_civil_F",225000],
                    ["C_Van_01_transport_F",12000],
                    ["B_Truck_01_box_F",450000],
                    ["O_Heli_Light_02_unarmed_F",750000],
                    ["C_Hatchback_01_sport_F",10500],
                    ["I_Heli_Transport_02_F",1200000],
                    ["I_Heli_light_03_unarmed_F",2100000],
                    ["I_MRAP_03_F",1200000],
                    ["B_Heli_Transport_03_unarmed_F",1720320],
                    ["O_Heli_Transport_04_F",1152000],
                    ["O_Heli_Transport_04_covered_F",1167360]
                ];
			};
		};
	};
};
_return;
