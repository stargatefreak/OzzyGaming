	if(OG_AdminOnDuty) then {
		OG_AdminOnDuty = false
	} else {
		OG_AdminOnDuty = true
	};

	if(!OG_AdminOnDuty) exitWith {
		hint parseText format ["<t color='#ff0000' size='1.5'>Admin Mode - Disabled</t>"]
	};

	if(OG_AdminOnDuty) then {
		hint parseText format ["<t color='#ff0000' size='1.5'>Admin Mode - Enabled</t>"]
	};
	
	

//Mod
if((__GETC__(life_ogAdminlvl415)) == 1) && (OG_AdminOnDuty) then {

ctrlShow [2904,false];
ctrlShow [2905,true];
ctrlShow [2906,false];
ctrlShow [2907,false];
ctrlShow [2908,false];
ctrlShow [2909,true];
ctrlShow [2910,false];
ctrlShow [2911,false];

};

//Admin
if((__GETC__(life_ogAdminlvl415)) == 2) && (OG_AdminOnDuty) then {

ctrlShow [2904,false];
ctrlShow [2905,true];
ctrlShow [2906,false];
ctrlShow [2907,true];
ctrlShow [2908,false];
ctrlShow [2909,true];
ctrlShow [2910,false];
ctrlShow [2911,false];

};

//Server Admin
if((__GETC__(life_ogAdminlvl415)) == 3) && (OG_AdminOnDuty) then {

ctrlShow [2904,true];
ctrlShow [2905,true];
ctrlShow [2906,true];
ctrlShow [2907,true];
ctrlShow [2908,false];
ctrlShow [2909,true];
ctrlShow [2910,false];
ctrlShow [2911,false];

};

//Server Manager
if((__GETC__(life_ogAdminlvl415)) => 4) && (OG_AdminOnDuty) then {

ctrlShow [2904,true];
ctrlShow [2905,true];
ctrlShow [2906,true];
ctrlShow [2907,true];
ctrlShow [2908,true];
ctrlShow [2909,true];
ctrlShow [2910,true];
ctrlShow [2911,true];

};

