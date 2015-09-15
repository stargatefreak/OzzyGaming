#include <macro.h>
/*
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Starts the invite process?
*/
private["_unit"];
disableSerialization;

if((lbCurSel 2632) == -1) exitWith {hint localize "STR_GNOTF_SelectPerson"};
_unit = call compile format["%1",getSelData(2632)];
if(isNull _unit) exitWith {}; //Bad unit?
if(_unit == player) exitWith {hint localize "STR_GNOTF_InviteSelf"};
if(!isNil {(group _unit) getVariable "gang_name"}) exitWith {hint "This player is already in a gang"}; //Added
if(_unit getVariable ["activeInvite",false]) exitWith {[[3,format["<t size='1.4' color='#cccccc'>You have attempted to invite <t color='#e01010'>%1 <t color='#cccccc'>to your gang <t color='#ff7b02'>%2 <t color='#cccccc'>and failed due to them having an invitation already pending",name _unit,(group player) getVariable "gang_name"]],"life_fnc_broadcast",player,false] spawn life_fnc_MP};  // Player has active invite
if(count(grpPlayer getVariable ["gang_members",8]) == (grpPlayer getVariable ["gang_maxMembers",8])) exitWith {hint localize "STR_GNOTF_MaxSlot"};

_action = [
	format[localize "STR_GNOTF_InvitePlayerMSG",_unit getVariable ["realname",name _unit]],
	localize "STR_Gang_Invitation",
	localize "STR_Global_Yes",
	localize "STR_Global_No"
] call BIS_fnc_guiMessage;

if(_action) then {
	[[player,grpPlayer],"life_fnc_gangInvite",_unit,false] spawn life_fnc_MP;
	hint format[localize "STR_GNOTF_InviteSent",_unit getVariable["realname",name _unit]];
	_unit setVariable["activeInvite",true,true];
} else {
	hint localize "STR_GNOTF_InviteCancel";
};