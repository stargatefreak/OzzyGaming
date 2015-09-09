/*
	Author:	Aaron	(OzzyGaming.com)
	
	Description:	Measuring Tape Script
*/


if(isNil "OG_tapeMeasure") then {
	OG_tapeMeasure = false;
};

if(OG_tapeMeasure) exitWith {
	OG_tapeMeasure = false;
	hint parseText "<t size='1.2' color='#551199'>Tape Measure - OFF</ t>"
};

if(!OG_tapeMeasure) then {
	OG_tapeMeasure = true;
	hint parseText "<t size='1.2' color='#551199'>Tape Measure - ON</ t>"
};
if (!isNull cursorTarget) then {
	OG_tapeTarget = cursorTarget;
	OG_tapePos = getPos cursorTarget;
	OG_tapeNullTarget = false;
} else {
	OG_tapeTarget = player;
	OG_tapePos = getPos player;
	OG_tapeNullTarget = true;
};

[] spawn {	
	while {OG_tapeMeasure} do {
		if(OG_tapeNullTarget) then {
			waitUntil{_tapeDist != (round(((getPos player) distance OG_tapePos) * 10) / 10)};
			_tapeDist = round(((getPos player) distance OG_tapePos) * 10) / 10;
		} else {
			waitUntil{_tapeDist != (round(((getPos player) distance (getPos OG_tapeTarget)) * 10) / 10)};
			_tapeDist = round(((getPos player) distance (getPos OG_tapeTarget)) * 10) / 10;
		};
		
		if(!OG_tapeMeasure && (_tapeDist <= 50)) exitWith {
			hint parseText "<t size='1.2' color='#551199'>Tape Measure - OFF</ t>"
		};
		
		if((((getPos player) distance (getPos OG_tapeTarget)) > 50 && !OG_tapeNullTarget) || (((getPos player) distance OG_tapePos) > 50) && OG_tapeNullTarget) exitWith {
			hint parseText "<t size='2' color='#ff1111'>You have overextended the Tape Measure</ t>";
			OG_tapeMeasure = false;
		};
		
		titleText[format["%1m",_tapeDist],"PLAIN"];
		hint parseText format ["<t size='2' color='#00ffff'>%1m</ t>",_tapeDist];
		sleep 0.25;
	};
};