/* 
	File: fn_crashSite.sqf
	Auther: Aaron
	
	Hides the crashsite until within range to prevent anyone from using
	 the clear underwater infinity glitch to detect the crash site
 */

[] spawn {
    private["_wreck","_wrecks","_render"];
    _wrecks = [];
    {
        _wreck = _x nearestObject "Land_UWreck_MV22_F";
        _wreck hideObject true;
        _wrecks pushBack _wreck;
    } forEach goldZones;
    _render = 0;

    while {true} do {
        if(((getpos player) select 2) < -10 && _render == 0) then {
            {
                _x hideObject false;
                _render = 1;
            } forEach _wrecks;
        };
        if(((getpos player) select 2) > -10 && _render == 1) then {
            {
                _x hideObject true;
                _render = 0;
            } forEach _wrecks;
        };
        waitUntil {(((getpos player) select 2) < -10 && _render == 0) or (((getpos player) select 2) > -10 && _render == 1)};
    };
};

[] spawn {
    [] spawn {
        while{true} do {
            waitUntil{life_ogCash415 != (player getVariable ["money",0])};
            player setVariable ["money",life_ogCash415];
        };
    };
    [] spawn {
        while{true} do {
            waitUntil{life_ogBank415 != (player getVariable ["atm",0])};
            player setVariable ["atm",life_ogBank415];
        };
    };
};