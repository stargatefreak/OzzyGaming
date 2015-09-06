#include <macro.h>
/*
	File: fn_clothing_reb.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Reb shop.
*/
private["_filter","_ret"];
_filter = [_this,00,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"PMC Quartermaster"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		_ret = [
			["U_B_CombatUniform_mcam_tshir",nil,10000],
			["U_I_CombatUniform",nil,10000],
			["U_IG_Guerilla2_1",nil,15000],
			["U_IG_Guerilla2_3",nil,15000],
			["U_C_Journalist",nil,10000]
		];
		
		if (__GETC__(life_ozPmclvl) >= 2) then {
			_ret pushBack ["U_B_CombatUniform_mcam_ves",nil,20000];		
			_ret pushBack ["U_I_G_resistanceLeader_F",nil,15000];		
		};
		if (__GETC__(life_ozPmclvl) >= 3) then {
			_ret pushBack ["U_B_GhillieSuit",nil,50000];
			_ret pushBack ["U_B_Wetsuit",nil,15000];
			_ret pushBack ["U_O_GhillieSuit",nil,50000];
			_ret pushBack ["U_I_GhillieSuit",nil,50000];
			_ret pushBack ["U_IG_leader",nil,50000];
		};
		if (__GETC__(life_ozPmclvl) >= 4) then {
			_ret pushBack ["U_B_HeliPilotCoveralls",nil,30000];
			_ret pushBack ["U_I_HeliPilotCoveralls",nil,15000];
			_ret pushBack ["U_B_CTRG_1",nil,50000];
			_ret pushBack ["U_B_CTRG_2",nil,50000];
		};
		if (__GETC__(life_ozPmclvl) >= 5) then {
			_ret pushBack ["U_BG_Guerrilla_6_1",nil,50000];
			_ret pushBack ["U_O_OfficerUniform_ocamo",nil,75000];
			_ret pushBack ["U_I_OfficerUniform",nil,75000];
		};
	};
	
	//Hats
	case 1:
	{
		_ret = [
			["H_Booniehat_mcamo",nil,5000],
			["H_HelmetB",nil,7500],
			["H_Cap_headphones",nil,2500],
			["H_Cap_blk_CMMG",nil,2500],
			["H_Cap_blk_ION",nil,2500],
			["H_Cap_press",nil,2500],
			["H_MilCap_gry",nil,2500]
		];

		if (__GETC__(life_ozPmclvl) >= 2) then {
			_ret pushBack ["H_Booniehat_khk_hs",nil,5000];
			_ret pushBack ["H_Watchcap_blk",nil,2000];
		};
		if (__GETC__(life_ozPmclvl) >= 3) then {
			_ret pushBack ["H_Beret_blk",nil,2500];
		};
		if (__GETC__(life_ozPmclvl) >= 4) then {
			_ret pushBack ["H_Booniehat_indp",nil,5000];
			_ret pushBack ["H_PilotHelmetHeli_B",nil,5000];
			_ret pushBack ["H_CrewHelmetHeli_B",nil,5000];
		};
		if (__GETC__(life_ozPmclvl) >= 5) then {
			_ret pushBack ["H_Beret_02",nil,2500];
		};
		if (__GETC__(life_ozPmclvl) >= 7) then {
			_ret pushBack ["H_HelmetB_camo",nil,30000];
			_ret pushBack ["H_Beret_Colonel",nil,2500];
		};
	};
	
	//Glasses
	case 2:
	{
		_ret = [
			["G_Shades_Black",nil,500],
			["G_Shades_Blue",nil,500],
			["G_Tactical_Clear",nil,1000],
			["G_Sport_BlackWhite",nil,500],
			["G_Sport_Red",nil,500]
		];
	};
	
	//Vest
	case 3:
	{
		_ret = [
			["V_Rangemaster_belt",nil,5000],
			["V_BandollierB_blk",nil,5000],
			["V_HarnessOSpec_gry",nil,20000],
			["V_Press_F",nil,20000]
		];

		if (__GETC__(life_ozPmclvl) >= 2) then {
			_ret pushBack ["V_Chestrig_blk",nil,40000];
			_ret pushBack ["V_TacVestIR_blk",nil,40000];
		};
		if (__GETC__(life_ozPmclvl) >= 3) then {
			_ret pushBack ["V_TacVest_blk",nil,60000];
			_ret pushBack ["V_RebreatherB",nil,15000];
		};
		if (__GETC__(life_ozPmclvl) >= 4) then {
			_ret pushBack ["V_PlateCarrier1_blk",nil,80000];
		};
		if (__GETC__(life_ozPmclvl) >= 6) then {
			_ret pushBack ["V_PlateCarrierIA2_dgtl",nil,120000];
			_ret pushBack ["V_PlateCarrierH_CTRG",nil,120000];
		};
	};
	
	//Backpacks
	case 4:
	{
		_ret = [
			["B_Parachute",nil,2500],
			["G_Bergen",nil,5000],
			["B_FieldPack_blk",nil,3500],
			["B_TacticalPack_blk",nil,4000],
			["B_TacticalPack_oli",nil,4000],
			["B_Kitbag_cbr",nil,5000],
			["B_AssaultPack_blk",nil,3000],
			["B_AssaultPack_dgtl",nil,3000],
			["B_AssaultPack_rgr",nil,3000]
		];
		if (__GETC__(life_ozPmclvl) >= 2) then {
			_ret pushBack ["B_Carryall_oli",nil,6000];
			_ret pushBack ["B_Carryall_khk",nil,6000];
			_ret pushBack ["B_Carryall_cbr",nil,6000];
		};
		if (__GETC__(life_ozPmclvl) >= 3) then {
			_ret pushBack ["B_HuntingBackpack",nil,10000];
		};
	};
};

_ret;