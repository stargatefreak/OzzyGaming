/*
	File: fn_setupActions.sqf
	
	Description:
	Master addAction file handler for all client-based actions.
*/
switch (playerSide) do
{
	case civilian:
	{
		//Drop fishing net
		life_actions = [player addAction[localize "STR_pAct_DropFishingNet",life_fnc_dropFishingNet,"",0,false,false,"",'
		(surfaceisWater (getPos vehicle player)) && (vehicle player isKindOf "Ship") && life_carryWeight < life_maxWeight && speed (vehicle player) < 2 && speed (vehicle player) > -1 && !life_net_dropped ']];
		//Rob person
		life_actions = life_actions + [player addAction[localize "STR_pAct_RobPerson",life_fnc_robAction,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 3.5 && isPlayer cursorTarget && animationState cursorTarget == "Incapacitated" && !(cursorTarget getVariable["robbed",FALSE]) ']];
	
		//Salvage Gold from random spawn wreak
		life_actions = life_actions + [player addAction["Gather Treasure",life_fnc_gatherGoldbar,"",0,false,false,"",'
		!life_action_inUse && ((goldZones select 0) distance (getPos player)) < 30']];
		life_actions = life_actions + [player addAction["Gather Treasure",life_fnc_gatherGoldbar,"",0,false,false,"",'
		!life_action_inUse && ((goldZones select 1) distance (getPos player)) < 30']];
		life_actions = life_actions + [player addAction["Gather Treasure",life_fnc_gatherGoldbar,"",0,false,false,"",'
		!life_action_inUse && ((goldZones select 2) distance (getPos player)) < 30']];
		life_actions = life_actions + [player addAction["Gather Treasure",life_fnc_gatherGoldbar,"",0,false,false,"",'
		!life_action_inUse && ((goldZones select 3) distance (getPos player)) < 30']];
		life_actions = life_actions + [player addAction["Gather Treasure",life_fnc_gatherGoldbar,"",0,false,false,"",'
		!life_action_inUse && ((goldZones select 4) distance (getPos player)) < 30']];
		life_actions = life_actions + [player addAction["Gather Treasure",life_fnc_gatherGoldbar,"",0,false,false,"",'
		!life_action_inUse && ((goldZones select 5) distance (getPos player)) < 30']];
		life_actions = life_actions + [player addAction["Gather Treasure",life_fnc_gatherGoldbar,"",0,false,false,"",'
		!life_action_inUse && ((goldZones select 6) distance (getPos player)) < 30']];
		life_actions = life_actions + [player addAction["Gather Treasure",life_fnc_gatherGoldbar,"",0,false,false,"",'
		!life_action_inUse && ((goldZones select 7) distance (getPos player)) < 30']];
		life_actions = life_actions + [player addAction["Gather Treasure",life_fnc_gatherGoldbar,"",0,false,false,"",'
		!life_action_inUse && ((goldZones select 8) distance (getPos player)) < 30']];
		life_actions = life_actions + [player addAction["Gather Treasure",life_fnc_gatherGoldbar,"",0,false,false,"",'
		!life_action_inUse && ((goldZones select 9) distance (getPos player)) < 30']];
		life_actions = life_actions + [player addAction["Gather Treasure",life_fnc_gatherGoldbar,"",0,false,false,"",'
		!life_action_inUse && ((goldZones select 10) distance (getPos player)) < 30']];
		life_actions = life_actions + [player addAction["Gather Treasure",life_fnc_gatherGoldbar,"",0,false,false,"",'
		!life_action_inUse && ((goldZones select 11) distance (getPos player)) < 30']];
		life_actions = life_actions + [player addAction["Gather Treasure",life_fnc_gatherGoldbar,"",0,false,false,"",'
		!life_action_inUse && ((goldZones select 12) distance (getPos player)) < 30']];
	};
	
	case independent:
	{
		life_actions = life_actions + [player addAction["<t color='#00FF00'>Kidney Operation</t>",life_fnc_kidneyOperation,"",1,false,true,"",' playerSide == independent && !isNull cursorTarget && cursorTarget isKindOf "Man" && (player distance CursorTarget) <= 2']];
	};
};