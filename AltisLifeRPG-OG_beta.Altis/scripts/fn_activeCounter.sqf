waitUntil {!(isNull (findDisplay 46))};
/*
	File: fn_activeCounter.sqf
	Author: Aaron
	Description: Tracks the activity of the players and what class they play. Counts in decimal form and counts up every 15 mins
	
	Counts every 15 mins because any less then that and it can create some funky monster decimals.

*/
[] spawn {
	sleep 5;
	switch (playerSide) do
	{
		case west:
		{
			while {true} do
			{
				sleep 900;
				copTimer = copTimer + 0.25;
			}; 
		};
		
		case civilian:
		{
			while {true} do
			{
				sleep 900;
				civTimer = civTimer + 0.25;
			}; 
		};
		
		case independent:
		{
			while {true} do
			{
				sleep 900;
				medicTimer = medicTimer + 0.25;
			}; 
		};
	};
};

[] spawn
{
    private["_loadObject","_veh"];
    while {true} do {
        waitUntil{vehicle player != player};
        [] call {
            _veh = vehicle player;
            while{_veh != player} do {
                waitUntil {_loadObject = getSlingLoad _veh; _loadObject getVariable ["purpose",""] == "truck_mission"};
                _veh setSlingLoad objNull;
                titleText ["You are not allowed to sling load Truck Missions", "PLAIN"];
            };
        };
    };
};