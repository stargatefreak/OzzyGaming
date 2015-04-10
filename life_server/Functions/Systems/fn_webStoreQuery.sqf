/*
	File: fn_webStoreQuery.sqf
	Author: Aaron "StargateFreak"
	
	Description:
	System designed by Aaron to be used by associated OzzyGaming.com servers.
    You must ask permission before using my system.
    
    This system automatically gives money purchased on the website to be applied to the online
    players without having the need of logging out.
*/
private["_pid"];
sleep ((random 1000) / 5000);
if(OG_WebStore_active) exitWith {};
OG_WebStore_active = true;
sleep ((random 1000) / 2000);
if(OG_Webstore_active2) exitWith {};
OG_Webstore_active2 = true;
sleep ((random 1000) / 500);
if(OG_Webstore_active3) exitWith {diag_log "WEBSTORE SCRIPT ALREADY ACTIVE"};
OG_Webstore_active3 = true;

//OZZYGAMING PROCESSID CHECKSUM. STOPS DUPLICATE INSTANCES OF THE QUERY FROM EXECUTING
_pid = random 999999;
OG_WebStore_PID pushBack _pid;
sleep 1;
diag_log format["WEBSTORE PROCESS ID: %1",OG_WebStore_PID];
diag_log format["WEBSTORE ACTIVE: %1",OG_Webstore_active2];
if(_pid != OG_WebStore_PID select 0) exitWith {diag_log format["WEBSTORE STOPPED #PID %1 FROM RUNNING",_pid]; OG_WebStore_PID = OG_WebStore_PID - [_pid]};
_webScript = [] spawn {
    private["_uid","_money","_result","_resultOnline","_onlineUID","_online","_query","_queryID","_tickTime","_antiInject"];
    while {true} do {
    _onlineUID = [];
    _resultOnline = [];
    _antiInject = 0;
    _online = [];
    _queryID = "";

    {
        _onlineUID pushBack (getPlayerUID _x);
        _online pushback _x;
        if((count toArray _queryID) == 0) then {
            _queryID = format["'%1'",getPlayerUID _x];
        } else {
            _queryID = format["%1,'%2'",_queryID,getPlayerUID _x];
        };
    } forEach playableUnits;

        _tickTime = diag_tickTime;
        _result = [format["SELECT playerid, name, webstoreMoney FROM players WHERE webstoreMoney > '0' and playerid in (%1)",_queryID],2,true] call DB_fnc_asyncCall;
        diag_log "------------- WebStore Query Request -------------";
        diag_log format["Time to complete: %1 (in seconds)",(diag_tickTime - _tickTime)];
        diag_log "------------------------------------------------";
        {
            if((_x select 0) in _onlineUID) then {
                _x set[1,_online select (_onlineUID find (_x select 0))];
                _resultOnline pushback _x;
            };
        } forEach _result;
        diag_log format["Result: %1",_result];

        OG_storeAntiInject = random 9999999;
        publicVariable "OG_storeAntiInject";
        {
            _uid = _x select 0;
            _unit = _online select (_onlineUID find _uid);
            _money = _x select 2;
            if (count playableUnits == 0) exitWith {};
            [[_money,OG_storeAntiInject],"life_fnc_webStoreReceive",_unit,false] spawn life_fnc_MP;
            diag_log format["-- WebStore Transfered $%1 to %2 --",[_money] call DB_fnc_numberSafe,name _unit];
            _query = format["UPDATE players SET webstoreMoney=(webstoreMoney - %2) where playerid='%1'",_uid,_money];
            diag_log format["-- WEBSTORE MONEY UPDATE QUERY: %1",_query];
            [_query,1] call DB_fnc_asyncCall;
            sleep 1;
        } forEach _resultOnline;
        OG_storeAntiInject = 0;
        publicVariable "OG_storeAntiInject";
        sleep (5 * 60);
        if (count playableUnits == 0) exitWith {};
    };
};
waitUntil{scriptDone _webScript};
diag_log "WEBSTORE QUERY STOP: ALL PLAYERS HAVE NOW DISCONNECTED";
OG_WebStore_active = false;
OG_Webstore_active2 = false;
OG_Webstore_active3 = false;
publicVariable "OG_WebStore_active";