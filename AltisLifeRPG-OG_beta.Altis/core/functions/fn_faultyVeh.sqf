
[] spawn {
    private["_vehicle"];
    while{true} do {
        waitUntil{((vehicle player) getVariable ["faulty",false]) && (assignedDriver (vehicle player) == player)};
        _vehicle = vehicle player;
        sleep (random 60);
        if(random 100 < 40) then {
            if (_vehicle == vehicle player) then {
                [] spawn {
                    private["_vehicle"];
                    _vehicle = vehicle player;
                    if(!(_vehicle getVariable["lemon",false])) then {
                        waitUntil{
                            _vehicle getVariable["lemon",false];
                            sleep random 10;
                            _vehicle setVariable["lemon",true];
                        };
                    } else {
                        sleep (random 60);
                    };
                    
                    if(random 100 < 40) then {
                        _vehicle setHitPointDamage ["HitEngine",1];
                        sleep 0.4;
                        _vehicle setHitPointDamage ["HitEngine",0];
                        [2,"I thought I heard something really wierd from my Engine"] spawn life_fnc_broadcast;
                        sleep 2.3;
                        [2,"I don't think this is good"] spawn life_fnc_broadcast;
                        sleep ((random 30) / 10);
                        _vehicle setHitPointDamage ["HitEngine",1];
                        sleep 0.7;
                        _vehicle setHitPointDamage ["HitEngine",0];
                        sleep 1.1;
                        [2,"Damn the engine is getting too hot"] spawn life_fnc_broadcast;
                        
                        //Checks if the vehicle is an Air vehicle and gives them at least 10 more seconds to land
                        switch(getText (configFile >> "CfgVehicles" >> (typeOf vehicle player) >> "vehicleClass")) do {
                            case "Air":
                            {
                                sleep ((random 5) + 10);
                            };
                            default
                            {
                                sleep random 5;
                            };
                        };
                        
                        [2,"Oh great, Now we have to wait till it cools"] spawn life_fnc_broadcast;
                        _vehicle setHitPointDamage ["HitEngine",1];
                        _vehicle setVariable["lemon",false];
                        _vehicle setVariable["tooHot",true];
                        sleep (random 120);
                        _vehicle setVariable["tooHot",false];
                        _vehicle setHitPointDamage ["HitEngine",0];
                    };
                };
            };
        };
    };
};