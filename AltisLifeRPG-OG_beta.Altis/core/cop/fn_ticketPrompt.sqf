/*
	File: fn_ticketPrompt
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Prompts the player that he is being ticketed.
*/
private["_cop","_val","_display","_control","_timeout"];
if(!isNull (findDisplay 2600)) exitwith {}; //Already at the ticket menu, block for abuse?
_cop = _this select 0;
if(isNull _cop) exitWith {};
_val = _this select 1;
_timeout = 30; //Define the timeout to auto refuse

createDialog "life_ticket_pay";
disableSerialization;
waitUntil {!isnull (findDisplay 2600)};
_display = findDisplay 2600;
_control = _display displayCtrl 2601;
life_ticket_paid = false;
life_ticket_val = _val;
life_ticket_cop = _cop;
_control ctrlSetStructuredText parseText format["<t align='center'><t size='.8px'>" +(localize "STR_Cop_Ticket_GUI_Given"),_cop getVariable["realname",name _cop],_val];

[] spawn
{
	disableSerialization;
	waitUntil {life_ticket_paid OR (isNull (findDisplay 2600))};
	if(isNull (findDisplay 2600) && !life_ticket_paid) then
	{
		[[0,format[localize "STR_Cop_Ticket_Refuse",profileName]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
		[[1,format[localize "STR_Cop_Ticket_Refuse",profileName]],"life_fnc_broadcast",life_ticket_cop,false] spawn life_fnc_MP;
	};
};

[_timeout] spawn
{
    private["_timeout"];
    _timeout = [_this,0,60,[0]] call BIS_fnc_param;
    sleep _timeout;
    
    //True = AutoPay - False = AutoRefuse
    if(true) then {
        [] call life_fnc_ticketPay;
    } else {
        closeDialog 0;
    };
};

if(life_ticketTimer_running) then
{
life_ticketTimer_stop = true;
waitUntil {!life_ticketTimer_running};
};

[_timeout] spawn
{
    private["_uiDisp","_time","_timer","_timeout"];
    disableSerialization;
    7 cutRsc ["life_ticketTimer","PLAIN"];
    _uiDisp = uiNamespace getVariable "life_ticketTimer";
    _timer = _uiDisp displayCtrl 38303;
    _timeout = [_this,0,60,[0]] call BIS_fnc_param;
    _time = time + _timeout; 
    life_ticketTimer_running = true;
    while {true} do {
          if(isNull _uiDisp) then {
                7 cutRsc ["life_ticketTimer","PLAIN"];
                _uiDisp = uiNamespace getVariable "life_ticketTimer";
                _timer = _uiDisp displayCtrl 38303;
          };
          if(round(_time - time) < 1) exitWith {};
          if(life_ticketTimer_stop) exitWith {life_ticketTimer_stop = false;};
          _timer ctrlSetText format["Time Left to decide: %1",[(_time - time),"MM:SS.MS"] call BIS_fnc_secondsToString];
          sleep 0.08;
    };
    life_ticketTimer_running = false;
    7 cutText["","PLAIN"];
};