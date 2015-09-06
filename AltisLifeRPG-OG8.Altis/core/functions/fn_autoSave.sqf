/*
@Version: 0.3
@Author: =IFD= Cryptonat
@Edited: 5/16/14

Description:
Saves the player's gear every 5 minutes.
*/

while {true} do {
	sleep 300;
	if(!life_onDeath) then {
		[] call SOCK_fnc_updateRequest;
		hint "Game Autosaved."
	};
};