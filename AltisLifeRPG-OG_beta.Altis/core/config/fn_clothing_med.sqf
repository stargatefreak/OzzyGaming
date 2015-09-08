/*
	File: fn_clothing_bruce.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Bruce's Outback Outfits.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"The Paramedic Shop"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["U_I_CombatUniform",nil,500]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_Cap_blu",nil,100]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Squares",nil,10],
			["G_Aviator",nil,100],
			["G_Lady_Mirror",nil,150],
			["G_Lady_Dark",nil,150],
			["G_Lady_Blue",nil,150],
			["G_Lowprofile",nil,30]
		];
	};
	
	//Vest
	case 3:
	{
		[
            ["V_RebreatherB",nil,2000],
            ["V_Rangemaster_belt",nil,2000]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_khk",nil,800]
		];
	};
};