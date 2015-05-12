life_fnc_sidechat =
compileFinal "
	if(life_sidechat) then {life_sidechat = false;} else {life_sidechat = true;};
	[[player,life_sidechat,playerSide],""TON_fnc_managesc"",false,false] spawn life_fnc_MP;
	[] call life_fnc_settingsMenu;
";

publicVariable "life_fnc_sidechat";

OG_fnc_garageVehicle =
compileFinal "
    private[""_nearVehicle"",""_filteredVehicle""];
    if(_this select 1) then {
        _nearVehicle = nearestObjects[(getMarkerPos (_this select 0)),[""Car"",""Ship"",""Air""],35];
    } else {
        _nearVehicle = nearestObjects[(getPos (_this select 0)),[""Car"",""Ship"",""Air""],35];
    };
    {
        if(!(typeof _x in [""PortableHelipadLight_01_green_F""])) then {_filteredVehicle pushBack _x};
    } forEach _nearVehicle;
    _nearVehicle = _filteredVehicle select 0;
    if(isNil ""_nearVehicle"") exitWith {
        hint ""There isn't a vehicle near this NPC."";
    };
    [[_nearVehicle,false,(_this select 1)],""TON_fnc_vehicleStore"",false,false] spawn life_fnc_MP;
    hint ""The server is trying to store the vehicle please wait...."";
    life_garage_store = true;
";

publicVariable "OG_fnc_garageVehicle";

OG_fnc_earPlugs_down =
compileFinal "
    if (OG_budVolume > 20) then {
        OG_budVolume = OG_budVolume - 20;
        1 fadeSound (OG_budVolume / 100);
        titleText[format[""You have lowered your ambient volume to: %1"",OG_budVolume],""PLAIN""];
    };
    if (OG_budVolume <= 20) then {
        OG_budVolume = 20;
        1 fadeSound 0.2;
    };
";

publicVariable "OG_fnc_earPlugs_down";

OG_fnc_earPlugs_up =
compileFinal "
    if (OG_budVolume < 100) then {
        OG_budVolume = OG_budVolume + 20;
        1 fadeSound (OG_budVolume / 100);
        titleText[format[""You have raised your ambient volume to: %1"",OG_budVolume],""PLAIN""];
    };
    if (OG_budVolume >= 100) then {
        OG_budVolume = 100;
        1 fadeSound 1;
    };
";

publicVariable "OG_fnc_earPlugs_up";

TON_fnc_index =
compileFinal "
	private[""_item"",""_stack""];
	_item = _this select 0;
	_stack = _this select 1;
	_return = -1;

	{
		if(_item in _x) exitWith {
			_return = _forEachIndex;
		};
	} foreach _stack;

	_return;
";
publicVariable "TON_fnc_index";

TON_fnc_player_query =
compileFinal "
	private[""_ret"",""_totalHrs"",""_sideHrs"",""_query"",""_str"",""_shrt"",""_val"",""_vItems"",""_bp"",""_cfg"",""_load"",""_maxWeight"",""_hackedWeight""];
	_ret = _this select 0;
	if(isNull _ret) exitWith {};
	if(isNil ""_ret"") exitWith {};
    
    _sideHrs = 0;
    _sideHrs = switch(playerSide) do {
        case west: {copTimer};
        case civilian: {civTimer};
        case independent: {medicTimer};
    };
    _totalHrs = _sideHrs + (call OG_totalHours);
    _vItems = """";
    {
        _str = [_x] call life_fnc_varToStr;
        _shrt = [_x,1] call life_fnc_varHandle;
        _val = missionNameSpace getVariable _x;
        if(_val > 0) then
        {
            if(_vItems == """") then {
                _vItems = format[""%1x %2"",_val,_str]
            } else {
                _vItems = format[""%3 - %1x %2"",_val,_str,_vItems];
            };
        };
    } foreach life_inv_items;
    
	[[life_ogBank415,life_ogCash415,owner player,player,call life_ogAdminlvl415,call life_Ozdonator,getPlayerUID player,_sideHrs,_totalHrs,_vItems,call OG_aliases],""life_fnc_admininfo"",_ret,false] spawn life_fnc_MP;
";
publicVariable "TON_fnc_player_query";

TON_fnc_clientWireTransfer =
compileFinal "
	private[""_unit"",""_val"",""_from""];
	_val = _this select 0;
	_from = _this select 1;
	if(!([str(_val)] call TON_fnc_isnumber)) exitWith {};
	if(_from == """") exitWith {};
	life_ogBank415 = life_ogBank415 + _val;
	hint format[""%1 has wire transferred $%2 to you."",_from,[_val] call life_fnc_numberText];
";
publicVariable "TON_fnc_clientWireTransfer";

TON_fnc_clientWireCompensate =
compileFinal "
	private[""_unit"",""_val"",""_from""];
	_val = _this select 0;
	_from = _this select 1;
	if(!([str(_val)] call TON_fnc_isnumber)) exitWith {};
	if(_from == """") exitWith {};
	life_ogBank415 = life_ogBank415 + _val;
	hint format[""Admin %1 has wired you a Comp of $%2"",_from,[_val] call life_fnc_numberText];
";
publicVariable "TON_fnc_clientWireCompensate";

TON_fnc_isnumber =
compileFinal "
	private[""_valid"",""_value"",""_compare""];
	_value = _this select 0;
	_valid = [""0"",""1"",""2"",""3"",""4"",""5"",""6"",""7"",""8"",""9""];
	_array = [_value] call KRON_StrToArray;
	_return = true;
	
	{
		if(_x in _valid) then	
		{}
		else
		{
			_return = false;
		};
	} foreach _array;
	_return;
";

publicVariable "TON_fnc_isnumber";

TON_fnc_clientGangKick =
compileFinal "
	private[""_unit"",""_group""];
	_unit = _this select 0;
	_group = _this select 1;
	if(isNil ""_unit"" OR isNil ""_group"") exitWith {};
	if(player == _unit && (group player) == _group) then
	{
		life_my_gang = ObjNull;
		[player] joinSilent grpNull;
		hint format[""You have been kicked out of the %1 gang."",_group getVariable ""gang_name""];		
	};
";
publicVariable "TON_fnc_clientGangKick";

TON_fnc_clientGetKey =
compileFinal "
	private[""_vehicle"",""_unit"",""_giver""];
	_vehicle = _this select 0;
	_unit = _this select 1;
	_giver = _this select 2;
	if(isNil ""_unit"" OR isNil ""_giver"") exitWith {};
	if(player == _unit && !(_vehicle in life_vehicles)) then
	{
		_name = getText(configFile >> ""CfgVehicles"" >> (typeOf _vehicle) >> ""displayName"");
		hint format[""%1 has gave you keys for a %2"",_giver,_name];
		life_vehicles pushBack _vehicle;
		[[getPlayerUID player,playerSide,_vehicle,1],""TON_fnc_keyManagement"",false,false] spawn life_fnc_MP;
	};
";

publicVariable "TON_fnc_clientGetKey";

TON_fnc_clientGangLeader =
compileFinal "
	private[""_unit"",""_group""];
	_unit = _this select 0;
	_group = _this select 1;
	if(isNil ""_unit"" OR isNil ""_group"") exitWith {};
	if(player == _unit && (group player) == _group) then
	{
		player setRank ""COLONEL"";
		_group selectLeader _unit;
		hint ""You have been made the new leader."";
	};
";

publicVariable "TON_fnc_clientGangLeader";

//Cell Phone Messaging
/*
	-fnc_cell_textmsg
	-fnc_cell_textcop
	-fnc_cell_textadmin
	-fnc_cell_adminmsg
	-fnc_cell_adminmsgall
*/

//To EMS
TON_fnc_cell_emsrequest = 
compileFinal "
private[""_msg"",""_to"",""_pos""];
	_pos = _this select 0;
    ctrlShow[3022,false];
	_msg = ctrlText 3003;
	_to = ""EMS Units"";
	if(_msg == """") exitWith {hint ""You must enter a message to send!"";ctrlShow[3022,true];};
		
	[[_msg,name player,5,_pos],""TON_fnc_clientMessage"",independent,false] spawn life_fnc_MP;
	[] call life_fnc_cellphone;
	hint format[""You have sent a message to all EMS Units."",_to,_msg];
	ctrlShow[3022,true];
";
//To One Person
TON_fnc_cell_textmsg =
compileFinal "
	private[""_msg"",""_to""];
	ctrlShow[3015,false];
	_msg = ctrlText 3003;
	if(lbCurSel 3004 == -1) exitWith {hint ""You must select a player you are sending the text to!""; ctrlShow[3015,true];};
	_to = call compile format[""%1"",(lbData[3004,(lbCurSel 3004)])];
	if(isNull _to) exitWith {ctrlShow[3015,true];};
	if(isNil ""_to"") exitWith {ctrlShow[3015,true];};
	if(_msg == """") exitWith {hint ""You must enter a message to send!"";ctrlShow[3015,true];};
	
	[[_msg,name player,0],""TON_fnc_clientMessage"",_to,false] spawn life_fnc_MP;
	[] call life_fnc_cellphone;
	hint format[""You sent %1 a message: %2"",name _to,_msg];
	ctrlShow[3015,true];
";
//To All Cops
TON_fnc_cell_textcop =
compileFinal "
	private[""_msg"",""_to"",""_pos""];
    _pos = [_this,0,[]] call BIS_fnc_param;
	ctrlShow[3016,false];
	_msg = ctrlText 3003;
	_to = ""The Police"";
	if(_msg == """") exitWith {hint ""You must enter a message to send!"";ctrlShow[3016,true];};
		
	[[_msg,name player,1,_pos],""TON_fnc_clientMessage"",true,false] spawn life_fnc_MP;
	[] call life_fnc_cellphone;
	hint format[""You sent %1 a message: %2"",_to,_msg];
	ctrlShow[3016,true];
";
//To All Admins
TON_fnc_cell_textadmin =
compileFinal "
	private[""_msg"",""_to"",""_from"",""_pos""];
	_pos = _this select 0;
	ctrlShow[3017,false];
	_msg = ctrlText 3003;
	_to = ""The Admins"";
	if(_msg == """") exitWith {hint ""You must enter a message to send!"";ctrlShow[3017,true];};
		
	[[_msg,name player,2,_pos],""TON_fnc_clientMessage"",true,false] spawn life_fnc_MP;
	[] call life_fnc_cellphone;
	hint format[""You sent %1 a message: %2"",_to,_msg];
	ctrlShow[3017,true];
";
//Admin To One Person
TON_fnc_cell_adminmsg =
compileFinal "
	if(isServer) exitWith {};
	if((call life_ogAdminlvl415) < 1) exitWith {hint ""You are not an admin!"";};
	private[""_msg"",""_to""];
	_msg = ctrlText 3003;
	_to = call compile format[""%1"",(lbData[3004,(lbCurSel 3004)])];
	if(isNull _to) exitWith {};
	if(_msg == """") exitWith {hint ""You must enter a message to send!"";};
	
	[[_msg,name player,3],""TON_fnc_clientMessage"",_to,false] spawn life_fnc_MP;
	[] call life_fnc_cellphone;
	hint format[""Admin Message Sent To: %1 - Message: %2"",name _to,_msg];
";

TON_fnc_cell_adminmsgall =
compileFinal "
	if(isServer) exitWith {};
	if((call life_ogAdminlvl415) < 1) exitWith {hint ""You are not an admin!"";};
	private[""_msg"",""_from""];
	_msg = ctrlText 3003;
	if(_msg == """") exitWith {hint ""You must enter a message to send!"";};
	
	[[_msg,name player,4],""TON_fnc_clientMessage"",true,false] spawn life_fnc_MP;
	[] call life_fnc_cellphone;
	hint format[""Admin Message Sent To All: %1"",_msg];
";

publicVariable "TON_fnc_cell_textmsg";
publicVariable "TON_fnc_cell_textcop";
publicVariable "TON_fnc_cell_textadmin";
publicVariable "TON_fnc_cell_adminmsg";
publicVariable "TON_fnc_cell_adminmsgall";
publicVariable "TON_fnc_cell_emsrequest";
//Client Message
/*
	0 = private message
	1 = police message
	2 = message to admin
	3 = message from admin
	4 = admin message to all
*/
TON_fnc_clientMessage =
compileFinal "
	if(isServer) exitWith {};
	private[""_msg"",""_from"", ""_type"",""_pos"",""_grid"",""_dir"",""_dist""];
	_msg = _this select 0;
	_from = _this select 1;
	_type = _this select 2;
    _pos = [_this,3,[]] call BIS_fnc_param;
    if(count _pos == 3) then {
        _pos = _this select 3;
        _grid = mapGridPosition _pos;
        _dir = [getPos player, _pos] call BIS_fnc_dirTo;
        _dist = round(((getPos player) distance _pos) / 100) / 10;
    } else {
        _grid = ""UNKNOWN"";
        _dir = ""UNKNOWN"";
        _dist = ""UNKNOWN"";
    };
	if(_from == """") exitWith {};
	switch (_type) do
	{
		case 0 :
		{
			private[""_message""];
			_message = format["">>>MESSAGE FROM %1: %2"",_from,_msg];
			hint parseText format [""<t color='#FFCC00'><t size='2'><t align='center'>New Message<br/><br/><t color='#33CC33'><t align='left'><t size='1'>To: <t color='#ffffff'>You<br/><t color='#33CC33'>From: <t color='#ffffff'>%1<br/><br/><t color='#33CC33'>Message:<br/><t color='#ffffff'>%2"",_from,_msg];
			
			[""TextMessage"",[format[""You Received A New Private Message From %1"",_from]]] call bis_fnc_showNotification;
			systemChat _message;
		};
		
		case 1 :
		{
			if(side player != west) exitWith {};
			private[""_message""];
			_message = format[""---911 DISPATCH FROM %1: %2"",_from,_msg];
			hint parseText format [""<t color='#316dff'><t size='2'><t align='center'>New Dispatch<br/><br/><t color='#33CC33'><t align='left'><t size='1'>To: <t color='#ffffff'>All Officers<br/><t color='#33CC33'>From: <t color='#ffffff'>%1<br/><br/><t color='#33CC33'>Message:<br/><t color='#ffffff'>%2<br/><br/><t color='#33CC33'><t align='left'>Grid:<t align='right'><t color='#ffffff'>%3<br/><t color='#33CC33'><t align='left'>Bearing:<t align='right'><t color='#ffffff'>%4<br/><t color='#33CC33'><t align='left'>Distance:<t align='right'><t color='#ffffff'>%5km"",_from,_msg,_grid,_dir,_dist];
			
			[""PoliceDispatch"",[format[""A New Police Report From: %1"",_from]]] call bis_fnc_showNotification;
			systemChat _message;
		};
		
		case 2 :
		{
			if((call life_ogAdminlvl415) < 1) exitWith {};
			private[""_message""];
			_message = format[""???ADMIN REQUEST FROM %1: %2"",_from,_msg];
			hint parseText format [""<t color='#ffcefe'><t size='2'><t align='center'>Admin Request<br/><br/><t color='#33CC33'><t align='left'><t size='1'>To: <t color='#ffffff'>Admins<br/><t color='#33CC33'>From: <t color='#ffffff'>%1<br/><br/><t color='#33CC33'>Message:<br/><t color='#ffffff'>%2<br/><br/><t color='#33CC33'><t align='left'>Grid:<t align='right'><t color='#ffffff'>%3<br/><t color='#33CC33'><t align='left'>Bearing:<t align='right'><t color='#ffffff'>%4<br/><t color='#33CC33'><t align='left'>Distance:<t align='right'><t color='#ffffff'>%5"",_from,_msg,_grid,_dir,_dist];
			
			[""AdminDispatch"",[format[""%1 Has Requested An Admin!"",_from]]] call bis_fnc_showNotification;
			systemChat _message;
		};
		
		case 3 :
		{
			private[""_message""];
			_message = format[""!!!ADMIN MESSAGE: %1"",_msg];
			_admin = format[""Sent by admin: %1"", _from];
			hint parseText format [""<t color='#FF0000'><t size='2'><t align='center'>Admin Message<br/><br/><t color='#33CC33'><t align='left'><t size='1'>To: <t color='#ffffff'>You<br/><t color='#33CC33'>From: <t color='#ffffff'>An Admin<br/><br/><t color='#33CC33'>Message:<br/><t color='#ffffff'>%1"",_msg];
			
			[""AdminMessage"",[""You Have Received A Message From An Admin!""]] call bis_fnc_showNotification;
			systemChat _message;
			if((call life_ogAdminlvl415) > 0) then {systemChat _admin;};
		};
		
		case 4 :
		{
			private[""_message"",""_admin""];
			_message = format[""!!!ADMIN MESSAGE: %1"",_msg];
			_admin = format[""Sent by admin: %1"", _from];
			hint parseText format [""<t color='#FF0000'><t size='2'><t align='center'>Admin Message<br/><br/><t color='#33CC33'><t align='left'><t size='1'>To: <t color='#ffffff'>All Players<br/><t color='#33CC33'>From: <t color='#ffffff'>The Admins<br/><br/><t color='#33CC33'>Message:<br/><t color='#ffffff'>%1"",_msg];
			
			[""AdminMessage"",[""You Have Received A Message From An Admin!""]] call bis_fnc_showNotification;
			systemChat _message;
			if((call life_ogAdminlvl415) > 0) then {systemChat _admin;};
		};
		
		case 5: {
			private[""_message""];
			_message = format[""!!!EMS REQUEST: %1"",_msg];
			hint parseText format [""<t color='#FFCC00'><t size='2'><t align='center'>EMS Request<br/><br/><t color='#33CC33'><t align='left'><t size='1'>To: <t color='#ffffff'>You<br/><t color='#33CC33'>From: <t color='#ffffff'>%1<br/><br/><t color='#33CC33'>Message:<br/><t color='#ffffff'>%2<br/><br/><t color='#33CC33'><t align='left'>Grid:<t align='right'><t color='#ffffff'>%3<br/><t color='#33CC33'><t align='left'>Bearing:<t align='right'><t color='#ffffff'>%4<br/><t color='#33CC33'><t align='left'>Distance:<t align='right'><t color='#ffffff'>%5"",_from,_msg,_grid,_dir,_dist];
			
			[""TextMessage"",[format[""EMS Request from %1"",_from]]] call bis_fnc_showNotification;
		};
	};
";
publicVariable "TON_fnc_clientMessage";
