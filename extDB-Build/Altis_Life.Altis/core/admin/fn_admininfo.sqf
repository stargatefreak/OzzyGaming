/*
	File: fn_admininfo.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Output information received to admin menu.
*/
private["_display","_ret","_text","_unit","_prim","_sec","_vest","_uni","_bp","_attach","_tmp","_left","_len","_len1","_adminlvl","_donatorlvl"];
_ret = _this;
disableSerialization;
_display = findDisplay 2900;
_text = _display displayCtrl 2903;
_unit = _ret select 3;
_prim = if(primaryWeapon _unit != "") then { getText(configFile >> "CfgWeapons" >> (primaryWeapon _unit) >> "DisplayName")} else {"None"};
_sec = if(handgunWeapon _unit != "") then { getText(configFile >> "CfgWeapons" >> (handgunWeapon _unit) >> "DisplayName")} else {"None"};
_vest = if(vest _unit != "") then { getText(configFile >> "CfgWeapons" >> (vest _unit) >> "DisplayName")} else {"None"};
_uni = if(uniform _unit != "") then { getText(configFile >> "CfgWeapons" >> (uniform _unit) >> "DisplayName")} else {"None"};
_bp = if(backpack _unit != "") then { getText(configFile >> "CfgWeapons" >> (backpack _unit) >> "DisplayName")} else {"None"};

_attach = [];
if(primaryWeapon _unit != "") then
{
	{
		if(_x != "") then
		{
			_tmp = getText(configFile >> "CfgWeapons" >> _x >> "displayName");
			_attach pushBack _tmp;
		};
	} foreach (primaryWeaponItems _unit);
};

if(count _attach == 0) then {_attach = "None"};
_text ctrlSetStructuredText parseText format["Name: %1 <t align='center' color='#ff0000'>(A:%10-D:%11)</t><br/>PlayerUID: %12<br/>Bank: %2<br/>Money: %3<br/>Uniform: %4<br/>Vest: %5<br/>Backpack: %6<br/>Primary: %7<br/>Handgun: %8<br/><t align='center'>Primary Attachments</t><br/>%9",
_unit getVariable["realname",name _unit],[_ret select 0] call life_fnc_numberText,[_ret select 1] call life_fnc_numberText, _uni,_vest,_bp,_prim,_sec,_attach,_ret select 4,_ret select 5,_ret select 6];
targetPlayerAdminLvl = _ret select 4;