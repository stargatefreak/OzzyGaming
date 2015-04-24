#include <macro.h>
/*
	File: fn_requestReceived.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Called by the server saying that we have a response so let's 
	sort through the information, validate it and if all valid 
	set the client up.
*/
life_session_tries = life_session_tries + 1;
if(life_session_completed) exitWith {}; //Why did this get executed when the client already initialized? Fucking arma...
if(life_session_tries > 3) exitWith {cutText[localize "STR_Session_Error","BLACK FADED"]; 0 cutFadeOut 999999999;};

0 cutText [localize "STR_Session_Received","BLACK FADED"];
0 cutFadeOut 9999999;

//Error handling and  junk..
if(isNil "_this") exitWith {[] call SOCK_fnc_insertPlayerInfo;};
if(typeName _this == "STRING") exitWith {[] call SOCK_fnc_insertPlayerInfo;};
if(count _this == 0) exitWith {[] call SOCK_fnc_insertPlayerInfo;};
if((_this select 0) == "Error") exitWith {[] call SOCK_fnc_insertPlayerInfo;};
if((getPlayerUID player) != _this select 0) exitWith {[] call SOCK_fnc_dataQuery;};

//Lets make sure some vars are not set before hand.. If they are get rid of them, hopefully the engine purges past variables but meh who cares.
if(!isServer && (!isNil "life_ogAdminlvl415" OR !isNil "life_ozCoplvl" OR !isNil "life_Ozdonator")) exitWith {
	[[profileName,getPlayerUID player,"VariablesAlreadySet"],"SPY_fnc_cookieJar",false,false] spawn life_fnc_MP;
	[[profileName,format["Variables set before client initialization...\nlife_ogAdminlvl415: %1\nlife_ozCoplvl: %2\nlife_Ozdonator: %3",life_ogAdminlvl415,life_ozCoplvl,life_Ozdonator]],"SPY_fnc_notifyAdmins",true,false] spawn life_fnc_MP;
	sleep 0.9;
	["SpyGlass",false,false] execVM "\a3\functions_f\Misc\fn_endMission.sqf";
};

if(!isServer && (!isNil "life_adminlevel" OR !isNil "life_coplevel" OR !isNil "life_donator")) exitWith {
	[[profileName,getPlayerUID player,"VariablesAlreadySet"],"SPY_fnc_cookieJar",false,false] spawn life_fnc_MP;
	[[profileName,format["Variables set before client initialization...\nlife_adminlevel: %1\nlife_coplevel: %2\nlife_donator: %3",life_adminlevel,life_coplevel,life_donator]],"SPY_fnc_notifyAdmins",true,false] spawn life_fnc_MP;
	sleep 0.9;
	["SpyGlass",false,false] execVM "\a3\functions_f\Misc\fn_endMission.sqf";
};

//Parse basic player information.
life_ogCash415 = parseNumber (_this select 2);
life_ogBank415 = parseNumber (_this select 3);
__CONST__(life_ogAdminlvl415,parseNumber(_this select 4));
__CONST__(life_Ozdonator,parseNumber(_this select 5));
//Loop through licenses
if(count (_this select 6) > 0) then {
	{missionNamespace setVariable [(_x select 0),(_x select 1)];} foreach (_this select 6);
};
OG_totalHours = _this select 9;
__CONST__(OG_totalHours,OG_totalHours);
OG_aliases = _this select 10;
__CONST__(OG_aliases,OG_aliases);

//Parse side specific information.
switch(playerSide) do {
	case west: {
		__CONST__(life_ozCoplvl, parseNumber(_this select 11));
		__CONST__(life_ozCopPilotlvl, parseNumber(_this select 12));
		__CONST__(life_ozCopGrounded, parseNumber(_this select 13));
		life_cop_blacklisted = _this select 14;
		copTimer = _this select 8;
		
		// Set unneeded constants for checks
		__CONST__(life_ozPmclvl, 0);
		__CONST__(life_ozMediclvl, 0);
		__CONST__(life_ozMedicGrounded, 0);
	};
	
	case civilian: {
		life_is_arrested = _this select 12;
		civTimer = _this select 8;
		__CONST__(life_ozPmclvl, parseNumber(_this select 11));
		life_houses = _this select 13;
		{
			_house = nearestBuilding (call compile format["%1", _x select 0]);
			life_vehicles pushBack _house;
		} foreach life_houses;
		
		life_gangData = _This select 14;
		if(count life_gangData != 0) then {
			[] spawn life_fnc_initGang;
		};
		[] spawn life_fnc_initHouses;
		
		// Set unneeded constants for checks
		__CONST__(life_ozCoplvl, 0);
		__CONST__(life_ozCopPilotlvl, 0);
		__CONST__(life_ozCopGrounded, 0);
		__CONST__(life_ozMediclvl, 0);
		__CONST__(life_ozMedicGrounded, 0);
	};
	
	case independent: {
		medicTimer = _this select 8;
		life_med_blacklisted = _this select 13;
		__CONST__(life_ozMediclvl, parseNumber(_this select 11));
		__CONST__(life_ozMedicGrounded, parseNumber(_this select 12));
		
		// Set unneeded constants for checks
		__CONST__(life_ozPmclvl, 0);
		__CONST__(life_ozCoplvl, 0);
		__CONST__(life_ozCopPilotlvl, 0);
		__CONST__(life_ozCopGrounded, 0);
	};
};

if(count (_this select 15) > 0) then {
	{life_vehicles pushBack _x;} foreach (_this select 15);
};

if(__GETC__(life_Ozdonator) < 5) then {
	life_ogPayday415 = life_ogPayday415 + (__GETC__(life_Ozdonator) * 750);
} else {
	life_ogPayday415 = life_ogPayday415 + ((__GETC__(life_Ozdonator) * 1500) - 3000);
};

// 1: Helpdesk, 2: Moderator, 3: Admin, 4: Serv Admin, 5: Ops
if (__GETC__(life_ogAdminlvl415) > 1) then {
	if (__GETC__(life_ogAdminlvl415) > 3) then {
		// Server Admins and Operators
		life_ogPayday415 = life_ogPayday415 + 5000;
	} else {
		// Moderators and Admins
		life_ogPayday415 = life_ogPayday415 + 2000;
	};
};

// Grab gear (always 7)
life_gear = _this select 7;
[] call life_fnc_loadGear;
life_session_completed = true;