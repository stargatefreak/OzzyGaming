#include <macro.h>
/*
	COP UNIFORM SCRIPT
	Author: coldgas
	Quick Edit: Me
	Created for www.altisliferpg.com
*/
if (playerSide == west) then 
{
	if ((__GETC__(life_ozCoplvl) < 2) && ((uniform player) == "U_Rangemaster")) then {
		player setObjectTextureGlobal [0, "textures\cop\cadet_shirt.jpg"];
	};	
	
	if ((__GETC__(life_ozCoplvl) > 1) && ((uniform player) == "U_Rangemaster")) then {
		player setObjectTextureGlobal [0, "textures\cop\police_shirt.jpg"];
	};	
	
	if ((__GETC__(life_ozCoplvl) > 1) && ((uniform player) == "U_B_CombatUniform_mcam_worn")) then {
		player setObjectTextureGlobal [0, "textures\cop\police_uniform.jpg"];
	};
	
	if (((uniform player) == "U_B_HeliPilotCoveralls")) then {
		player setObjectTextureGlobal [0, "textures\cop\cop_heli_uniform.jpg"];
	};
	
	if ((backpack player) == "B_Bergen_blk") then {
		(unitbackpack player) setObjectTextureGlobal[0,"textures\cop\cop_bergen.jpg"];
	};
};

if (playerSide == independent) then 
{
	if(uniform player == "U_Rangemaster") then {
		player setObjectTextureGlobal [0, "textures\medic_uniform.jpg"];
	};
};