#include <macro.h>
/*
	File: fn_medicLoadout.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Loads the medic out with the default gear.
*/
[] call life_fnc_stripDownPlayer;

//player addUniform "U_Rangemaster";
player addUniform "U_I_CombatUniform";
player addHeadgear "H_Cap_blu";
player addBackpack "B_AssaultPack_khk";

player addItem "FirstAidKit";
player addItem "FirstAidKit";
player addItemToBackpack "Medikit";

player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "ItemRadio";
player assignItem "ItemRadio";
player addItem "ItemWatch";
player assignItem "ItemWatch";

if (__GETC__(life_ozMediclvl) <= 1) then {
        [[player,0,"textures\medic\med_uniform_tech.paa"],"life_fnc_setTexture",true,false] spawn life_fnc_MP;
};
// Paramedic
if (__GETC__(life_ozMediclvl) == 2) then {
        [[player,0,"textures\medic\med_uniform.paa"],"life_fnc_setTexture",true,false] spawn life_fnc_MP;
};
// Intensive Care Paramedic
if (__GETC__(life_ozMediclvl) >= 3) then {
        [[player,0,"textures\medic\med_uniform_icp.paa"],"life_fnc_setTexture",true,false] spawn life_fnc_MP;
};


[] call life_fnc_saveGear;
