/*
	fn_dropRebel
	Author: Aaron
	
	Description:
	Drops Mask and Equipped Weapons into a pile on the ground
*/
private["_unit","_itemCount","_weaponsArr","_weaponCargoArr","_weaponsSupp","_weaponsAtt","_weaponsOptics","_weaponsAmmo","_weaponCount","_holder","_headgear","_headgearlist","_goggleslist","_whitelistedWeapons"];

_unit = [_this,0,player,[ObjNull]] call BIS_fnc_param;
if(_unit distance player > 4) exitWith {hint "Player not close enough"};
_itemCount = 0;
_whitelistedWeapons = [""];
_goggleslist = ["G_Balaclava_blk","G_Balaclava_combat","G_Balaclava_lowprofile","G_Balaclava_oli","G_Bandanna_aviator","G_Bandanna_beast","G_Bandanna_blk","G_Bandanna_khk","G_Bandanna_oli","G_Bandanna_shades","G_Bandanna_sport","G_Bandanna_tan"];
_headgearlist = ["H_ShemagOpen_tan","H_Shemag_olive","H_ShemagOpen_khk","H_RacingHelmet_1_black_F","H_RacingHelmet_1_red_F","H_RacingHelmet_1_white_F","H_RacingHelmet_1_blue_F","H_RacingHelmet_1_yellow_F","H_RacingHelmet_1_green_F","H_RacingHelmet_1_F","H_RacingHelmet_2_F","H_RacingHelmet_3_F","H_RacingHelmet_4_F"];
_headgear = format["Headgear_%1",headgear _unit]; 
if(goggles _unit in _goggleslist) then {_goggles = goggles _unit};;

_weaponsArr = [];
_weaponCargoArr = [];
_weaponsSupp = [];
_weaponsAtt = [];
_weaponsOptics = [];
_weaponsAmmo = [];
_weaponCount = count weaponsItems _unit;
if(count weaponsItems _unit > 0) then {
	for "_i" from 0 to (count weaponsItems _unit - 1) do {
		if(weaponsItems _unit select _i select 0 != "") then {
			if(_i < 2) then {
				_weaponsArr pushBack (weaponsItems _unit select _i select 0);
			} else {
				_weaponCargoArr pushBack (weaponsItems _unit select _i select 0);
			};
		};
		if(weaponsItems _unit select _i select 1 != "" && (weaponsItems _unit select _i select 0 != "hgun_P07_snds_F")) then {
			_weaponsSupp pushBack (weaponsItems _unit select _i select 1);
		};
		if(weaponsItems _unit select _i select 2 != "") then {
			_weaponsAtt pushBack (weaponsItems _unit select _i select 2);
		};
		if(weaponsItems _unit select _i select 3 != "") then {
			_weaponsOptics pushBack (weaponsItems _unit select _i select 3);
		};
		if([weaponsItems _unit select _i,4,[""],[[]]] call BIS_fnc_param select 0 != "") then {
			_weaponsAmmo pushBack (weaponsItems _unit select _i select 4);
		};
	};
};

_holder = "groundweaponholder" createVehicle [0,0,0];
_holder setPos (_unit modelToWorld [0,0.4,0]);

{
	if(!(_x in _whitelistedWeapons)) then {
		_holder addWeaponCargoGlobal  [_x,1];
		_unit removeWeaponGlobal _x;
	} else {_weaponCount = _weaponCount - 1};
} forEach _weaponsArr;

{
	if(!(_x in _whitelistedWeapons)) then {
	_holder addWeaponCargoGlobal  [_x,1];
	_unit removeItemFromBackpack _x;
	_unit removeItemFromUniform _x;
	_unit removeItemFromVest _x;
	} else {_weaponCount = _weaponCount - 1};
} forEach _weaponCargoArr;

{
	_holder addMagazineAmmoCargo [_x select 0,1,_x select 1];
} forEach _weaponsAmmo;

{
	if(!(_x in _whitelistedWeapons)) then {
		_holder addItemCargoGlobal [_x,1];
	} else {_weaponCount = _weaponCount - 1};
} forEach (_weaponsSupp + _weaponsAtt + _weaponsOptics);

if((headgear _unit) in _headgearlist) then {_headgear createVehicle getPos _holder; removeHeadgear _unit};
if((goggles _unit) in _goggleslist) then {_holder addItemCargoGlobal [_goggles,1]; removeGoggles _unit};

switch (_weaponCount) do {
	case 0: {hint format["No weapons were found on %1",name _unit];};
	case 1: {hint format["The search on %1 turned up 1 weapon",name _unit];};
	default {hint format["%2 weapons were found and removed from %1",name _unit,_weaponCount];};
};