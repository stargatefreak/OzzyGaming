/*
	fn_dropRebel
	Author: Aaron
	
	Description:
	Drops Mask and Equipped Weapons into a pile on the ground
*/
private["_unit","weapon","_loot","_primary","_secondary","_secondaryWeapon","_secondarySupp","_secondaryAttach","_secondaryOptic","_secondaryAmmo","_secondaryAmmoCount","_primaryWeapon","_primarySupp","_primaryAttach","_primaryOptic","_primaryAmmo","_primaryAmmoCount","_items","_holder","_masks","_headgear","_goggleslist","_headgearlist","_goggles"];
_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(_unit distance player > 3) exitWith {hint "Player not close enough"};
_goggleslist = ["G_Balaclava_blk","G_Balaclava_combat","G_Balaclava_lowprofile","G_Balaclava_oli","G_Bandanna_aviator","G_Bandanna_beast","G_Bandanna_blk","G_Bandanna_khk","G_Bandanna_oli","G_Bandanna_shades","G_Bandanna_sport","G_Bandanna_tan"];
_headgearlist = ["H_ShemagOpen_tan","H_Shemag_olive","H_ShemagOpen_khk","H_RacingHelmet_1_black_F","H_RacingHelmet_1_red_F","H_RacingHelmet_1_white_F","H_RacingHelmet_1_blue_F","H_RacingHelmet_1_yellow_F","H_RacingHelmet_1_green_F","H_RacingHelmet_1_F","H_RacingHelmet_2_F","H_RacingHelmet_3_F","H_RacingHelmet_4_F"];
_headgear = format["Headgear_%1",headgear player]; 
if(goggles _unit in _goggleslist) then {_goggles = goggles _unit};

_primary = weaponsItems _unit select 0;
_secondary = weaponsItems _unit select 1;

_secondaryWeapon = _secondary select 1;
_secondarySupp = _secondary select 1;
_secondaryAttach = _secondary select 2;
_secondaryOptic = _secondary select 3;
_secondaryAmmo = _secondary select 4 select 0;
_secondaryAmmoCount = _secondary select 4 select 1;

_primaryWeapon = _primary select 0;
_primarySupp = _primary select 1;
_primaryAttach = _primary select 2;
_primaryOptic = _primary select 3;
_primaryAmmo = _primary select 4 select 0;
_primaryAmmoCount = _primary select 4 select 1;

_items = [_primaryAttach, _primarySupp, _primaryOptic, _secondaryAttach, _secondarySupp, _secondaryOptic, _goggles];


_holder = "groundweaponholder" createVehicle getPos cursorTarget;
_headgear createVehicle getpos _holder;

_holder addWeaponCargo [_primaryWeapon,1];
_holder addWeaponCargo [_secondaryWeapon,1];

_holder addMagazineAmmoCargo [_secondaryAmmo,1,_secondaryAmmoCount];
_holder addMagazineAmmoCargo [_primaryAmmo,1,_primaryAmmoCount];

{
_holder additemcargo _x;
} forEach _items;

if(headgear _unit in _headgearlist) then {removeHeadgear _unit};
if(goggles _unit in _goggleslist) then {removeGoggles _unit};

_unit removeWeapon _primaryWeapon;
_unit removeWeapon _secondaryWeapon;