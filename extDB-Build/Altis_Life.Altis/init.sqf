enableSaving [false, false];

X_Server = false;
X_Client = false;
X_JIP = false;
StartProgress = false;

if(!isDedicated) then { X_Client = true;};
enableSaving[false,false];

life_versionInfo = "Altis Life RPG v3.1.4.8";
[] execVM "briefing.sqf"; //Load Briefing
[] execVM "scripts\DynWeather.sqf";
[] execVM "scripts\fn_addATMS.sqf";
[] execVM "scripts\fn_disableSnakes.sqf";
[] execVM "scripts\fn_noSideVoice.sqf";
[] execVM "scripts\fn_statusBar.sqf";
[] execVM "KRON_Strings.sqf";

_igiload = execVM "core\IgiLoad\IgiLoadInit.sqf";

if(isDedicated && isNil("life_market_prices")) then
{
	[] call life_fnc_marketconfiguration;
	diag_log "Market prices generated!";
	
	"life_market_prices" addPublicVariableEventHandler
	{
		diag_log format["Market prices updated! %1", _this select 1];
	};
	
	//Start server fsm	
	[] execFSM "core\fsm\server.fsm";
	diag_log "Server FSM executed";
};
/* 
// mod cruise control
call mod_cruiseControl; */

StartProgress = true;
enableRadio false
