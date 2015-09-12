/*
	file:			fn_insideBuilding								
	author:			Aaron (OzzyGaming.com)							
																	
	description:	Detects if player is inside a building.			
				Designed to detect players glitching through doors	
*/
_selBuilding = [];
_building = nearestObjects [player, ["Land_i_House_Big_02_V1_F"], 30] select 0;
if(!isNull _building) then {
	switch(typeOf _building) do {
		case "Land_i_House_Big_02_V1_F":{ 
			_selBuilding = [[4.5,4.6],-5,9];
		};
		default {_selBuilding = [[0,0],0,0]};
	};
	

	_ground = if((_building worldToModel (getpos player)) select 2 > (_selBuilding select 1)) then {true} else {false};
	_roof = if((_building worldToModel (getpos player)) select 2 < (_selBuilding select 2)) then {true} else {false};

	_FR = if(
			((_building worldToModel (getpos player)) select 0 > ((_selBuilding select 0 select 0) * -1)) &&
			((_building worldToModel (getpos player)) select 1 < (_selBuilding select 0 select 1))
		) then {true} else {false};

	_FL = if(
			((_building worldToModel (getpos player)) select 0 < (_selBuilding select 0 select 0)) &&
			((_building worldToModel (getpos player)) select 1 < (_selBuilding select 0 select 1))
		) then {true} else {false};

	_RL = if(
		(
			((_building worldToModel (getpos player)) select 0 > ((_selBuilding select 0 select 0) * -1)) &&
			((_building worldToModel (getpos player)) select 1 > ((_selBuilding select 0 select 1) * -1))
		)
	) then {true} else {false};

	_RR = if(
		(
			((_building worldToModel (getpos player)) select 0 < ((_selBuilding select 0 select 0))) &&
			((_building worldToModel (getpos player)) select 1 > ((_selBuilding select 0 select 1) * -1))
		)
	) then {true} else {false};

	if(_FL && _FR && _RL && _RR && _ground && _roof) then {OG_insideBuilding = true} else {OG_insideBuilding = false};
	hint str format["%1,%2,%3,%4,%5,%6",_FL,_FR,_RL,_RR,_ground,_roof];
} else {OG_insideBuilding = false};