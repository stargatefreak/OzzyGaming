#include <macro.h>
/*
	File: fn_playerTags.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Adds the tags above other players heads when close and have visible range.
*/
private["_ui","_units","_goggles","_headgear"];
#define iconID 78000
#define scale 0.8
_goggles = ["G_Balaclava_blk","G_Balaclava_combat","G_Balaclava_lowprofile","G_Balaclava_oli","G_Bandanna_aviator","G_Bandanna_beast","G_Bandanna_blk","G_Bandanna_khk","G_Bandanna_oli","G_Bandanna_shades","G_Bandanna_sport","G_Bandanna_tan"];
_headgear = ["H_ShemagOpen_tan","H_Shemag_olive","H_ShemagOpen_khk","H_RacingHelmet_1_black_F","H_RacingHelmet_1_red_F","H_RacingHelmet_1_white_F","H_RacingHelmet_1_blue_F","H_RacingHelmet_1_yellow_F","H_RacingHelmet_1_green_F","H_RacingHelmet_1_F","H_RacingHelmet_2_F","H_RacingHelmet_3_F","H_RacingHelmet_4_F"];

if(visibleMap OR {!alive player} OR {dialog}) exitWith {
	500 cutText["","PLAIN"];
};

_ui = uiNamespace getVariable ["Life_HUD_nameTags",displayNull];
if(isNull _ui) then {
	500 cutRsc["Life_HUD_nameTags","PLAIN"];
	_ui = uiNamespace getVariable ["Life_HUD_nameTags",displayNull];
};

_units = nearestObjects[(visiblePosition player),["Man","Land_Pallet_MilBoxes_F","Land_Sink_F"],50];

_units = _units - [player];

{
	private["_text"];
	_idc = _ui displayCtrl (iconID + _forEachIndex);
	if(!(lineIntersects [eyePos player, eyePos _x, player, _x]) && {!isNil {_x getVariable "realname"}}) then {
		_pos = switch(typeOf _x) do {
			case "Land_Pallet_MilBoxes_F": {[visiblePosition _x select 0, visiblePosition _x select 1, (getPosATL _x select 2) + 1.5]};
			case "Land_Sink_F": {[visiblePosition _x select 0, visiblePosition _x select 1, (getPosATL _x select 2) + 2]};
			default {[visiblePosition _x select 0, visiblePosition _x select 1, ((_x modelToWorld (_x selectionPosition "head")) select 2)+.5]};
		};
		_sPos = worldToScreen _pos;
		_distance = _pos distance player;
		if(count _sPos > 1 && {_distance < 15} && ((_x distance (getMarkerPos "police_hq_1") < 20) OR  (_x distance (getMarkerPos "police_hq_2") < 20) OR (_x distance (getMarkerPos "police_hq_3") < 20) OR (_x distance (getMarkerPos "police_hq_4") < 20) OR (_x distance (getMarkerPos "police_hq_5") < 20) OR (_x distance (getMarkerPos "police_hq_6") < 20) OR (_x distance (getMarkerPos "police_hq_7") < 20) OR (_x distance (getMarkerPos "police_hq_8") < 20))) then {
			_text = switch (true) do {
				case (_x in (units grpPlayer) && playerSide == civilian): {format["<t color='#00FF00'>%1</t>",(_x getVariable ["realname",name _x])];};
				case (!isNil {(_x getVariable "rank")}): {format["<img image='%1' size='1'></img> <t color='#FF0000'>%2</t>",switch ((_x getVariable "rank")) do {
					case 2: {"\a3\ui_f\data\gui\cfg\Ranks\corporal_gs.paa"}; 
					case 3: {"\a3\ui_f\data\gui\cfg\Ranks\sergeant_gs.paa"};
					case 4: {"\a3\ui_f\data\gui\cfg\Ranks\lieutenant_gs.paa"};
					case 5: {"\a3\ui_f\data\gui\cfg\Ranks\captain_gs.paa"};
					case 6: {"\a3\ui_f\data\gui\cfg\Ranks\major_gs.paa"};
					case 7: {"\a3\ui_f\data\gui\cfg\Ranks\colonel_gs.paa"};
					case 8: {"\a3\ui_f\data\gui\cfg\Ranks\general_gs.paa"};
					default {"\a3\ui_f\data\gui\cfg\Ranks\private_gs.paa"};
					}, if((((goggles _x) in _goggles) || ((headgear _x) in _headgear)) AND playerside != west) then {"Police Masked"} else {_x getVariable ["realname",name _x]}]};
				case ((!isNil {_x getVariable "name"} && playerSide == independent)): {format["<t color='#FF0000'><img image='a3\ui_f\data\map\MapControl\hospital_ca.paa' size='1.5'></img></t> %1",_x getVariable ["name","Unknown Player"]]};
				case (((goggles _x) in _goggles) OR ((headgear _x) in _headgear)): {format["Masked Player"];};
				default {
					if(!isNil {(group _x) getVariable "gang_name"}) then {
						format["%1<br/><t size='0.8' color='#B6B6B6'>%2</t>",_x getVariable ["realname",name _x],(group _x) getVariable ["gang_name",""]];
					} else {
						_x getVariable ["realname",name _x];
					};
				};
			};
			
			_idc ctrlSetStructuredText parseText _text;
			_idc ctrlSetPosition [_sPos select 0, _sPos select 1, 0.4, 0.65];
			_idc ctrlSetScale scale;
			_idc ctrlSetFade 0;
			_idc ctrlCommit 0;
			_idc ctrlShow true;
		} else {
			_idc ctrlShow false;
		};
	} else {
		_idc ctrlShow false;
	};
} foreach _units;