#include <macro.h>
/*
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Prompts the player about an invite.
*/
private["_name","_group","_members","_members2"];
_inviter = [_this,0,objNull,[objNull]] call BIS_fnc_param;
_group = [_this,1,grpNull,[grpNull]] call BIS_fnc_param;
_name = name _inviter;
if(_inviter == objNull OR isNull _group OR _name == "") exitWith {}; //Fail horn anyone?
if(!isNil {(group player) getVariable "gang_name"}) exitWith {hint "You are already in a gang"};

_gangName = _group getVariable "gang_name";
_action = [
	format[localize "STR_GNOTF_InviteMSG",_name,_gangName],
	localize "STR_Gang_Invitation",
	localize "STR_Global_Yes",
	localize "STR_Global_No"
] call BIS_fnc_guiMessage;

if(_action) then {
	[player] join _group;
	_members = _group getVariable "gang_members";
	_members pushBack getPlayerUID player;
	_group setVariable["gang_members",_members,true];
    player setVariable["OZ_Group",_group,true];
    _members2 = [];
    {
        if(!(_x in _members2)) then {
            _members2 pushBack _x
        };
    } forEach _members;
	_group setVariable["gang_members",_members2,true];
	[[4,_group],"TON_fnc_updateGang",false,false] spawn life_fnc_MP;
    [[2,format["%1 has accepted your invite and has joined your gang",name player]],"life_fnc_broadcast",_inviter,false] spawn life_fnc_MP;
	player setVariable ["activeInvite",false,true];
} else {
    [[2,format["%1 has declined your invite to join your gang",name player]],"life_fnc_broadcast",_inviter,false] spawn life_fnc_MP;
	player setVariable ["activeInvite",false,true];
};