/*
	File: fn_policeKits.sqf
	Author: Aaron (OzzyGaming.com)
	email: aaron@ozzygaming.com
	
	Description:
	Predefined Police Loadouts.
*/
private["_unit","_kitID","_price","_data","_kitName"];
_unit = player;
_kitID = [_this,0,0,[0]] call BIS_fnc_param;
_price = 0;
if(_kitID == 0) exitWith {}; //Not valid
if(isNull _unit) exitWith {}; //Not valid
if(isNil "_unit") exitwith {}; //Not Valid
if(!(_unit isKindOf "Man")) exitWith {}; //Not a unit
if(!isPlayer _unit) exitWith {}; //Not a human
if(!((side _unit) in [west])) exitWith {}; //Not a cop
if(isNull _unit) exitWith {}; //Not valid

[] call life_fnc_stripdownPlayer;


_uniform = [_itemArray,0,"",[""]] call BIS_fnc_param;
_vest = [_itemArray,1,"",[""]] call BIS_fnc_param;
_backpack = [_itemArray,2,"",[""]] call BIS_fnc_param;
_goggles = [_itemArray,3,"",[""]] call BIS_fnc_param;
_headgear = [_itemArray,4,"",[""]] call BIS_fnc_param;
_items = [_itemArray,5,[],[[]]] call BIS_fnc_param;
_prim = [_itemArray,6,"",[""]] call BIS_fnc_param;
_seco = [_itemArray,7,"",[""]] call BIS_fnc_param;
_uItems = [_itemArray,8,[],[[]]] call BIS_fnc_param;
_uMags = [_itemArray,9,[],[[]]] call BIS_fnc_param;
_bItems = [_itemArray,10,[],[[]]] call BIS_fnc_param;
_bMags = [_itemArray,11,[],[[]]] call BIS_fnc_param;
_vItems = [_itemArray,12,[],[[]]] call BIS_fnc_param;
_vMags = [_itemArray,13,[],[[]]] call BIS_fnc_param;
_pItems = [_itemArray,14,[],[[]]] call BIS_fnc_param;
_hItems = [_itemArray,15,[],[[]]] call BIS_fnc_param;
_yItems = [_itemArray,16,[],[[]]] call BIS_fnc_param;

_data = [
	["Cadet",500],
	["Basic Patrol",750],
	["Special Patrol",900],
	["Pilot",1200],
	["Co-Pilot",1150],
	["Divers",300]
] select (_kitID - 1);

if(count _data == 0) exitWith {}; //Invalid Data
_kitName = _data select 0;
_price = _data select 1;

if(life_ogBank415 < _price && life_ogCash415 < _price) exitWith {hint format["You require $%1 for this kit",[_price] call life_fnc_numberText]};

if(life_ogCash415 < _price) then {
	life_ogBank415 = life_ogBank415 - _price;
	hint format["You have purchased the %1 with your Debit Card for $%2",_kitName,_price call life_fnc_numberText];
} else {
	life_ogCash415 = life_ogCash415 - _price;
	hint format["You have purchased the %1 with cash for $%2",_kitName,_price call life_fnc_numberText];
};


switch (_kitID) do
{
	case 1: // Cadet
	{	
		life_gear = [
			"U_Rangemaster","V_Rangemaster_belt","","","H_Cap_police",
			[
				"ItemMap","ItemRadio","ItemCompass"
			],
			"","hgun_P07_snds_F",
			[],[],[],[],[],
			[
				"16Rnd_9x21_Mag","16Rnd_9x21_Mag","16Rnd_9x21_Mag","16Rnd_9x21_Mag"
			],
			["","","",""],["","","",""],
			[
				"life_inv_coffee","life_inv_coffee","life_inv_coffee","life_inv_coffee",
				"life_inv_donuts","life_inv_donuts","life_inv_donuts","life_inv_donuts",
				"life_inv_spikeStrip"
			]
		];
		
		[] spawn life_fnc_loadgear;
		
		/*
		player addUniform "U_Rangemaster";
		player addHeadgear "H_Cap_police";
		player addVest "V_Rangemaster_belt";
		player addWeapon "hgun_P07_snds_F";
		player addMagazines ["16Rnd_9x21_Mag", 4];
		player linkItem "ItemMap";
		player linkItem "ItemRadio";
		player linkItem "ItemCompass";
		[true,"coffee",5 - (missionNameSpace getVariable "life_inv_coffee")] spawn life_fnc_handleInv;
		[true,"donuts",5 - (missionNameSpace getVariable "life_inv_donuts")] spawn life_fnc_handleInv;
		[true,"redgull",2 - (missionNameSpace getVariable "life_inv_redgull")] spawn life_fnc_handleInv;
		*/
	};
	case 2: // General Patrol
	{
		life_gear = [
			"U_Rangemaster","V_Rangemaster_belt","","","H_Cap_police",
			[
				"ItemMap","ItemRadio","ItemCompass"
			],
			"","hgun_P07_snds_F",
			["hgun_P07_F"],[],[],[],[],
			[
				"30Rnd_9x21_Mag","30Rnd_9x21_Mag","30Rnd_9x21_Mag","30Rnd_9x21_Mag"
			],
			["","","",""],["","","",""],
			[
				"life_inv_coffee","life_inv_coffee","life_inv_coffee","life_inv_coffee",
				"life_inv_donuts","life_inv_donuts","life_inv_donuts","life_inv_donuts",
				"life_inv_spikeStrip",
				"redgull","redgull"
			]
		];
		
		[] spawn life_fnc_loadgear;
		/* 
		player addUniform "U_Rangemaster";
		player addHeadgear "H_Cap_police";
		player addVest "V_Rangemaster_belt";
		player addWeapon "hgun_P07_snds_F";
		player addItemToVest "hgun_P07_F";
		player addMagazines ["30Rnd_9x21_Mag", 4];
		player linkItem "ItemMap";
		player linkItem "ItemRadio";
		player linkItem "ItemCompass";
		[true,"coffee",5 - (missionNameSpace getVariable "life_inv_coffee")] spawn life_fnc_handleInv;
		[true,"donuts",5 - (missionNameSpace getVariable "life_inv_donuts")] spawn life_fnc_handleInv;
		[true,"spikeStrip",2 - (missionNameSpace getVariable "life_inv_spikeStrip")] spawn life_fnc_handleInv;
		[true,"redgull",2 - (missionNameSpace getVariable "life_inv_redgull")] spawn life_fnc_handleInv; */
	};
	case 3: // Special Patrol
	{
		life_gear = [
			"U_Rangemaster","V_TacVest_blk_POLICE","","","H_Cap_police",
			[
				"ItemMap","ItemRadio","ItemCompass"
			],
			"","hgun_P07_snds_F",
			["hgun_P07_F","NVGoggles"],[],[],[],[],
			[
				"30Rnd_9x21_Mag","30Rnd_9x21_Mag","30Rnd_9x21_Mag","30Rnd_9x21_Mag"
			],
			["","","",""],["","","",""],
			[
				"life_inv_coffee","life_inv_coffee","life_inv_coffee","life_inv_coffee",
				"life_inv_donuts","life_inv_donuts","life_inv_donuts","life_inv_donuts",
				"life_inv_spikeStrip",
				"redgull","redgull"
			]
		];
		
		[] spawn life_fnc_loadgear;
		/* 
		player addUniform "U_Rangemaster";
		player addHeadgear "H_Cap_police";
		player addVest "V_TacVest_blk_POLICE";
		player addItemToVest "NVGoggles";
		player addWeapon "hgun_P07_snds_F";
		player addItemToVest "hgun_P07_F";
		player addMagazines ["30Rnd_9x21_Mag", 4];
		player linkItem "ItemMap";
		player linkItem "ItemRadio";
		player linkItem "ItemCompass";
		[true,"coffee",5 - (missionNameSpace getVariable "life_inv_coffee")] spawn life_fnc_handleInv;
		[true,"donuts",5 - (missionNameSpace getVariable "life_inv_donuts")] spawn life_fnc_handleInv;
		[true,"spikeStrip",2 - (missionNameSpace getVariable "life_inv_spikeStrip")] spawn life_fnc_handleInv;
		[true,"redgull",2 - (missionNameSpace getVariable "life_inv_redgull")] spawn life_fnc_handleInv; */
	};
	case 4: // Pilot
	{
		player addUniform "U_B_HeliPilotCoveralls";
		player addHeadgear "H_PilotHelmetHeli_B";
		player addVest "V_PlateCarrier1_blk";
		player addItemToVest "hgun_P07_F";
		player addItemToVest "nvgoggles";
		player addMagazines ["30Rnd_9x21_Mag", 2];
		player addBackpack "B_Parachute";
		player linkItem "ItemMap";
		player linkItem "ItemRadio";
		player linkItem "ItemCompass";
		[true,"coffee",5 - (missionNameSpace getVariable "life_inv_coffee")] spawn life_fnc_handleInv;
		[true,"donuts",5 - (missionNameSpace getVariable "life_inv_donuts")] spawn life_fnc_handleInv;
		[true,"redgull",2 - (missionNameSpace getVariable "life_inv_redgull")] spawn life_fnc_handleInv;
	};
	case 5: // Co-Pilot
	{
		player addUniform "U_B_HeliPilotCoveralls";
		player addHeadgear "H_CrewHelmetHeli_B";
		player addVest "V_PlateCarrier1_blk";
		player addItemToVest "nvgoggles";
		player addItemToVest "hgun_P07_F";
		player addMagazines ["30Rnd_9x21_Mag", 2];
		player addBackpack "B_Parachute";
		player linkItem "ItemMap";
		player linkItem "ItemRadio";
		player linkItem "ItemCompass";
		[true,"coffee",5 - (missionNameSpace getVariable "life_inv_coffee")] spawn life_fnc_handleInv;
		[true,"donuts",5 - (missionNameSpace getVariable "life_inv_donuts")] spawn life_fnc_handleInv;
		[true,"redgull",2 - (missionNameSpace getVariable "life_inv_redgull")] spawn life_fnc_handleInv;
	};
	case 6: // Divers
	{
		player addUniform "U_B_Wetsuit";
		player addGoggles "G_Diving";
		player addVest "V_RebreatherB";
		player addItemToVest "nvgoggles";
		player linkItem "ItemMap";
		player linkItem "ItemRadio";
		player linkItem "ItemCompass";
		[true,"coffee",5 - (missionNameSpace getVariable "life_inv_coffee")] spawn life_fnc_handleInv;
		[true,"donuts",5 - (missionNameSpace getVariable "life_inv_donuts")] spawn life_fnc_handleInv;
		[true,"redgull",2 - (missionNameSpace getVariable "life_inv_redgull")] spawn life_fnc_handleInv;
	};
};

sleep 0.3;
[] spawn life_fnc_copUniform;