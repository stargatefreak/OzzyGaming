#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for Cop clothing store.
*/

// prices need fixing

private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Altis Police Department Shop"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		_ret = [
            ["U_Rangemaster","Cop Uniform",25]
        ];
		
        if(__GETC__(life_ozCoplvl) > 0) then //Whitelisted
        {
            _ret pushBack ["U_B_Wetsuit","Wetsuit",100];
        };
		if(__GETC__(life_ozCoplvl) > 3) then
        {
            _ret pushBack ["U_B_HeliPilotCoveralls","Blue Uniform",100];
        };
		if(__GETC__(life_ozCoplvl) > 4) then
        {
            _ret pushBack ["U_B_CombatUniform_mcam_worn","SWAT Uniform",100];
        };
        if(__GETC__(life_ozCoplvl) > 6) then
        {
            _ret pushBack ["U_C_Hunterbody_grn","The Hunters Look",100];
            _ret pushBack ["U_C_Poloshirt_blue","Poloshirt Blue",100];
            _ret pushBack ["U_C_Poloshirt_burgundy","Poloshirt Burgundy",100];
            _ret pushBack ["U_C_Poloshirt_redwhite","Poloshirt Red/White",100];
            _ret pushBack ["U_C_Poloshirt_salmon","Poloshirt Salmon",100];
            _ret pushBack ["U_C_Poloshirt_stripped","Poloshirt Stripped",100];
            _ret pushBack ["U_C_Poloshirt_tricolour","Poloshirt Tricolor",100];
            _ret pushBack ["U_C_Poor_2","Rag Tagged Clothes",100];
            _ret pushBack ["U_C_WorkerCoveralls","Mechanic Coveralls",100];
            _ret pushBack ["U_I_G_resistanceLeader_F","Combat Fatigues (Stavrou)",100];
            _ret pushBack ["U_IG_Guerilla2_3","The Outback Rangler",100];
            _ret pushBack ["U_IG_Guerilla3_1","Brown Jacket & Pants",100];
            _ret pushBack ["U_IG_leader","Guerilla Leader",100];
            _ret pushBack ["U_I_CombatUniform","Combat Fatigues",2500];
            _ret pushBack ["U_B_CombatUniform_wdl_vest","Recon Fatigues",2500];
        };
	};
	
	//Hats
	case 1:
	{
		_ret = [
			["H_Cap_police",nil,100]
		];
		if(__GETC__(life_ozCoplvl) > 0) then //Whitelisted
        {
            _ret pushBack ["H_HelmetB_plain_blk",nil,100]; 
        };
        if(__GETC__(life_ozCoplvl) > 3) then
        {
            _ret pushBack ["H_HelmetB_light_black",nil,100];
        };
        if(__GETC__(life_ozCoplvl) > 6) then
        {
            _ret pushBack ["H_Hat_tan",nil,100];
			_ret pushBack ["H_Beret_blk_POLICE",nil,100];
            _ret pushBack ["H_Watchcap_blk",nil,1500];
            _ret pushBack ["H_Booniehat_dirty",nil,1500];
            _ret pushBack ["H_Booniehat_dgtl",nil,1500];
        };
	};
	
	//Glasses
	case 2:
	{
		_ret = 
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Aviator",nil,75],
			["G_Squares",nil,10],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55]
		];

		if(__GETC__(life_ozCoplvl) > 0) then //Whitelisted
        {
            _ret pushBack ["G_Diving",nil,250];
        };
	};
	
	//Vest
	case 3:
	{
		_ret =
        [
            ["V_Rangemaster_belt",nil,800],
            ["V_HarnessO_brn",nil,1500]
        ];

		if(__GETC__(life_ozCoplvl) > 0) then //Whitelisted
        {
            _ret pushBack ["V_TacVest_blk_POLICE",nil,2500];
            _ret pushBack ["V_RebreatherB",nil,2500];
        };
        if(__GETC__(life_ozCoplvl) > 6) then {
            _ret pushBack ["V_PlateCarrierIA2_dgtl", nil,4000];
            _ret pushBack ["V_PlateCarrier2_rgr" ,nil,4000];
        };
    };
	
	//Backpacks
	case 4:
	{
		_ret =
		[
			["B_Bergen_blk",nil,2500],
			["B_Parachute",nil,10000]
		];
	};
};

_ret;