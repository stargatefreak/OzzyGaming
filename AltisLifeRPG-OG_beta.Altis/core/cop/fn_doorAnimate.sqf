private["_b","_doors","_door","_doorStr","_doorStr1"];
_b = _this select 0;
_doors = 1;
while {true} do {
	if(!isClass(configFile >> "CfgVehicles" >> (typeOf _b) >> "AnimationSources" >> format["Door_%1_source",_doors])) exitWith {};
	_doors = _doors + 1;
};

_door = 0;
//Find the nearest door
for "_i" from 1 to _doors do {
	_selPos = _b selectionPosition format["Door_%1_trigger",_i];
	_worldSpace = _b modelToWorld _selPos;
		if(player distance _worldSpace < 5) exitWith {_door = _i;};
};
if(_door == 0) exitWith {hint localize "STR_Cop_NotaDoor"}; //Not near a door to be broken into.

if(typeOf _b == "Land_Dome_Big_F") then {
	if(_door == 1) then {
		_doorStr = format["%1a_move"];
		_doorStr1 = format["%1b_move"];
	} else {
		_doorStr = format["%1_rot"];
	};
} else {
	_doorStr = format["%1_rot"];
};

if(_b animationPhase format["door_%1",_doorStr] == 0) then {
	if(typeOf _b == "Land_Dome_Big_F" && _door == 1) then {
		_b animate[format["door_%1",_doorStr],1];
		_b animate[format["door_%1",_doorStr1],1];
	} else {
		_b animate[format["door_%1",_doorStr],1];
	};
} else {
	if(typeOf _b == "Land_Dome_Big_F" && _door == 1) then {
		_b animate[format["door_%1",_doorStr],0];
		_b animate[format["door_%1",_doorStr1],0];
	} else {
		_b animate[format["door_%1",_doorStr],0];
	};
};

closeDialog 0;