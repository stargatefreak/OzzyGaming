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
ctrlSetText[3103,"Altis Police Clothing Shop"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
        // Rank 0 - Public
		_ret = [
            ["U_Rangemaster","Cop Uniform", 100]
        ];
		
        // WHITELISTED
        // Rank 1 - Cadet

        // DUTY OFFICERS
        // Rank 2 - Probationary Constable
        if(__GETC__(life_ozCoplvl) >= 2) then {
            _ret pushBack ["U_B_Wetsuit","Wetsuit",500];
        };
        // Rank 3 - Constable
        // Rank 4 - Senior Constable
        if(__GETC__(life_ozCoplvl) >= 4) then {
            _ret pushBack ["U_B_HeliPilotCoveralls","Blue Uniform",100];
        };

        // JUNIOR NCO
        // Rank 5 - 

        // NCOs
        // Rank 6 - Sergeant
        if(__GETC__(life_ozCoplvl) >= 6) then {
            _ret pushBack ["U_B_CombatUniform_mcam_worn","SWAT Uniform",100];
        };
        // Rank 7 - Senior Sergeant
        // Rank 8 - 

        // JUNIOR OFFICER
        // Rank 9 - 2nd Lieutenant

        // OFFICERS
        // Rank 10 - 1st Lieutenant
        // Rank 11 - Captain
        // Rank 12 - Inspector
		if(__GETC__(life_ozCoplvl) >= 12) then {
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

        // SENIOR OFFICERS
        // Rank 20 - Lead Inspector, Deputy Chief, Chief, Deputy Commissioner, Comissioner
	};
	
	//Hats
	case 1:
	{
		// Rank 0 - Public
        _ret = [
            ["H_Cap_police",nil,100]
        ];
        
        // WHITELISTED
        // Rank 1 - Cadet

        // DUTY OFFICERS
        // Rank 2 - Probationary Constable
        if(__GETC__(life_ozCoplvl) >= 2) then {
            _ret pushBack ["H_HelmetB_plain_blk",nil,100];
        };
        // Rank 3 - Constable
        // Rank 4 - Senior Constable

        // JUNIOR NCO
        // Rank 5 - 
        if(__GETC__(life_ozCoplvl) >= 5) then {
            _ret pushBack ["H_HelmetB_light_black",nil,100];
        };

        // NCOs
        // Rank 6 - Sergeant
        // Rank 7 - Senior Sergeant
        // Rank 8 - 

        // JUNIOR OFFICER
        // Rank 9 - 2nd Lieutenant

        // OFFICERS
        // Rank 10 - 1st Lieutenant
        if(__GETC__(life_ozCoplvl) >= 10) then {
            _ret pushBack ["H_Beret_blk_POLICE",nil,100];
        };
        // Rank 11 - Captain
        // Rank 12 - Inspector
        if(__GETC__(life_ozCoplvl) >= 12) then {
            _ret pushBack ["H_Watchcap_blk",nil,1500];
            _ret pushBack ["H_Booniehat_dirty",nil,1500];
            _ret pushBack ["H_Booniehat_dgtl",nil,1500];
            _ret pushBack ["H_Hat_tan",nil,100];
        };

        // SENIOR OFFICERS
        // Rank 20 - Lead Inspector, Deputy Chief, Chief, Deputy Commissioner, Comissioner

        // --- --- ---

        if (__GETC__(life_ozCopPilotLvl) >= 1) then {
            _ret pushBack ["H_CrewHelmetHeli_B","Crewman Helmet",1000];
        };
        if (__GETC__(life_ozCopPilotLvl) >= 2) then {
            _ret pushBack ["H_PilotHelmetHeli_B","Pilot Helmet",1000];
        };
	};
	
	//Glasses
	case 2:
	{
        // Rank 0 - Public
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

        // WHITELISTED
        // Rank 1 - Cadet

        // DUTY OFFICERS
        // Rank 2 - Probationary Constable
		if(__GETC__(life_ozCoplvl) >= 2) then
        {
            _ret pushBack ["G_Diving",nil,250];
        };
        // Rank 3 - Constable
        // Rank 4 - Senior Constable

        // JUNIOR NCO
        // Rank 5 - 

        // NCOs
        // Rank 6 - Sergeant
        // Rank 7 - Senior Sergeant
        // Rank 8 - 

        // JUNIOR OFFICER
        // Rank 9 - 2nd Lieutenant

        // OFFICERS
        // Rank 10 - 1st Lieutenant
        // Rank 11 - Captain
        // Rank 12 - Inspector

        // SENIOR OFFICERS
        // Rank 20 - Lead Inspector, Deputy Chief, Chief, Deputy Commissioner, Comissioner
	};
	
	//Vest
	case 3:
	{
        // Rank 0 - Public
        _ret = [
            ["V_Rangemaster_belt",nil,800],
        ];
        
        // WHITELISTED
        // Rank 1 - Cadet
        if(__GETC__(life_ozCoplvl) >= 1) then {
            _ret pushBack ["V_TacVest_blk_POLICE",nil,2500];
        };

        // DUTY OFFICERS
        // Rank 2 - Probationary Constable
        if(__GETC__(life_ozCoplvl) >= 2) then {
            _ret pushBack ["V_RebreatherB",nil,2500];
        };
        // Rank 3 - Constable
        // Rank 4 - Senior Constable

        // JUNIOR NCO
        // Rank 5 - 

        // NCOs
        // Rank 6 - Sergeant
        // Rank 7 - Senior Sergeant
        // Rank 8 - 

        // JUNIOR OFFICER
        // Rank 9 - 2nd Lieutenant
        if(__GETC__(life_ozCoplvl) >= 9) then {
            _ret pushBack ["V_PlateCarrier2_rgr" ,nil,4000];
        };

        // OFFICERS
        // Rank 10 - 1st Lieutenant
        // Rank 11 - Captain
        // Rank 12 - Inspector
        if(__GETC__(life_ozCoplvl) >= 12) then {
            _ret pushBack ["V_HarnessO_brn", nil,1500];
            _ret pushBack ["V_PlateCarrierIA2_dgtl", nil,4000];
        };

        // SENIOR OFFICERS
        // Rank 20 - Lead Inspector, Deputy Chief, Chief, Deputy Commissioner, Comissioner
    };
    
    //Backpacks
    case 4:
    {
        // Rank 0 - Public
        _ret =
        [
            ["B_Bergen_blk",nil,2500],
            ["B_Parachute",nil,10000]
        ];

        // WHITELISTED
        // Rank 1 - Cadet

        // DUTY OFFICERS
        // Rank 2 - Probationary Constable
        // Rank 3 - Constable
        // Rank 4 - Senior Constable

        // JUNIOR NCO
        // Rank 5 - 

        // NCOs
        // Rank 6 - Sergeant
        // Rank 7 - Senior Sergeant
        // Rank 8 - 

        // JUNIOR OFFICER
        // Rank 9 - 2nd Lieutenant

        // OFFICERS
        // Rank 10 - 1st Lieutenant
        // Rank 11 - Captain
        // Rank 12 - Inspector
        if(__GETC__(life_ozCoplvl) >= 12) then {
            _ret pushBack ["B_Bergen_sgg", nil,4000];
        };

        // SENIOR OFFICERS
        // Rank 20 - Lead Inspector, Deputy Chief, Chief, Deputy Commissioner, Comissioner
    };
};

_ret;