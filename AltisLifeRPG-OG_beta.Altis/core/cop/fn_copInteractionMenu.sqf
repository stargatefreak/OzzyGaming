/*
	File: fn_copInteractionMenu.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Replaces the mass addactions for various cop actions towards another player.
*/

#define Btn1 37450
#define Btn2 37451
#define Btn3 37452
#define Btn4 37453
#define Btn5 37454
#define Btn6 37455
#define Btn7 37456
#define Btn8 37457
#define Btn9 37458
#define Title 37401
#define BtnClose 374002

private["_display","_curTarget","_Btn1","_Btn2","_Btn3","_Btn4","_Btn5","_Btn6","_Btn7","_Btn8"];
if(!dialog) then {
	createDialog "pInteraction_Menu";
};
disableSerialization;
_curTarget = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _curTarget) exitWith {closeDialog 0;}; //Bad target
if(_curTarget distance player > 3) exitWith {closeDialog 0; hint "Target player is too far away"}; //Bad target

if(_curTarget isKindOf "House_F") exitWith {
	if((nearestObject [[16019.5,16952.9,0],"Land_Dome_Big_F"]) == _curTarget OR (nearestObject [[16019.5,16952.9,0],"Land_Research_house_V1_F"]) == _curTarget) then {
		_display = findDisplay 37400;
		_Btn1 = _display displayCtrl Btn1;
		_Btn2 = _display displayCtrl Btn2;
		_Btn3 = _display displayCtrl Btn3;
		_Btn4 = _display displayCtrl Btn4;
		_Btn5 = _display displayCtrl Btn5;
		_Btn6 = _display displayCtrl Btn6;
		_Btn7 = _display displayCtrl Btn7;
		_Btn8 = _display displayCtrl Btn8;
		_Btn9 = _display displayCtrl Btn9;
		_BtnClose = _display displayCtrl BtnClose;
		life_pInact_curTarget = _curTarget;
		
		_Btn1 ctrlSetText localize "STR_pInAct_Repair";
		_Btn1 buttonSetAction "[life_pInact_curTarget] spawn life_fnc_repairDoor;";
		
		_Btn2 ctrlSetText localize "STR_pInAct_CloseOpen";
		_Btn2 buttonSetAction "[life_pInact_curTarget] call life_fnc_doorAnimate;";
		_Btn3 ctrlShow false;
		_Btn4 ctrlShow false;
		_Btn5 ctrlShow false;
		_Btn6 ctrlShow false;
		_Btn7 ctrlShow false;
		_Btn8 ctrlShow false;
		_Btn9 ctrlShow false;
	} else {
		closeDialog 0;
	};
};
		
if(!isPlayer _curTarget && side _curTarget == civilian) exitWith {closeDialog 0;}; //Bad side check?
_display = findDisplay 37400;
_Btn1 = _display displayCtrl Btn1;
_Btn2 = _display displayCtrl Btn2;
_Btn3 = _display displayCtrl Btn3;
_Btn4 = _display displayCtrl Btn4;
_Btn5 = _display displayCtrl Btn5;
_Btn6 = _display displayCtrl Btn6;
_Btn7 = _display displayCtrl Btn7;
_Btn8 = _display displayCtrl Btn8;
_Btn9 = _display displayCtrl Btn9;
_BtnClose = _display displayCtrl BtnClose;
life_pInact_curTarget = _curTarget;

//Set Unrestrain Button
_Btn1 ctrlSetText localize "STR_pInAct_Unrestrain";
_Btn1 buttonSetAction "[life_pInact_curTarget] call life_fnc_unrestrain; closeDialog 0;";

//Set Check Licenses Button
_Btn2 ctrlSetText localize "STR_pInAct_checkLicenses";
_Btn2 buttonSetAction "[[player],""life_fnc_licenseCheck"",life_pInact_curTarget,FALSE] spawn life_fnc_MP;";

//Set Search Button
_Btn3 ctrlSetText localize "STR_pInAct_SearchPlayer";
_Btn3 buttonSetAction "[life_pInact_curTarget] spawn life_fnc_searchAction; closeDialog 0;";

//Set Escort Button
if((_curTarget getVariable["Escorting",false])) then {
	_Btn4 ctrlSetText localize "STR_pInAct_StopEscort";
	_Btn4 buttonSetAction "[life_pInact_curTarget] call life_fnc_stopEscorting; [life_pInact_curTarget] call life_fnc_copInteractionMenu;";
} else {
	_Btn4 ctrlSetText localize "STR_pInAct_Escort";
	_Btn4 buttonSetAction "[life_pInact_curTarget] call life_fnc_escortAction; closeDialog 0;";
};

//Set Ticket Button
_Btn5 ctrlSetText localize "STR_pInAct_TicketBtn";
_Btn5 buttonSetAction "[life_pInact_curTarget] call life_fnc_ticketAction;";

_Btn7 ctrlSetText localize "STR_pInAct_PutInCar";
_Btn7 buttonSetAction "[life_pInact_curTarget] call life_fnc_putInCar;";

//actually the Breathalyser button
_Btn6 ctrlSetText "Breathalyzer";
_Btn6 buttonSetAction "[[player],""life_fnc_breathalyzer"",life_pInact_curTarget,FALSE] spawn life_fnc_MP; closeDialog 0;";

//Check that you are near a place to jail them.
if(((player distance (getMarkerPos "police_hq_1") < 50) OR  (player distance (getMarkerPos "police_hq_2") < 50) OR (player distance (getMarkerPos "police_hq_3") < 50) OR (player distance (getMarkerPos "police_hq_4") < 50) OR (player distance (getMarkerPos "police_hq_5") < 50) OR (player distance (getMarkerPos "police_hq_6") < 50) OR (player distance (getMarkerPos "police_hq_7") < 50) OR (player distance (getMarkerPos "police_hq_8") < 50))) then 
{
	_Btn8 ctrlEnable true;
	_Btn8 ctrlSetText localize "STR_pInAct_Arrest";
	_Btn8 buttonSetAction "[life_pInact_curTarget] call life_fnc_arrestAction;";

	_Btn9 ctrlEnable true;
	_Btn9 ctrlSetText "Disarm Player";
	_Btn9 buttonSetAction "[life_pInact_curTarget] call life_fnc_dropRebel;";
} else {
	_Btn8 ctrlEnable false;
	_Btn8 ctrlShow false;
	_Btn9 ctrlEnable false;
	_Btn9 ctrlShow false;
};
		
_BtnClose buttonSetAction "closeDialog 0;";

if(side _curTarget == west) then {
    _Btn1 ctrlEnable false;
    _Btn1 ctrlSetText "Issue Comms";
    _Btn2 ctrlShow false;
    _Btn3 ctrlShow false;
    _Btn4 ctrlShow false;
    _Btn5 ctrlShow false;
    _Btn6 ctrlShow false;
    _Btn7 ctrlShow false;
    _Btn8 ctrlShow false;
    _Btn9 ctrlShow false;
    if(!(_curTarget getVariable ["comms",true])) then {
        _Btn1 ctrlEnable true;
        _Btn1 buttonSetAction "[life_pInact_curTarget] call life_fnc_issueComms";
    };
    if(_curTarget getVariable["restrainedCiv",false]) then {
        //Set Unrestrain Button
        _Btn2 ctrlShow true;
        _Btn2 ctrlEnable true;
        _Btn2 ctrlSetText localize "STR_pInAct_Unrestrain";
        _Btn2 buttonSetAction "[life_pInact_curTarget] call life_fnc_unrestrainCiv; closeDialog 0;";
    };
};