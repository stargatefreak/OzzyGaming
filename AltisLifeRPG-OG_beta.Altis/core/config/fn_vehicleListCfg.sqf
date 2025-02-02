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
        switch (true) do {
            case ((__GETC__(life_ozMediclvl)) == 1): {
                _return = [
                    ["C_Offroad_01_F",5000],
                    ["C_Van_01_box_F",4000]
                ];
            };
            case ((__GETC__(life_ozMediclvl)) == 2): {
                _return = [
                    ["C_Offroad_01_F",5000],
                    ["C_Van_01_box_F",4000],
                    ["I_Truck_02_covered_F",30000]
                ];
            };
            case ((__GETC__(life_ozMediclvl)) == 3): {
                _return = [
                    ["C_Offroad_01_F",5000],
                    ["C_Van_01_box_F",4000],
                    ["I_Truck_02_covered_F",30000],
                    ["C_Hatchback_01_sport_F",50000]
                ];
            };
            case ((__GETC__(life_ozMediclvl)) == 4): {
                _return = [
                    ["C_Offroad_01_F",5000],
                    ["C_Van_01_box_F",4000],
                    ["I_Truck_02_covered_F",30000],
                    ["C_Hatchback_01_sport_F",50000],
                    ["C_SUV_01_F",6000],
					["B_MRAP_01_F",100000]
                ];
            };
        };
    };

	// Hospital Shops
    case "med_air_hs": 
    {
		if (__GETC__(life_ozMedicGrounded) == 1) exitWith {};
        switch (true) do {
            case ((__GETC__(life_ozMediclvl)) == 1): {
                _return = [
                    ["B_Heli_Light_01_F",90000],
                    ["C_Heli_Light_01_civil_F",60000] 
                ];
            };
            case ((__GETC__(life_ozMediclvl)) > 1): {
                _return = [
                    ["B_Heli_Light_01_F",90000],
                    ["C_Heli_Light_01_civil_F",60000],
                    ["O_Heli_Light_02_unarmed_F",200000]
                ];
            };
            case ((__GETC__(life_ozMediclvl)) > 2): {
				_return = [
                    ["B_Heli_Light_01_F",90000],
                    ["C_Heli_Light_01_civil_F",60000],
                    ["O_Heli_Light_02_unarmed_F",200000],
                    ["I_Heli_light_03_unarmed_F",200000]
                ];
            };
        };
    };
	
	// Non-Hospital
	case "med_air": 
    {
		if (__GETC__(life_ozMedicGrounded) == 1) exitWith {};
        switch (true) do {
            case ((__GETC__(life_ozMediclvl)) == 1): {
                _return = [
                    ["B_Heli_Light_01_F",90000],
                    ["C_Heli_Light_01_civil_F",60000] 
                ];
            };
            case ((__GETC__(life_ozMediclvl)) > 1): {
                _return = [
                    ["B_Heli_Light_01_F",90000],
                    ["C_Heli_Light_01_civil_F",60000],
                    ["O_Heli_Light_02_unarmed_F",200000]
                ];
            };
            case ((__GETC__(life_ozMediclvl)) > 1): {
				_return = [
                    ["B_Heli_Light_01_F",90000],
                    ["C_Heli_Light_01_civil_F",60000],
                    ["O_Heli_Light_02_unarmed_F",200000],
                    ["I_Heli_light_03_unarmed_F",200000]
                ];
            };
        };
    };

    case "med_ship":
    {
        _return = [
            ["C_Boat_Civil_01_rescue_F",15000],
            ["B_Lifeboat",8000]
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
        // Rank 0 - Public
        _return = [
            ["C_Offroad_01_F",7500]
        ];
        
        // WHITELISTED
        // Rank 1 - Student
        if(__GETC__(life_ozCoplvl) >= 1) then {
        };

        // DUTY OFFICERS
        // Rank 2 - Probationary Constable
        if(__GETC__(life_ozCoplvl) >= 2) then {
            _return pushBack ["C_SUV_01_F",15000];
        };
        // Rank 3 - Constable
        if(__GETC__(life_ozCoplvl) >= 3) then {
            _return pushBack ["C_Hatchback_01_sport_F",60000];
		};
        // Rank 4 - Senior Constable

        // NCOs
        // Rank 5 - Sergeant
        // Rank 6 - Incremental Sergeant
        // Rank 7 - Senior Sergeant

        // OFFICERS
		// Rank 8 - Lieutenant
        // Rank 9 - Captain
        // Rank 10 - Inspector
        if(__GETC__(life_ozCoplvl) >= 10) then {
            _return pushBack ["B_MRAP_01_F",200000];
            _return pushBack ["B_Quadbike_01_F",5000];
            _return pushBack ["C_Van_01_box_F",40000];
            _return pushBack ["C_Van_01_transport_F",40000];
            _return pushBack ["B_Truck_01_transport_F",100000];
        };
        // Rank 11 - Chief Inspector

        // SENIOR OFFICERS
        // Rank 20 - Superintendant, Chief Superintendant, Assistant Commissioner, Deputy Commissioner, Commissioner, Police Minister
        if(__GETC__(life_ozCoplvl) >= 20) then {
            // _return pushBack ["B_APC_Tracked_01_rcws_F",500000];
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

    case "cop_air": {
		if (__GETC__(life_ozCopGrounded) == 1) exitWith {};
        // Rank 0 - Public
		_return = [];
        if (__GETC__(life_ozCopPilotLvl) == 0) then {
       
            // WHITELISTED
            // Rank 1 - Cadet

            // DUTY OFFICERS
            // Rank 2 - Probationary Constable
            // Rank 3 - Constable
            if(__GETC__(life_ozCoplvl) >= 3) then {
                _return pushBack ["B_Heli_Light_01_F",150000];
                _return pushBack ["C_Heli_Light_01_civil_F",150000];
            };
            // Rank 4 - Senior Constable
            // Rank 5 - Leading Senior Constable

            // NCOs
            // Rank 6 - Sergeant
            // Rank 7 - Incremental Sergeant
            // Rank 8 - Senior Sergeant

            // OFFICERS
            // Rank 9 - Captain
            // Rank 10 - Inspector
            if(__GETC__(life_ozCoplvl) >= 10) then {
                _return pushBack ["B_Heli_Transport_01_F",750000];
            };
            // Rank 11 - Chief Inspector

            // SENIOR OFFICERS
            // Rank 20 - Superintendant, Chief Superintendant, Assistant Commissioner, Deputy Commissioner, Commissioner, Police Minister
            if(__GETC__(life_ozCoplvl) >= 10) then {
                _return pushBack ["I_Heli_light_03_unarmed_F",500000];
				_return pushBack ["B_Heli_Transport_03_unarmed_F",2000000];
                _return pushBack ["O_Heli_Transport_04_covered_F",3000000];
			};
        } else {
            // Pilot Trainee
            if (__GETC__(life_ozCopPilotLvl) >= 1) then {
                _return pushBack ["B_Heli_Light_01_F",130000];
                _return pushBack ["C_Heli_Light_01_civil_F",80000];
            };
            // Pilot
            if (__GETC__(life_ozCopPilotLvl) >= 2) then {
                _return pushBack ["B_Heli_Transport_01_F",600000];
                _return pushBack ["I_Heli_light_03_unarmed_F",500000];
            };
            // Senior Pilot
            if (__GETC__(life_ozCopPilotLvl) >= 3) then {
                _return pushBack ["B_Heli_Transport_03_unarmed_F",2000000];
                _return pushBack ["O_Heli_Transport_04_covered_F",3000000];
            };
        };
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
        // Rank 5 - Leading Senior Constable

        // NCOs
        // Rank 6 - Sergeant
        // Rank 7 - Incremental Sergeant
        // Rank 8 - Senior Sergeant

        // OFFICERS
        // Rank 9 - Captain
        // Rank 10 - Inspector
        // Rank 11 - Chief Inspector

        // SENIOR OFFICERS
        // Rank 20 - Superintendant, Chief Superintendant, Assistant Commissioner, Deputy Commissioner, Commissioner, Police Minister
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
    case "pmc_car":{
        _return = [
            ["B_Quadbike_01_F",7500],
			["C_SUV_01_F",25000],
			["C_Offroad_01_F",25000]
        ];
		
		if (__GETC__(life_ozPmclvl) >= 2) then {
			_return pushBack ["B_G_Offroad_01_F",30000];
		};
		
		if (__GETC__(life_ozPmclvl) >= 3) then {
			_return pushBack ["B_G_Offroad_01_repair_F",75000];
			_return pushBack ["B_G_Van_01_fuel_F",75000];
		};
		if (__GETC__(life_ozPmclvl) >= 4) then {
			_return pushBack ["B_MRAP_01_F",500000];
		};
		if (__GETC__(life_ozPmclvl) >= 7) then {
			// _return pushBack ["I_G_Offroad_01_armed_F",3800000];
		};
    };
    case "pmc_air":{
        _return = [
        ];
		if (__GETC__(life_ozPmclvl) >= 4) then {
			_return pushBack ["B_Heli_Light_01_F",400000];
		};
		if (__GETC__(life_ozPmclvl) >= 5) then {
			_return pushBack ["O_Heli_Transport_04_F",2200000];
			_return pushBack ["O_Heli_Transport_04_bench_F",3000000];
			_return pushBack ["I_Heli_light_03_unarmed_F",5000000];
		};
    };
    case "pmc_ship":{
        _return = [
        ];
		if (__GETC__(life_ozPmclvl) >= 3) then {
			_return = [
				["B_Boat_Transport_01_F",18000],
				["B_SDV_01_F",50000]
			];
		};
    };
};
_return;
