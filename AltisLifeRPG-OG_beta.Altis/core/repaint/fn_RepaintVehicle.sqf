/*
File: fn_RepaintVehicle.sqf
Author: MooN-Gaming

Description: Does the active repaint man....read the title!
*/
private["_index","_veh","_color","_color_index"];
if(!isNull (findDisplay 2300)) then {
_veh = nearestObject [position player, "LandVehicle"];
_color = lbcursel 2303;
_color_index = lbValue[2303,_color];
closeDialog 0;

_baseprice = 10000;
_vehicleData = _veh getVariable["vehicle_info_owners",[]];
_vehOwner = (_vehicleData select 0) select 0;
if(life_ogCash415 < _basePrice) exitWith {hint "You do not have $10000 to pay the painter."};

if(isNil {_vehicleData}) exitWith {hint "There is no information about this vehicle, it is either rented or cheat."};
if ((getPlayerUID player) != _vehOwner) exitWith {hint "You are not the owner of the vehicle that is to be painted."};

		_displayName = getText(configFile >> "CfgVehicles" >> (typeOf _veh) >> "displayName");
		_upp = format["Painting %1",_displayName];
		
		//Setup our progress bar.
		disableSerialization;
		5 cutRsc ["life_progress","PLAIN"];
		_ui = uiNameSpace getVariable "life_progress";
		_progress = _ui displayCtrl 38201;
		_pgText = _ui displayCtrl 38202;
		_pgText ctrlSetText format["%2 (1%1)...","%",_upp];
		_progress progressSetPosition 0.01;
		_cP = 0.01;
		
		life_action_inUse = true;  //<---------MOVE THIS TO HERE
		player say3D "spraycan";
		
        animationInProgress = false;
        [] spawn OG_fnc_animPlayer;

		while{true} do
		{
            animationInProgress = true;
			sleep 0.29;
			_cP = _cP + 0.01;
			_progress progressSetPosition _cP;
			_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];			
			if(_cP >= 1) exitWith {};
			if(!alive player) exitWith {};
			if(player != vehicle player) exitWith {};
			if(life_interrupted) exitWith {};
		};
		
		life_action_inUse = false;
		
		5 cutText ["","PLAIN"];
        animationInProgress = false;
		player playActionNow "stop";
		if(life_interrupted) exitWith {life_interrupted = false; titleText["Canceled!","PLAIN"]; life_action_inUse = false;};
		if(player != vehicle player) exitWith {titleText["You got to get out of the vehicle to be able to paint it!","PLAIN"];};
	
		life_ogCash415 = life_ogCash415 - _basePrice;
		//Send toDB
		[[_veh,_color_index],"TON_fnc_vehicleRepaint",false,false] spawn life_fnc_MP;
		
		//Color vehicle globally
		[[_veh,_color_index],"life_fnc_colorVehicle",true,false] spawn life_fnc_MP;
		
		[] call SOCK_fnc_updateRequest; //Sync silently because it's obviously silently..
	
		/* hint format["Vehicle: %1 || New color: %2 || Owner: %3",_veh,_color_index,_vehicledata]; */
};

