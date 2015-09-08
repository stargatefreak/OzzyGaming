/*
    File: fn_autoFedLockup
    Author:  Aaron & Ryan (OzzyGaming.com)
    Email: aaron@ozzygaming.com
    
    Automated Federal Reserve Lockup system
*/
OG_fedLockdown_lockdownAlarm = "A3\Sounds_F\sfx\alarm_independent.wss";
OG_fedLockdown_vaultType = "Land_Research_house_V1_F";
OG_fedLockdown_bankType = "Land_Dome_Big_F";
OG_fedLockdown_bankRad = 29.9;		
OG_fedLockdown_pos = [16015.7,16956.1,13.6565];
OG_Active = true;
OG_fedLockdown_Timer = 900;
OG_fedLockdown_Timer_serverside = OG_fedLockdown_Timer;

[] spawn {
	OG_fedLockdown_active = true;
	while{OG_fedLockdown_active} do {
		OG_fedLockdown_Timer_serverside = OG_fedLockdown_Timer_serverside - 1;
		if(OG_fedLockdown_Timer_serverside == -1) exitWith {OG_fedLockdown_active = false;};
		sleep 1;
	};
};
private["_b","_v","_door","_doors","_selPos","_worldSpace","_players"];
while {OG_Active} do {
	waitUntil{OG_fedLockdown_Timer != OG_fedLockdown_Timer_serverside};
	[] call {
		OG_fedLockdown_Timer = OG_fedLockdown_Timer_serverside;
		switch (OG_fedLockdown_Timer) do {
			case 20: {
				playSound3D [OG_fedLockdown_lockdownAlarm, objNull, false,[16015.7,16956.1,13.6565], 1, 1, 200];
			};
			case 13: {
				playSound3D [OG_fedLockdown_lockdownAlarm, objNull, false,[16015.7,16956.1,13.6565], 1, 1, 200];
			};
			case 6: {
				playSound3D [OG_fedLockdown_lockdownAlarm, objNull, false,[16015.7,16956.1,13.6565], 1, 1, 200];
			};
			case 0: {
				_b = nearestObjects [OG_fedLockdown_pos,[OG_fedLockdown_bankType],30] select 0;
				_v = nearestObjects [OG_fedLockdown_pos,[OG_fedLockdown_vaultType],30] select 0; 
				
				_b setVariable["bis_disabled_Door_1",0,true];
				_b animate["door_1A_move",0];
				_b animate["door_1B_move",0];
				_b setVariable["bis_disabled_Door_1",1,true];
				
				_v setVariable["bis_disabled_Door_1",0,true];
				_v animate["door_1_rot",0];
				_v setVariable["bis_disabled_Door_1",1,true];
			};
			case -1: {
				playSound3D [OG_fedLockdown_lockdownAlarm, objNull, false,[16015.7,16956.1,13.6565], 1, 1, 200];
				OG_Active = false;
				_players = nearestobjects [OG_fedLockdown_pos,["man"],OG_fedLockdown_bankRad];
				[_players] spawn {
					private["_players"];
					_players = [_this,0,[],[[]]] call BIS_fnc_param;
					{
						if(side _players in ["west","civilian","independent"]) then {
							while{alive _x} do {
								_x setDamage (getDammage player + 0.2);
								sleep 0.5
							};	
						};
					} forEach _players
				};
			};
		};
	};
};