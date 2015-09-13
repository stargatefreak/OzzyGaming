/*
    File: fn_autoFedLockup
    Author:  Aaron & Ryan (OzzyGaming.com)
    Email: aaron@ozzygaming.com
    
    Automated Federal Reserve Lockup system
*/

// AutoFed Configs
OG_fedLockdown_startTimer = 1200;											// Time since blasting charge detonation (default: 2100 = 35 Minutes)
OG_fedLockdown_firstNotify = 300;											// Timer Status for first Notification (default: 1500 = 25 Minutes)
OG_fedLockdown_finalNotify = 120;											// Final Warning before lockdown (default: 300 = 5 Minutes)
OG_fedLockdown_lockdownAlarm = "A3\Sounds_F\sfx\alarm_independent.wss";  	// Path to the audio of siren (default: "sounds\fedLockdown\siren.ogg")
OG_fedLockdown_fedMarker = "fed_reserve";									// Marker name for the Federal Reserve building
OG_fedLockdown_notifyRad = 300;												// Does the Federal Reserve have poison gas as its defence
OG_fedLockdown_poisonGas = true;											// Federal Reserve is equiped with poison Gas
OG_fedLockdown_bankRad = 25.5;												// Building radius from the centerpoint (default: 25.5)
OG_fedLockdown_vaultType = "Land_Research_house_V1_F";
OG_fedLockdown_vaultBox = "Land_CargoBox_V1_F";
OG_fedLockdown_bankType = "Land_Dome_Big_F";
OG_reserveBuilding = nearestObjects [
	getMarkerPos OG_fedLockdown_fedMarker,
	[OG_fedLockdown_bankType],50
] select 0;
OG_fedLockdown_smokePos = [
	[16018,16953.7,-1],
	[16008.5,16966,-1],
	[16011,16955.4,-1],
	[16021,16963.7,-1],
	[16026.5,16937.8,-1],
	[16031.2,16942.2,-1],
	[16034.9,16950.3,-1],
	[16033.9,16958.2,-1],
	[16028.9,16966.5,-1],
	[16023.6,16957.1,-1],
	[16018.2,16949.3,-1],
	[16012.4,16943.4,-1],
	[16016.1,16938.2,-1],
	[16006.3,16947.4,-1],
	[16005.3,16958.1,-1],
	[16017.7,16969.3,-1],
	[16006.4,16938.8,-1],
	[15999.2,16949.5,-1]
];


// Federal Security Program   ----- DO NOT EDIT FROM HERE DOWN -----
OG_fedLockdown_pos = getPos OG_reserveBuilding;
OG_fedLockdown_active = false;
OG_fed_active = false;
OG_fedLockdown_Timer = 0;
[] spawn {
	while {true} do {
		waitUntil{(OG_reserveBuilding getVariable "bis_disabled_Door_1" == 0) && !OG_fedLockdown_active};
		OG_FederalSecurty = true;
		publicVariable "OG_FederalSecurty";
		[] spawn {
			OG_fedLockdown_active = true;
			OG_fedLockdown_Timer = OG_fedLockdown_startTimer;
			OG_fedLockdown_Timer_serverside = OG_fedLockdown_Timer;

			[] spawn {
				if(OG_fed_active) exitWith {};
				OG_fed_active = true;
				while{OG_fed_active} do {
					OG_fedLockdown_Timer_serverside = OG_fedLockdown_Timer_serverside - 1;
					if(OG_fedLockdown_Timer_serverside == -1) exitWith {OG_fed_active = false;};
					sleep 1;
				};
			};
			private["_b","_v","_v1","_door","_doors","_selPos","_worldSpace","_players"];
			_players = [];
			while {OG_fedLockdown_active} do {
				waitUntil{OG_fedLockdown_Timer != OG_fedLockdown_Timer_serverside};
				[] call {
					OG_fedLockdown_Timer = OG_fedLockdown_Timer_serverside;
					publicVariable "OG_fedLockdown_Timer";
					switch (true) do {
						case (OG_fedLockdown_Timer == OG_fedLockdown_firstNotify || OG_fedLockdown_Timer == OG_fedLockdown_finalNotify): {
							[[0,format["FEDERAL SECURITY ACTIVATED: %1 minutes till lockup",OG_fedLockdown_Timer / 60]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
							playSound3D [OG_fedLockdown_lockdownAlarm, objNull, false,OG_fedLockdown_pos, 1, 1, 200];
						};
						case (OG_fedLockdown_Timer in [20,13,6]): {
							playSound3D [OG_fedLockdown_lockdownAlarm, objNull, false,OG_fedLockdown_pos, 1, 1, 200];
						};
						case (OG_fedLockdown_Timer == 0): {
							_v = nearestObjects [OG_fedLockdown_pos,[OG_fedLockdown_vaultType],30] select 0; 
							_v1 = nearestObjects [OG_fedLockdown_pos,[OG_fedLockdown_vaultBox],30] select 0; 
							
							OG_reserveBuilding setVariable["bis_disabled_Door_1",0,true];
							OG_reserveBuilding animate["door_1A_move",0];
							OG_reserveBuilding animate["door_1B_move",0];
							OG_reserveBuilding setVariable["bis_disabled_Door_1",1,true];
							
							_v setVariable["bis_disabled_Door_1",0,true];
							_v animate["door_1_rot",0];
							_v setVariable["bis_disabled_Door_1",1,true];
							
							_v1 setVariable["chargeplaced",false,true];
							_v1 setVariable["safe_open",false,true];
						};
						case (OG_fedLockdown_Timer == -1): {

							[] spawn {
								private ["_object","_startpos","_smoke"];
								if(OG_fedLockdown_poisonGas) then {
									{
										_object = "SmokeShellGreen";
										_startpos = _x;
										_smoke = createvehicle [_object,_startpos,[],0,"none"];
										_startpos set [2,-2];
										_smoke setpos _startpos;
									} forEach OG_fedLockdown_smokePos;
								};
								sleep 1800;
								OG_FederalSecurty = false;
								publicVariable "OG_FederalSecurty";
							};
							playSound3D [OG_fedLockdown_lockdownAlarm, objNull, false,[16015.7,16956.1,13.6565], 1, 1, 200];
							OG_fedLockdown_active = false;
							if(OG_fedLockdown_poisonGas) then {
								[[0,format["FEDERAL SECURITY ACTIVATED: BANK IS SECURE AND GAS HAS BEEN RELEASED!"]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
							} else {
								[[0,format["FEDERAL SECURITY ACTIVATED: BANK IS SECURE"]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
							};
							{
								if(_x distance OG_reserveBuilding < OG_fedLockdown_bankRad) then {
									_players pushBack _x;								
								}
							} forEach playableUnits;
							[_players] spawn {
								private["_players"];
								_players = [_this,0,[],[[]]] call BIS_fnc_param;
								{
									[[2,format["YOU ARE NOW LOCKED IN AND BEING GASSED!"]],"life_fnc_broadcast",_x,false] spawn life_fnc_MP;
									if(OG_fedLockdown_poisonGas) then {
										[_x] spawn {
											private ["_player"];
											_player = [_this,0,objNull] call BIS_fnc_param;
											while{alive _player && OG_FederalSecurty} do {
												_player setDamage (getDammage _player + 0.02);
												sleep 0.5;
											};	
										};
									};
								} forEach _players;
							};
						};
					};
				};
			sleep 1;
			if(!OG_FederalSecurty) then {[[0,format["FEDERAL SECURITY ACTIVATED: BANK IS SECURE"]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;};
			};
		};
	sleep 1;
	};
};