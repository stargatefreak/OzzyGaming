/*
	File: fn_impoundAction.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Impounds the vehicle
*/
private["_vehicle","_type","_time","_price","_vehicleData","_vehicleName","_upp","_ui","_progress","_pgText","_cP"];
_vehicle = cursorTarget;
if(!((_vehicle isKindOf "Car") || (_vehicle isKindOf "Air") || (_vehicle isKindOf "Ship") || (_vehicle isKindOf "Tank") || (typeOf _vehicle == "Box_IND_AmmoVeh_F"))) exitWith {};
if(player distance cursorTarget > 10) exitWith {};
if((_vehicle isKindOf "Car") || (_vehicle isKindOf "Air") || (_vehicle isKindOf "Ship") || (_vehicle isKindOf "Tank") || (typeOf _vehicle == "Box_IND_AmmoVeh_F")) then
{
		_vehicleData = _vehicle getVariable["vehicle_info_owners",[]];
		_vehicleName = getText(configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "displayName");
		if(_vehicle getVariable["purpose",""] == "truck_mission") then
		{
			[[0,format["%1 is impounding a delivery truck.",name player]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		}
		else
		{
			[[0,format[localize "STR_NOTF_HasImpounded",profileName,(_vehicleData select 0) select 1,_vehicleName]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		};

		life_action_inUse = true;

		_upp = localize "STR_NOTF_Impounding";
		//Setup our progress bar.
		disableSerialization;
		5 cutRsc ["life_progress","PLAIN"];
		_ui = uiNameSpace getVariable "life_progress";
		_progress = _ui displayCtrl 38201;
		_pgText = _ui displayCtrl 38202;
		_pgText ctrlSetText format["%2 (1%1)...","%",_upp];
		_progress progressSetPosition 0.01;
		_cP = 0.01;
		while{true} do
		{
			sleep 0.09;
			_cP = _cP + 0.01;
			_progress progressSetPosition _cP;
			_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
			if(_cP >= 1) exitWith {};
			if(player distance _vehicle > 10) exitWith {};
			if(!alive player) exitWith {};
		};
		5 cutText ["","PLAIN"];

	if(player distance _vehicle > 10) exitWith {hint localize "STR_NOTF_ImpoundingCancelled"; life_action_inUse = false;};
		if(!alive player) exitWith {life_action_inUse = false;};

		if((count crew _vehicle) == 0) then
		{
			if(!((_vehicle isKindOf "Car") || (_vehicle isKindOf "Air") || (_vehicle isKindOf "Ship") || (_vehicle isKindOf "Tank") || (typeOf _vehicle == "Box_IND_AmmoVeh_F"))) exitWith {life_action_inUse = false;};
			switch (true) do
			{
				case (_vehicle isKindOf "Car"): {_price = call life_impound_car;};
				case (_vehicle isKindOf "Ship"): {_price = call life_impound_boat;};
				case (_vehicle isKindOf "Air"): {_price = call life_impound_air;};
				case (_vehicle isKindOf "Tank"): {_price = call life_impound_armor;};
				case (typeOf _vehicle == "Box_IND_AmmoVeh_F"): {_price = 500;};
			};
			
			life_impound_inuse = true;
			if(_vehicle getVariable["purpose",""] == "truck_mission") then
			{
				if(_vehicle getVariable["type",""] == "legal") then {
					_price = 10000;
					hint format["You have impounded a Legal delivery truck.\n\nYou have received $%1 for cleaning up the streets!",_price];
					[[0,format["%1 has impounded a legal delivery truck",name player]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
					};
				if(_vehicle getVariable["type",""] == "illegal") then {
					_price = 50000;
					hint format["You have impounded an ILLEGAL delivery truck.\n\nYou have received $%1 for cleaning up the streets!",_price];
					[[0,format["%1 has impounded an ILLEGAL delivery truck",name player]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
				};
				life_ozAtm = life_ozAtm + _price;
				deleteVehicle _vehicle;
			}
			else
			{
				if(alive _vehicle) then
				{
					[[_vehicle,true,player,false],"TON_fnc_vehicleStore",false,false] spawn life_fnc_MP;
				}
				else
				{
					[[_vehicle,true,player,true],"TON_fnc_vehicleStore",false,false] spawn life_fnc_MP;
				};
				waitUntil {!life_impound_inuse};
				hint format[localize "STR_NOTF_Impounded",_vehicleName,_price];
				[[0,format[localize "STR_NOTF_HasImpounded",profileName,(_vehicleData select 0) select 1,_vehicleName]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
				life_ozAtm = life_ozAtm + _price;
			};
		}
		else
		{
		hint localize "STR_NOTF_ImpoundingCancelled";
		};
};
life_action_inUse = false;