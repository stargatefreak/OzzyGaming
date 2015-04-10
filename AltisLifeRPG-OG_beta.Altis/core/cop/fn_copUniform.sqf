#include <macro.h>
/*
	COP UNIFORM SCRIPT
	Author: coldgas
	Quick Edit: Me
	Created for www.altisliferpg.com
*/
if (playerSide == west) then 
{
    // Cadet & Pubslot (0,1)
	if ((__GETC__(life_ozCoplvl) <= 1) && ((uniform player) == "U_Rangemaster")) then {
		player setObjectTextureGlobal [0, "textures\cop\uniforms\police_cadet.jpg"];
	};	
	
    // Duty/Patrol (2-5)
	if ((__GETC__(life_ozCoplvl) >= 2) && (__GETC__(life_ozCoplvl) <= 5) && ((uniform player) == "U_Rangemaster")) then {
		player setObjectTextureGlobal [0, "textures\cop\uniforms\police_patrol.jpg"];
	};	
    
    // NCO (6-8)
    if ((__GETC__(life_ozCoplvl) >= 6) && (__GETC__(life_ozCoplvl) <= 8) && ((uniform player) == "U_Rangemaster")) then {
		player setObjectTextureGlobal [0, "textures\cop\uniforms\police_nco.jpg"];
	};	
    
    // Officer
    if ((__GETC__(life_ozCoplvl) >= 9) && ((uniform player) == "U_Rangemaster")) then {
		player setObjectTextureGlobal [0, "textures\cop\uniforms\police_officer.jpg"];
	};	
	
    // SPG Black
	if ((__GETC__(life_ozCoplvl) > 1) && ((uniform player) == "U_B_CombatUniform_mcam_worn")) then {
		player setObjectTextureGlobal [0, "textures\cop\uniforms\police_spg_black.jpg"];
	};
    
    // SPG Multicam
    if ((__GETC__(life_ozCoplvl) > 1) && ((uniform player) == "U_B_CombatUniform_mcam")) then {
		player setObjectTextureGlobal [0, "textures\cop\uniforms\police_spg_multicam.jpg"];
	};
	
    // Pilot Uniform
	if (((uniform player) == "U_B_HeliPilotCoveralls")) then {
		player setObjectTextureGlobal [0, "textures\cop\uniforms\police_pilot.jpg"];
	};
	
	if ((backpack player) == "B_Bergen_blk") then {
		(unitbackpack player) setObjectTextureGlobal[0,"textures\cop\uniforms\cop_bergen.jpg"];
	};
};

if (playerSide == independent) then 
{
	if(uniform player == "U_I_CombatUniform") then {
		// Technician/Recruit
		if (__GETC__(life_ozMediclvl) <= 1) then {
			player setObjectTextureGlobal [0, "textures\medic\med_uniform_blank.jpg"];
		};
		// Paramedic
		if (__GETC__(life_ozMediclvl) == 2) then {
			player setObjectTextureGlobal [0, "textures\medic\med_uniform.jpg"];
		};
		// Intensive Care Paramedic
		if (__GETC__(life_ozMediclvl) >= 3) then {
			player setObjectTextureGlobal [0, "textures\medic\med_uniform_icp.jpg"];
		};
	};

	if((backpack player) == "B_AssaultPack_khk") then {
		(unitbackpack player) setObjectTextureGlobal[0,"textures\medic\med_backpack.jpg"];
	};
};