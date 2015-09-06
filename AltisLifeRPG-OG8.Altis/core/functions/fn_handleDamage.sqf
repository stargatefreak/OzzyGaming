/*
	File: fn_handleDamage.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Handles damage, specifically for handling the 'tazer' pistol and nothing else.
*/
private["_unit","_damage","_source","_projectile","_part","_curWep"];
_unit = _this select 0;
_part = _this select 1;
_damage = _this select 2;
_source = _this select 3;
_projectile = _this select 4;

//Internal Debugging.
if(!isNil "TON_Debug") then {
	systemChat format["PART: %1 || DAMAGE: %2 || SOURCE: %3 || PROJECTILE: %4 || WEAPON: %5 || FRAME: %6",_part,_damage,_source,_projectile,currentWeapon _source,diag_frameno];
};

//Handle the tazer first (Top-Priority).
if(!isNull _source) then {
	if(_source != _unit) then {
		_curWep = currentWeapon _source;
		/* hint format["W: %1<br/>P: %2",_curWep,_projectile]; */
		if(_projectile in ["B_45ACP_Ball","B_9x21_Ball","B_127x99_Ball_Tracer_Red"] && _curWep in ["hgun_P07_snds_F","SMG_01_F","HMG_127_APC"]) then {
			/* if(side _source == west && playerSide != west) then { */
				private["_distance","_isVehicle","_isQuad"];
				_distance = if(_projectile == "30Rnd_45ACP_Mag_SMG_01") then {100} else {35};
				_isVehicle = if(vehicle player != player) then {true} else {false};
				_isQuad = if(_isVehicle) then {if(typeOf (vehicle player) == "B_Quadbike_01_F") then {true} else {false}} else {false};
				
				_damage = false;
				if(_unit distance _source < _distance) then {
					if(!life_istazed && !(_unit getVariable["restrained",false])) then {
						if(_isVehicle && _isQuad) then {
							player action ["Eject",vehicle player];
							[_unit,_source] spawn life_fnc_tazed;
						} else {
							if(!_isVehicle) then {
								[_unit,_source] spawn life_fnc_tazed;
							};
						};
					};
				};
			/* }; */
			
			//Temp fix for super tasers on cops.
			if(playerSide == west && side _source == west) then {
				_damage = false;
			};
		};
	};
};

[] call life_fnc_hudUpdate;
_damage;