OG_fnc_payment =
compileFinal "
    private[""_value"",""_bank"",""_cash"",""_fromBank""];
    _value = [_this,0,0] call BIS_fnc_param;
    _fromBank = [_this,1,true] call BIS_fnc_param;
    _bank = life_ogBank415;
    _cash = life_ogCash415;
    
    switch(_fromBank) do {
        case true: {
            if(_bank < _value) then {
                life_ogCash415 = life_ogCash415 - (_bank - _value);
                life_ogBank415 = 0;
            } else {
                life_ogBank415 = life_ogBank415 - _value;
            };
        };
        case false: {
            if(_cash < _value) then {
                life_ogBank415 = life_ogBank415 - (_cash - _value);
                life_ogCash415 = 0;
            } else {
                life_ogCash415 = life_ogCash415 - _value;
            };
        };        
    };
";

publicVariable "OG_fnc_payment";

OG_fnc_payment =
compileFinal "
    private[""_value"",""_bank"",""_cash"",""_fromBank""];
    _value = [_this,0,0] call BIS_fnc_param;
    _fromBank = [_this,1,true] call BIS_fnc_param;
    _bank = life_ogBank415;
    _cash = life_ogCash415;
    
    switch(_fromBank) do {
        case true: {
            if(_bank < _value) then {
                life_ogCash415 = life_ogCash415 - (_bank - _value);
                life_ogBank415 = 0;
            } else {
                life_ogBank415 = life_ogBank415 - _value;
            };
        };
        case false: {
            if(_cash < _value) then {
                life_ogBank415 = life_ogBank415 - (_cash - _value);
                life_ogCash415 = 0;
            } else {
                life_ogCash415 = life_ogCash415 - _value;
            };
        };        
    };
";

publicVariable "OG_fnc_payment";

OG_fnc_animPlayer =
compileFinal "
    private[""_last"",""_anim""];
    _last = [_this,0,animationState player] call BIS_fnc_param;
    _anim = [_this,1,""AinvPknlMstpSnonWnonDnon_medic_1""] call BIS_fnc_param;
    waitUntil{animationInProgress};
    while{animationInProgress} do {
        [[player,_anim],""life_fnc_animSync"",true,false] spawn life_fnc_MP;
        player playMove _anim;
        sleep 0.85;
    };
    player playMove _last;
";
publicVariable "OG_fnc_animPlayer";

OG_fnc_garageVehicle =
compileFinal "
    private[""_nearVehicle"",""_filteredVehicle""];
    if(_this select 1) then {
        _nearVehicle = nearestObjects[(getMarkerPos (_this select 0)),[""Car"",""Ship"",""Air""],35];
    } else {
        _nearVehicle = nearestObjects[(getPos (_this select 0)),[""Car"",""Ship"",""Air""],35];
    };
    {
        if(!(typeof _x in [""PortableHelipadLight_01_green_F"",""PortableHelipadLight_01_red_F""])) then {_filteredVehicle pushBack _x};
    } forEach _nearVehicle;
    _nearVehicle = _filteredVehicle select 0;
    if(isNil ""_nearVehicle"") exitWith {
        hint ""There isn't a vehicle near this NPC."";
    };
    [[_nearVehicle,false,(_this select 1)],""TON_fnc_vehicleStore"",false,false] spawn life_fnc_MP;
    hint ""The server is trying to store the vehicle please wait...."";
    life_garage_store = true;
";

publicVariable "OG_fnc_garageVehicle";

OG_fnc_earPlugs_down =
compileFinal "
    if (OG_budVolume > 20) then {
        OG_budVolume = OG_budVolume - 20;
        1 fadeSound (OG_budVolume / 100);
        titleText[format[""You have lowered your ambient volume to: %1"",OG_budVolume],""PLAIN""];
    };
    if (OG_budVolume <= 20) then {
        OG_budVolume = 20;
        1 fadeSound 0.2;
    };
";

publicVariable "OG_fnc_earPlugs_down";

OG_fnc_earPlugs_up =
compileFinal "
    if (OG_budVolume < 100) then {
        OG_budVolume = OG_budVolume + 20;
        1 fadeSound (OG_budVolume / 100);
        titleText[format[""You have raised your ambient volume to: %1"",OG_budVolume],""PLAIN""];
    };
    if (OG_budVolume >= 100) then {
        OG_budVolume = 100;
        1 fadeSound 1;
    };
";

publicVariable "OG_fnc_earPlugs_up";

