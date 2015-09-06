#include <macro.h>
/*
	Author: Bryan "Tonic" Boardwine
	
	Description:
	32 hours later...
*/
private["_grp","_grpMembers"];
_grp = grpPlayer;
if(steamid == (_grp getVariable "gang_owner")) exitWith {hint localize "STR_GNOTF_LeaderLeave"};

_grpMembers = _grp getVariable "gang_members";
_grpMembers deleteAt (_grpMembers find steamid);
/* _grpMembers = _grpMembers - [steamid]; */
_grp setVariable["gang_members",_grpMembers,true];
[player] joinSilent grpNull;
player setVariable["OZ_Group",grpNull,true];

[[4,_grp],"TON_fnc_updateGang",false,false] spawn life_fnc_MP;
closeDialog 0;