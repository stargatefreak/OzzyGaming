#include <macro.h>
/*
	File: fn_revived.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	THANK YOU JESUS I WAS SAVED!
*/
private["_medic","_dir"];
_medic = [_this,0,"Unknown Medic",[""]] call BIS_fnc_param;
_oldGear = [life_corpse] call life_fnc_fetchDeadGear;
[_oldGear] spawn life_fnc_loadDeadGear;
life_corpse setVariable["realname",nil,true]; //Should correct the double name sinking into the ground.
[[life_corpse],"life_fnc_corpse",nil,FALSE] spawn life_fnc_MP;
_dir = getDir life_corpse;
hint format[localize "STR_Medic_RevivePay",_medic,[(call life_revive_fee)] call life_fnc_numberText];

closeDialog 0;
life_deathCamera cameraEffect ["TERMINATE","BACK"];
camDestroy life_deathCamera;

//Take fee for services.
if(life_ogBank415 > (call life_revive_fee)) then {
	life_ogBank415 = life_ogBank415 - (call life_revive_fee);
} else {
	life_ogBank415 = 0;
};

//Retexturing of units clothing, vanilla files only retexture the EMS unit.
switch(playerSide) do {
	case independent: {
		if(uniform player == "U_I_CombatUniform") then {
			// Technician/Recruit
			if (__GETC__(life_ozMediclvl) <= 1) then {
				player setObjectTextureGlobal [0, "textures\medic\med_uniform_tech.paa"];
			};
			// Paramedic
			if (__GETC__(life_ozMediclvl) == 2) then {
				player setObjectTextureGlobal [0, "textures\medic\med_uniform.paa"];
			};
			// Intensive Care Paramedic
			if (__GETC__(life_ozMediclvl) >= 3) then {
				player setObjectTextureGlobal [0, "textures\medic\med_uniform_icp.paa"];
			};
		};

		if((backpack player) == "B_AssaultPack_khk") then {
			(unitbackpack player) setObjectTextureGlobal[0,"textures\medic\med_backpack.paa"];
		};
	};
};

//Bring me back to life.
player setDir _dir;
player setPosASL (visiblePositionASL life_corpse);
life_corpse setVariable["Revive",nil,TRUE];
life_corpse setVariable["name",nil,TRUE];
[[life_corpse],"life_fnc_corpse",true,false] spawn life_fnc_MP;
hideBody life_corpse;

player setVariable["Revive",nil,TRUE];
player setVariable["name",nil,TRUE];
player setVariable["Reviving",nil,TRUE];
[] call life_fnc_hudUpdate; //Request update of hud.
life_nlrtimer_stop = true;
