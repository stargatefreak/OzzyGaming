/* 
	File: fn_issueComms.sqf
	Auther: Aaron
	
    restores them to a group
 */
private["_curTarget"];
_curTarget = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;

if(isNull _curTarget) exitWith {closeDialog 0;}; //Bad target

[_curTarget] join (group player);

_curTarget setVariable ["comms",true,false];
[[2,format["%1 has issued you Comms, Try not to be taken again!!",profileName]],"life_fnc_broadcast",_curTarget,false] spawn life_fnc_MP;
titleText[format["%1's comms have been returned, Keep them safe!!",name _curTarget],"PLAIN"];
closeDialog 0;