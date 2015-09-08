/*
    File: fn_autoFedLockup_init
    Author:  Aaron & Ryan (OzzyGaming.com)
    Email: aaron@ozzygaming.com
    
    Automated Federal Reserve Lockup system
*/

//Error Checks
if(OG_fedLockupActive) exitWith {};

//Initialization

OG_fedLockupActive = true;

[[player,OG_fedLockupActive,life_fedLockdown_startTimer],
"life_fnc_autoFedLockup_server",false,false] spawn life_fnc_MP;                // Notifies the server that the countdown has initialized

[[],"life_fnc_autoFedLockup",true,false] spawn life_fnc_MP;
