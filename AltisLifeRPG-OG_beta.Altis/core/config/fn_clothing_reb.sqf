/*
	File: fn_clothing_reb.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Reb shop.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Mohammed's Jihadi Shop"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["U_IG_Guerilla1_1",nil,5000],
            ["U_IG_Guerilla2_2",nil,5000],
            ["U_IG_Guerilla2_3",nil,5000],
            ["U_IG_Guerilla3_1",nil,5000],
			["U_I_G_Story_Protagonist_F",nil,7500],
			["U_I_G_resistanceLeader_F",nil,11500],
			["U_O_SpecopsUniform_ocamo",nil,17500],
			["U_B_SpecopsUniform_sgg",nil,50000],
	/*		["U_O_SpecopsUniform_blk",nil,50000],
			["U_O_OfficerUniform_ocamo",nil,50000], */
			["U_O_CombatUniform_oucamo",nil,50000],
			["U_O_PilotCoveralls",nil,15610],
			["U_B_PilotCoveralls",nil,15610],
			["U_IG_leader","Guerilla Leader",15340],
			["U_O_GhillieSuit",nil,50000],
			["U_I_GhillieSuit",nil,50000],
			["U_B_FullGhillie_lsh",nil,65000],
			["U_I_FullGhillie_sard",nil,65000]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_Beret_red",nil,1000],
			["H_ShemagOpen_tan",nil,850],
			["H_Shemag_olive",nil,850],
			["H_ShemagOpen_khk",nil,800],
			["H_HelmetO_ocamo",nil,2500],
			["H_MilCap_oucamo",nil,1200],
			["H_Bandanna_camo",nil,650],
            ["H_Bandanna_cbr",nil,650],
            ["H_Bandanna_gry",nil,650],
            ["H_Bandanna_khk",nil,650],
            ["H_Bandanna_sgg",nil,650],
            ["H_Bandanna_surfer",nil,650],
	/*		["H_PilotHelmetHeli_I",nil,1000],
			["H_MilCap_rucamo",nil,1000],
			["H_CrewHelmetHeli_I",nil,1000], */
			["H_PilotHelmetFighter_B",nil,2500]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Squares",nil,10],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55],
			["G_Balaclava_blk",nil,650],
			["G_Balaclava_combat",nil,650],
			["G_Balaclava_lowprofile",nil,650],
			["G_Balaclava_oli",nil,650],
			["G_Bandanna_aviator",nil,650],
			["G_Bandanna_beast",nil,650],
			["G_Bandanna_blk",nil,650],
			["G_Bandanna_khk",nil,650],
			["G_Bandanna_oli",nil,650],
			["G_Bandanna_shades",nil,650],
			["G_Bandanna_sport",nil,650],
			["G_Bandanna_tan",nil,650]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["V_TacVest_khk",nil,12500],
		/*	["V_PlateCarrierIA1_dgtl",nil,10500],
			["V_PlateCarrierIA2_dgtl",nil,10500], */
			["V_BandollierB_cbr",nil,4500],
			["V_HarnessO_brn",nil,7500],
            ["V_Rangemaster_belt",nil,850]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_cbr",nil,2500],
			["B_Kitbag_mcamo",nil,4500],
			["B_TacticalPack_oli",nil,3500],
			["B_FieldPack_ocamo",nil,3000],
			["B_Bergen_sgg",nil,4500],
			["B_Kitbag_cbr",nil,4500],
			["B_Carryall_oli",nil,5000],
			["B_Carryall_khk",nil,5000]
		];
	};
};