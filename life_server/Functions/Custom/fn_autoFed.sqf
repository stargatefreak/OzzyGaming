/*
    File: fn_autoFedLockup
    Author:  Aaron & Ryan (OzzyGaming.com)
    Email: aaron@ozzygaming.com
    
    Automated Federal Reserve Lockup system
*/

OG_Active = true;
OG_fedLockdown_Timer = OG_fedLockdown_startTimer;
OG_fedLockdown_Timer_serverside = OG_fedLockdown_Timer;

[] spawn {
	if(OG_fedLockdown_active) exitWith {};
	OG_fedLockdown_active = true;
	while{OG_fedLockdown_active} do {
		OG_fedLockdown_Timer_serverside = OG_fedLockdown_Timer_serverside - 1;
		if(OG_fedLockdown_Timer_serverside == -1) exitWith {OG_fedLockdown_active = false;};
		sleep 1;
	};
};
private["_b","_v","_v1","_door","_doors","_selPos","_worldSpace","_players"];
while {OG_Active} do {
	waitUntil{OG_fedLockdown_Timer != OG_fedLockdown_Timer_serverside};
	[] call {
		OG_fedLockdown_Timer = OG_fedLockdown_Timer_serverside;
		switch (OG_fedLockdown_Timer) do {
			case (OG_fedLockdown_firstNotify || OG_fedLockdown_finalNotify): {
				[[0,format["FEDERAL SECURITY ACTIVATED: %1 minutes till lockup",OG_fedLockdown_Timer / 60]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
				playSound3D [OG_fedLockdown_lockdownAlarm, objNull, false,[16015.7,16956.1,13.6565], 1, 1, 200];
			};
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
				_v1 = nearestObjects [OG_fedLockdown_pos,["Land_CargoBox_V1_F"],30] select 0; 
				
				_b setVariable["bis_disabled_Door_1",0,true];
				_b animate["door_1A_move",0];
				_b animate["door_1B_move",0];
				_b setVariable["bis_disabled_Door_1",1,true];
				
				_v setVariable["bis_disabled_Door_1",0,true];
				_v animate["door_1_rot",0];
				_v setVariable["bis_disabled_Door_1",1,true];
				
				_v1 setVariable["chargeplaced",false,false];
				_v1 setVariable["safe_open",false,false];
			};
			case -1: {
				playSound3D [OG_fedLockdown_lockdownAlarm, objNull, false,[16015.7,16956.1,13.6565], 1, 1, 200];
				OG_Active = false;
				_players = nearestobjects [OG_fedLockdown_pos,["man"],OG_fedLockdown_bankRad];
				[_players] spawn {
					private["_players"];
					_players = [_this,0,[],[[]]] call BIS_fnc_param;
					{
						[[0,format["FEDERAL SECURITY ACTIVATED: YOU ARE NOW BEING GASSED!"]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
						[[2,format["YOU ARE NOW LOCKED IN AND BEING GASSED!"]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
						if(side _players in ["west","civilian","independent"]) then {
							while{alive _x} do {
								_x setDamage (getDammage player + 0.2);
								sleep 0.5;
							};	
						};
					} forEach _players
				};
			};
		};
	};
};