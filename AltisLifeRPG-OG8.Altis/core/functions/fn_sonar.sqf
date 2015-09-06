/* 
	File: fn_sonar.sqf
	Auther: Aaron
	
	Hides the crashsite until within range to prevent anyone from using
	 the clear underwater infinity glitch to detect the crash site
 */
private["_isVehicle","_isSub"];
while {true} do {
	_isVehicle = if(vehicle player != player) then {true} else {false};
	_isSub = if(_isVehicle) then {if(typeOf (vehicle player) == "B_SDV_01_F") then {true} else {false}} else {false};
	if(_isSub) then {
		player setOxygenRemaining 1;
	};
	waitUntil {(getOxygenRemaining player) < 0.9};
};