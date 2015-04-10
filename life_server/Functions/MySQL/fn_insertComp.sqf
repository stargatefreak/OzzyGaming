/*
	File: fn_insertComp.sqf
	Author: Aaron
	
	Description:
	Inserts a log of all compensation issued within the game
*/
private["_admin","_player","_comp","_adminName","_playerName","_query"];
_admin = [_this,0,objNull,[objNull]] call BIS_fnc_param;
_player = [_this,1,objNull,[objNull]] call BIS_fnc_param;
_comp = [_this,2,0,[0]] call BIS_fnc_param;

//Error checks

//Clense and prepare some information.
_adminName = [name _admin] call DB_fnc_mresString; //Clense the name of bad chars.
_playerName = [name _player] call DB_fnc_mresString; //Clense the name of bad chars.
_comp = [_comp] call DB_fnc_numberSafe;

//Prepare the query statement..
_query = format["INSERT INTO altislife.complog (adminID, admin, playerID, player, amount) VALUES ('%1', '%2', '%3', '%4', '%5');",
	getPlayerUID _admin,
	_adminName,
	getPlayerUID _player,
	_playerName,
	_comp
];

/* waitUntil {!DB_Async_Active}; */
[_query,1] call DB_fnc_asyncCall;