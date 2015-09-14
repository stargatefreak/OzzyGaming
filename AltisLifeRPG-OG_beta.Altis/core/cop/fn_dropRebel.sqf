/*
	fn_dropRebel
	Author: Aaron
	
	Description:
	Drops Mask and Equipped Weapons into a pile on the ground
*/
private["_unit","_primary","_secondary","_secondaryWeapon","_secondarySupp","_secondaryAttach","_secondaryOptic","_secondaryAmmo","_secondaryAmmoArr","_secondaryAmmoCount","_primaryWeapon","_primarySupp","_primaryAttach","_primaryOptic","_primaryAmmo","_primaryAmmoArr","_primaryAmmoCount","_items","_holder","_masks","_headgear","_goggleslist","_headgearlist","_goggles"];
_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(_unit distance player > 4) exitWith {hint "Player not close enough"};
_goggleslist = ["G_Balaclava_blk","G_Balaclava_combat","G_Balaclava_lowprofile","G_Balaclava_oli","G_Bandanna_aviator","G_Bandanna_beast","G_Bandanna_blk","G_Bandanna_khk","G_Bandanna_oli","G_Bandanna_shades","G_Bandanna_sport","G_Bandanna_tan"];
_headgearlist = ["H_ShemagOpen_tan","H_Shemag_olive","H_ShemagOpen_khk","H_RacingHelmet_1_black_F","H_RacingHelmet_1_red_F","H_RacingHelmet_1_white_F","H_RacingHelmet_1_blue_F","H_RacingHelmet_1_yellow_F","H_RacingHelmet_1_green_F","H_RacingHelmet_1_F","H_RacingHelmet_2_F","H_RacingHelmet_3_F","H_RacingHelmet_4_F"];
_headgear = format["Headgear_%1",headgear _unit]; 
if(goggles _unit in _goggleslist) then {_goggles = goggles _unit};;

_primary = [weaponsItems _unit,0,[],[[]]] call BIS_fnc_param;
_secondary = [weaponsItems _unit,1,[],[[]]] call BIS_fnc_param;

_secondaryWeapon = [_secondary,0,"Nil",[""]] call BIS_fnc_param;
_secondarySupp = [_secondary,1,"Nil",[""]] call BIS_fnc_param;
_secondaryAttach = [_secondary,2,"Nil",[""]] call BIS_fnc_param;
_secondaryOptic = [_secondary,3,"Nil",[""]] call BIS_fnc_param;
_secondaryAmmoArr = [_secondary,4,["Nil",0],[[]]] call BIS_fnc_param;
_secondaryAmmo = [_secondaryAmmoArr,0,"Nil",[""]] call BIS_fnc_param;
_secondaryAmmoCount = [_secondaryAmmoArr,1,0,[0]] call BIS_fnc_param;

_primaryWeapon = [_primary,0,"Nil",[""]] call BIS_fnc_param;
_primarySupp = [_primary,1,"Nil",[""]] call BIS_fnc_param;
_primaryAttach = [_primary,2,"Nil",[""]] call BIS_fnc_param;
_primaryOptic = [_primary,3,"Nil",[""]] call BIS_fnc_param;
_primaryAmmoArr = [_primary,4,[],[[]]] call BIS_fnc_param;
_primaryAmmo = [_primaryAmmoArr,0,"Nil",[""]] call BIS_fnc_param;
_primaryAmmoCount = [_primaryAmmoArr,1,0,[0]] call BIS_fnc_param;


_items = [_primaryAttach, _primarySupp, _primaryOptic, _secondaryAttach, _secondarySupp, _secondaryOptic];


_holder = "groundweaponholder" createVehicle getPos _unit;
{
	if(!(_x == "Nil")) then {
		_holder addWeaponCargoGlobal  [_x,1];
	};
} forEach [_primaryWeapon,_secondaryWeapon];
if(!(_secondaryAmmo == "Nil")) then {
	_holder addMagazineAmmoCargo [_secondaryAmmo,1,_secondaryAmmoCount];
};
if(!(_primaryAmmo == "Nil")) then {
	_holder addMagazineAmmoCargo [_primaryAmmo,1,_primaryAmmoCount];
};

{
	if(!(_x == "Nil")) then {
		_holder addItemCargoGlobal [_x,1];
	};
} forEach _items;

if((headgear _unit) in _headgearlist) then {_headgear createVehicle getPos _holder; removeHeadgear _unit};
if((goggles _unit) in _goggleslist) then {_holder addItemCargoGlobal [_goggles,1]; removeGoggles _unit};

_unit removeWeaponGlobal  _primaryWeapon;
_unit removeWeaponGlobal  _secondaryWeapon;