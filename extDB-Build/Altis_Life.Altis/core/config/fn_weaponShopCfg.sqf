#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for the weapon shops.
*/

// lines commented with price need to be given a price

private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{
	case "med_basic":
	{
		switch (true) do 
		{
			case (playerSide != independent): {"You are not an EMS Medic"};
			default {
				["Hospital EMS Shop",
					[
						["ItemGPS",nil,100],
						["Binocular",nil,150],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,500],
						["NVGoggles",nil,1200],
						["B_FieldPack_ocamo",nil,3000]
					]
				];
			};
		};
	};
	case "cop_basic":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) == 2): 
			{
				["Corrections Officer Shop",
					[
						["SMG_01_F","Taser Rifle",2000],
						["hgun_P07_snds_F","Stun Pistol",200],
						["hgun_P07_F",nil,200],
                        ["hgun_Pistol_Signal_F","Flare Gun",2500],
                        ["hgun_PDW2000_F","PDW2000 9mm",15000],
                        ["arifle_Mk20C_plain_F","Mk20 5.56mm",25000],
                        ["arifle_MX_F","MX 6.5mm",17500],
                        ["arifle_MXC_F","MXC 6.5mm",20000],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["NVGoggles",nil,2000],
                        ["Chemlight_red",nil,500],
                        ["Chemlight_yellow",nil,500],
                        ["Chemlight_green",nil,100],
                        ["Chemlight_blue",nil,100],
                        ["Rangefinder",nil,1500],
                        ["MineDetector",nil,1500],
                        ["acc_flashlight","Flashlight",1000],
                        ["optic_Hamr","RCO",1000],
                        ["optic_Holosight","Holosight",3600],
                        ["Smokeshell","Smoke Shell (White)",100],
                        ["SmokeShellRed","Smoke Shell (Red)",100],
                        ["6Rnd_GreenSignal_F","6Rnd Signal Cylinder (Green)",100],
                        ["6Rnd_RedSignal_F","6Rnd Signal Cylinder (Red)",100],
                        ["6Rnd_45ACP_Cylinder",".45 ACP 6Rnd Cylinder",200],
                        ["9Rnd_45ACP_Mag",".45 ACP 9Rnd Mag",200],
						["16Rnd_9x21_Mag",nil,50],
						["30Rnd_9x21_Mag",nil,100],
						["30Rnd_45ACP_Mag_SMG_01","Taser Rifle Magazine",125],
                        ["SmokeShellRed","Smoke Shell (Red)",100]
					]
				];
			};
			case (__GETC__(life_coplevel) == 3): 
			{
				["Patrol Officer",
					[
						["SMG_01_F","Taser Rifle",2000],
                        ["SMG_02_F","Sting 9mm",17500],
						["hgun_P07_snds_F","Stun Pistol",200],
						["hgun_P07_F",nil,200],
                        ["hgun_Pistol_Signal_F","Flare Gun",2500],
                        ["hgun_PDW2000_F","PDW2000 9mm",15000],
                        ["arifle_Katiba_F","Katiba 6.5mm",17500],
                        ["arifle_Mk20C_plain_F","Mk20 5.56mm",25000],
                        ["arifle_MX_F","MX 6.5mm",17500],
                        ["arifle_MXC_F","MXC 6.5mm",20000],
                        ["arifle_MXM_F","MXM 6.5 mm",40000],
                        ["arifle_SDAR_F","SDAR 5.56 mm",12500],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
                        ["NVGoggles",nil,2000],
                        ["HandGrenade_Stone","Flashbang",1250],
                        ["SmokeShellGreen","Teargas",1250],
                        ["Chemlight_red",nil,50],
                        ["Chemlight_yellow",nil,50],
                        ["Chemlight_green",nil,50],
                        ["Chemlight_blue",nil,50],
                        ["Rangefinder",nil,2000],
                        ["MineDetector",nil,2000],
						["acc_flashlight",nil,500],
                        ["optic_Hamr","RCO",1000],
                        ["optic_Holosight","Holosight",3600],
                        ["muzzle_snds_L","Sound Suppressor (9mm)",1000],
                        ["muzzle_snds_M","Sound Suppressor (5.56mm)",1000],
                        ["optic_ACO_grn","ACO (Green)",500],
                        ["optic_ACO_grn_smg","ACO SMG (Green)",500],
                        ["optic_MRCO","MRCO",750],
                        ["optic_MRD","MRD",250],
                        ["optic_NVS","NVS",2500],
                        ["optic_SOS","SOS",2000],
                        ["Smokeshell","Smoke Shell (White)",100],
                        ["SmokeShellRed","Smoke Shell (Red)",100],
                        ["6Rnd_GreenSignal_F","6Rnd Signal Cylinder (Green)",100],
                        ["6Rnd_RedSignal_F","6Rnd Signal Cylinder (Red)",100],
                        ["20Rnd_556x45_UW_mag","5.56mm 20Rnd Dual Purpose Mag",2500],
                        ["30Rnd_556x45_Stanag","5.56mm 30rnd STANAG Mag",2500],
                        ["30Rnd_556x45_Stanag_Tracer_Yellow","5.56mm 30rnd Tracer (Yellow) Mag",1750],
                        ["30Rnd_65x39_caseless_green","6.5mm 30Rnd Caseless Mag ",1750],
                        ["30Rnd_65x39_caseless_green_mag_Tracer","6.5mm 30Rnd Tracer (Green) Mag ",1750],
                        ["30Rnd_65x39_caseless_mag","6.5mm 30Rnd STANAG Mag",1750],
                        ["30Rnd_9x21_Mag","9mm 30Rnd Mag",100],
						["30Rnd_65x39_caseless_mag_Tracer",nil,200],
						["16Rnd_9x21_Mag",nil,50],
						["30Rnd_45ACP_Mag_SMG_01","Taser Rifle Magazine",125]
					]
				];
			};
			case (__GETC__(life_coplevel) == 4): 
			{
				["Air Patrol Shop",
					[
						["SMG_01_F","Taser Rifle",2000],
                        ["SMG_02_F","Sting 9mm",17500],
						["hgun_P07_snds_F","Stun Pistol",200],
						["hgun_P07_F",nil,200],
                        ["hgun_Pistol_Signal_F","Flare Gun",2500],
                        ["hgun_PDW2000_F","PDW2000 9mm",15000],
                        ["arifle_Katiba_F","Katiba 6.5mm",17500],
                        ["arifle_Mk20C_plain_F","Mk20 5.56mm",25000],
                        ["arifle_MX_F","MX 6.5mm",17500],
                        ["arifle_MXC_F","MXC 6.5mm",20000],
                        ["arifle_MXM_F","MXM 6.5 mm",40000],
                        ["arifle_SDAR_F","SDAR 5.56 mm",12500],
                        ["srifle_DMR_01_F","Rahim 7.62mm",50000],
                        ["srifle_EBR_F","Mk18 ABR 7.62mm",60000],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],
                        ["NVGoggles",nil,2000],
                        ["HandGrenade_Stone","Flashbang",0],
                        ["SmokeShellGreen","Teargas",0],
                        ["Chemlight_red",nil,500],
                        ["Chemlight_yellow",nil,500],
                        ["Chemlight_green",nil,0],
                        ["Chemlight_blue",nil,0],
                        ["Rangefinder",nil,0],
                        ["MineDetector",nil,0],
						["acc_flashlight",nil,500],
                        ["optic_Hamr","RCO",1000],
                        ["optic_Holosight","Holosight",3600],
                        ["muzzle_snds_H","Sound Suppressor (7.62mm)",1000],
                        ["muzzle_snds_L","Sound Suppressor (9mm)",1000],
                        ["muzzle_snds_M","Sound Suppressor (5.56mm)",1000],
                        ["optic_ACO_grn","ACO (Green)",500],
                        ["optic_ACO_grn_smg","ACO SMG (Green)",750],
                        ["optic_MRCO","MRCO",250],
                        ["optic_MRD","MRD",250],
                        ["optic_NVS","NVS",2500],
                        ["optic_SOS","SOS",2000],
                        ["Smokeshell","Smoke Shell (White)",100],
                        ["SmokeShellRed","Smoke Shell (Red)",100],
                        ["UGL_FlareRed_F",nil,250],
                        ["UGL_FlareYellow_F",nil,250],
                        ["UGL_FlareWhite_F",nil,250],
                        ["6Rnd_GreenSignal_F","6Rnd Signal Cylinder (Green)",100],
                        ["6Rnd_RedSignal_F","6Rnd Signal Cylinder (Red)",100],
                        ["20Rnd_556x45_UW_mag","5.56mm 20Rnd Dual Purpose Mag",2000],
                        ["20Rnd_762x51_Mag","7.62mm 20Rnd Mag",5000],
                        ["30Rnd_556x45_Stanag","5.56mm 30rnd STANAG Mag",2500],
                        ["30Rnd_556x45_Stanag_Tracer_Yellow","5.56mm 30rnd Tracer (Yellow) Mag",2500],
                        ["30Rnd_65x39_caseless_green","6.5mm 30Rnd Caseless Mag ",1750],
                        ["30Rnd_65x39_caseless_mag","6.5mm 30Rnd STANAG Mag",1750],
                        ["30Rnd_9x21_Mag","9mm 30Rnd Mag",750],
						["30Rnd_65x39_caseless_mag_Tracer",nil,200],
						["16Rnd_9x21_Mag",nil,50],
						["30Rnd_45ACP_Mag_SMG_01","Taser Rifle Magazine",125]
					]
				];
			};
			case (__GETC__(life_coplevel) == 15): 
			{
				["Coast Guard Shop",
					[
					
						["SMG_01_F","Taser Rifle",2000],
						["hgun_P07_snds_F","Stun Pistol",200],
						["hgun_P07_F",nil,2000],
						["arifle_SDAR_F","Underwater Weapon",10000],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000],
						["16Rnd_9x21_Mag",nil,50],
						["20Rnd_556x45_UW_mag",nil,50],
						["30Rnd_45ACP_Mag_SMG_01","Taser Rifle Magazine",125]
					]
				];
			};
			case (__GETC__(life_coplevel) == 5): 
			{
				["S.W.A.T Shop",
					[
						["SMG_01_F","Taser Rifle",2000],
                        ["SMG_02_F","Sting 9mm",17500],
						["hgun_P07_snds_F","Stun Pistol",200],
						["hgun_P07_F",nil,200],
                        ["hgun_Pistol_Signal_F","Flare Gun",2500],
                        ["hgun_PDW2000_F","PDW2000 9mm",15000],
                        ["arifle_Katiba_F","Katiba 6.5mm",17500],
                        ["arifle_Mk20C_plain_F","Mk20 5.56mm",25000],
                        ["arifle_MX_F","MX 6.5mm",17500],
                        ["arifle_MXC_F","MXC 6.5mm",20000],
                        ["arifle_MXM_F","MXM 6.5 mm",40000],
                        ["arifle_SDAR_F","SDAR 5.56 mm",12500],
                        ["srifle_DMR_01_F","Rahim 7.62mm",50000],
                        ["srifle_EBR_F","Mk18 ABR 7.62mm",60000],
                        ["LMG_Mk200_F","Mk200 6.5mm",200000],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],
                        ["NVGoggles",nil,2000],
                        ["HandGrenade_Stone","Flashbang",0],
                        ["SmokeShellGreen","Teargas",0],
                        ["Chemlight_red",nil,500],
                        ["Chemlight_yellow",nil,500],
                        ["Chemlight_green",nil,0],
                        ["Chemlight_blue",nil,0],
                        ["Rangefinder",nil,0],
                        ["MineDetector",nil,0],
						["acc_flashlight",nil,500],
                        ["optic_Hamr","RCO",1000],
                        ["optic_Holosight","Holosight",3600],
                        ["muzzle_snds_acp","Sound Suppressor (.45 ACP)",1000],
                        ["muzzle_snds_B","Sound Suppressor (.45 ACP)",1000],
                        ["muzzle_snds_H","Sound Suppressor (7.62mm)",1000],
                        ["muzzle_snds_H_MG","Sound Suppressor LMG(6.5mm)",1000],
                        ["muzzle_snds_L","Sound Suppressor (9mm)",1000],
                        ["muzzle_snds_M","Sound Suppressor (5.56mm)",1000],
                        ["optic_ACO_grn","ACO (Green)",500],
                        ["optic_ACO_grn_smg","ACO SMG (Green)",500],
                        ["optic_MRCO","MRCO",500],
                        ["optic_MRD","MRD",250],
                        ["optic_NVS","NVS",2000],
                        ["optic_SOS","SOS",2500],
                        ["Smokeshell","Smoke Shell (White)",100],
                        ["SmokeShellRed","Smoke Shell (Red)",100],
                        ["UGL_FlareRed_F",nil,250],
                        ["UGL_FlareYellow_F",nil,250],
                        ["UGL_FlareWhite_F",nil,250],
                        ["6Rnd_GreenSignal_F","6Rnd Signal Cylinder (Green)",100],
                        ["6Rnd_RedSignal_F","6Rnd Signal Cylinder (Red)",100],
                        ["20Rnd_556x45_UW_mag","5.56mm 20Rnd Dual Purpose Mag",2000],
                        ["20Rnd_762x51_Mag","7.62mm 20Rnd Mag",5000],
                        ["30Rnd_556x45_Stanag","5.56mm 30rnd STANAG Mag",2500],
                        ["30Rnd_556x45_Stanag_Tracer_Yellow","5.56mm 30rnd Tracer (Yellow) Mag",2500],
                        ["30Rnd_65x39_caseless_green","6.5mm 30Rnd Caseless Mag ",1750],
                        ["30Rnd_65x39_caseless_mag","6.5mm 30Rnd STANAG Mag",1750],
                        ["30Rnd_9x21_Mag","9mm 30Rnd Mag",750],
						["30Rnd_65x39_caseless_mag_Tracer",nil,200],
						["16Rnd_9x21_Mag",nil,50],
						["30Rnd_45ACP_Mag_SMG_01","Taser Rifle Magazine",125],
					    ["200Rnd_65x39_cased_Box","6.5mm 200Rnd Belt Case",10000],
                        ["200Rnd_65x39_cased_Box_Tracer","6.5mm 200Rnd Tracer (Green) Belt Case",10000]
					]
				];
			};
			case (__GETC__(life_coplevel) >= 6): 
			{
				["Anti-Terror Task Force Shop",
					[
						["SMG_01_F","Taser Rifle",2000],
                        ["SMG_02_F","Sting 9mm",17500],
						["hgun_P07_snds_F","Stun Pistol",200],
						["hgun_P07_F",nil,200],
                        ["hgun_Pistol_Signal_F","Flare Gun",2500],
                        ["hgun_PDW2000_F","PDW2000 9mm",15000],
                        ["arifle_Katiba_F","Katiba 6.5mm",17500],
                        ["arifle_Mk20C_plain_F","Mk20 5.56mm",25000],
                        ["arifle_MX_F","MX 6.5mm",17500],
                        ["arifle_MXC_F","MXC 6.5mm",20000],
                        ["arifle_MXM_F","MXM 6.5 mm",40000],
                        ["arifle_SDAR_F","SDAR 5.56 mm",12500],
                        ["srifle_DMR_01_F","Rahim 7.62mm",50000],
                        ["srifle_EBR_F","Mk18 ABR 7.62mm",60000],
                        ["LMG_Mk200_F","Mk200 6.5mm",200000],
	                    ["srifle_LRR_F","M320 LRR .408",500000],					
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],
                        ["NVGoggles",nil,2000],
                        ["HandGrenade_Stone","Flashbang",0],
                        ["SmokeShellGreen","Teargas",0],
                        ["Chemlight_red",nil,500],
                        ["Chemlight_yellow",nil,500],
                        ["Chemlight_green",nil,0],
                        ["Chemlight_blue",nil,0],
                        ["Rangefinder",nil,0],
                        ["MineDetector",nil,0],
						["acc_flashlight",nil,500],
                        ["optic_Hamr",nil,1000],
                        ["optic_Holosight",nil,3600],
                        ["muzzle_snds_H",nil,1000],
                        ["muzzle_snds_H_MG",nil,1000],
                        ["muzzle_snds_L",nil,1000],
                        ["muzzle_snds_M",nil,1000],
                        ["optic_ACO_grn",nil,500],
                        ["optic_ACO_grn_smg",nil,200],
                        ["optic_MRCO",nil,200],
                        ["optic_MRD",nil,250],
                        ["optic_NVS",nil,2000],
                        ["optic_SOS",nil,2500],
                        ["Smokeshell","Smoke Shell (White)",50],
                        ["SmokeShellRed","Smoke Shell (Red)",150],
                        ["SmokeShellYellow","Smoke Shell (Yellow)",150],
                        ["UGL_FlareRed_F",nil,200],
                        ["UGL_FlareYellow_F",nil,200],
                        ["UGL_FlareWhite_F",nil,200],
                        ["6Rnd_GreenSignal_F","6Rnd Signal Cylinder (Green)",150],
                        ["6Rnd_RedSignal_F","6Rnd Signal Cylinder (Red)",150],
                        ["20Rnd_556x45_UW_mag","5.56mm 20Rnd Dual Purpose Mag",2000],
                        ["20Rnd_762x51_Mag","7.62mm 20Rnd Mag",5000],
                        ["30Rnd_556x45_Stanag","5.56mm 30rnd STANAG Mag",2500],
                        ["30Rnd_556x45_Stanag_Tracer_Yellow","5.56mm 30rnd Tracer (Yellow) Mag",2500],
                        ["30Rnd_65x39_caseless_green","6.5mm 30Rnd Caseless Mag ",1750],
                        ["30Rnd_65x39_caseless_mag","6.5mm 30Rnd STANAG Mag",1750],
                        ["30Rnd_9x21_Mag","9mm 30Rnd Mag",750],
						["30Rnd_65x39_caseless_mag_Tracer",nil,200],
						["16Rnd_9x21_Mag",nil,50],
						["30Rnd_45ACP_Mag_SMG_01","Taser Rifle Magazine",125],
					    ["200Rnd_65x39_cased_Box","6.5mm 200Rnd Belt Case",10000],
                        ["200Rnd_65x39_cased_Box_Tracer","6.5mm 200Rnd Tracer (Green) Belt Case",10000],
	                    ["7Rnd_408_Mag",nil,5000],					
                        ["SatchelCharge_Remote_Mag","Explosive Satchel",10000]
					]
				];
			};
			default
			{
				["Rookie Cop Shop",
					[
						["hgun_P07_snds_F","Stun Pistol",2000],
						["SMG_01_F","Taser Rifle",20000],
                        ["hgun_Pistol_Signal_F","Flare Gun",1000],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000],
                        ["Chemlight_red",nil,500],
                        ["Chemlight_yellow",nil,500],
                        ["Chemlight_green",nil,500],
                        ["Chemlight_blue",nil,500],
                        ["Rangefinder",nil,5000],
                        ["optic_Hamr","RCO",4100],
                        ["optic_Holosight","Holosight",2500],
                        ["Smokeshell","Smoke Shell (White)",150],
                        ["SmokeShellRed","Smoke Shell (Red)",150],
                        ["6Rnd_GreenSignal_F","6Rnd Signal Cylinder (Green)",150],
                        ["6Rnd_RedSignal_F","6Rnd Signal Cylinder (Red)",150],
						["16Rnd_9x21_Mag",nil,50],
						["30Rnd_45ACP_Mag_SMG_01","Taser Rifle Magazine",125]
					]
				];
			};
		};
	};


	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civ!"};
			case (!license_civ_rebel): {"You don't have a Rebel training license!"};
			default
			{
				["Mohammed's Jihadi Shop",
					[
						["arifle_TRG21_F",nil,35000],
						["arifle_Katiba_F",nil,30000],
						["srifle_DMR_01_F",nil,50000],
						["arifle_TRG21_GL_F",nil,40000],
						["UGL_FlareGreen_F",nil,1000],
						["UGL_FlareRed_F",nil,1000],
						["UGL_FlareYellow_F",nil,1000],
						["UGL_FlareWhite_F",nil,1000],
						["arifle_SDAR_F",nil,20000],
						["optic_ACO_grn",nil,3500],
						["optic_Holosight",nil,3600],
						["acc_flashlight",nil,1000],
						["optic_Hamr",nil,7500],
						["30Rnd_9x21_Mag",nil,200],
						["30Rnd_556x45_Stanag",nil,300],
						["10Rnd_762x51_Mag",nil,500],
						["30Rnd_65x39_caseless_green",nil,275],
						["20Rnd_556x45_UW_mag",nil,325],
						["SmokeShell",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],
						["1Rnd_SmokeGreen_Grenade_shell",nil,300],
						["arifle_Mk20C_plain_F",nil,50000],
						["16Rnd_9x21_Mag",nil,25],
						["SMG_02_F",nil,35000],
						["hgun_PDW2000_F",nil,12500],
						["srifle_LRR_F",nil,1200000],
					    ["7Rnd_408_Mag",nil,100000],
					    ["LMG_Mk200_F",nil,1000000],
					    ["200Rnd_65x39_cased_Box_Tracer",nil,80000],
					    ["200Rnd_65x39_cased_Box",nil,100000],
						["srifle_EBR_F",nil,500000],
						["20Rnd_762x51_Mag",nil,9000]
					]
				];
			};
		};
	};
	
	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civ!"};
			case (!license_civ_gun): {"You don't have a Firearms license!"};
			default
			{
				["Billy Joe's Firearms",
					[
						["hgun_Rook40_F",nil,6500],
						["hgun_Pistol_heavy_02_F",nil,9850],
						["hgun_ACPC2_F",nil,11500],
						["V_Rangemaster_belt",nil,4900],
						["16Rnd_9x21_Mag",nil,25],
						["9Rnd_45ACP_Mag",nil,45],
						["6Rnd_45ACP_Cylinder",nil,50],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};
		};
	};
	
	case "donator":
	{
		switch(true) do
		{
			case (__GETC__(life_donator) == 0): {"You are not a donator!"};
			case (__GETC__(life_donator) == 1):
			{
				["OGC Donator Shop Tier 1",
					[
						["arifle_TRG21_F",nil,29000],
						["30Rnd_556x45_Stanag_Tracer_Yellow",nil,50],
						["arifle_Mk20C_plain_F",nil,35000],
						["30Rnd_556x45_Stanag",nil,125],
						["hgun_Rook40_F",nil,4000],
						["16Rnd_9x21_Mag",nil,25],
						["SMG_02_F",nil,15000],
						["hgun_PDW2000_F",nil,8500],
						["30Rnd_9x21_Mag",nil,55],
						["hgun_ACPC2_F",nil,5000],
						["9Rnd_45ACP_Mag",nil,25],
						["hgun_Pistol_heavy_02_F",nil,6000],
						["6Rnd_45ACP_Cylinder",nil,40],
						["optic_Holosight",nil,1500],
						["optic_ACO_grn_smg",nil,750],
						["optic_MRCO",nil,5500],
						["ToolKit",nil,2000],
						["itemgps",nil,500],
						["FirstAidKit",nil,100],
						["NVGoggles",nil,500],
						["Chemlight_green",nil,500],
						["Chemlight_red",nil,500],
						["Chemlight_yellow",nil,500],
						["Chemlight_blue",nil,500]
					]
				];
			};

			case (__GETC__(life_donator) == 2):
			{
				["OGC Donator Shop Tier 2",
					[
						["arifle_TRG21_F",nil,25000],
						["30Rnd_556x45_Stanag_Tracer_Yellow",nil,50],
						["arifle_Katiba_F",nil,100000],
						["30Rnd_65x39_caseless_green_mag_Tracer",nil,150],
						["srifle_DMR_01_F",nil,180000],
						["10Rnd_762x51_Mag",nil,1500],
						["20Rnd_762x51_Mag",nil,3000],
						["hgun_Rook40_F",nil,2000],
						["16Rnd_9x21_Mag",nil,25],
						["SMG_02_F",nil,15000],
						["hgun_PDW2000_F",nil,10000],
						["30Rnd_9x21_Mag",nil,55],
						["hgun_ACPC2_F",nil,5000],
						["9Rnd_45ACP_Mag",nil,25],
						["hgun_Pistol_heavy_02_F",nil,4000],
						["6Rnd_45ACP_Cylinder",nil,40],
						["arifle_Mk20C_plain_F",nil,30000],
						["30Rnd_556x45_Stanag",nil,500],
						["optic_Holosight",nil,10000],
						["optic_ACO_grn_smg",nil,5000],
						["optic_MRCO",nil,15000],
						["optic_DMS",nil,25000],
						["optic_Yorris",nil,10000],
						["optic_NVS",nil,30000],
						["muzzle_snds_H",nil,12000],
						["muzzle_snds_L",nil,12000],
						["muzzle_snds_M",nil,12000],
						["muzzle_snds_B",nil,12000],
						["muzzle_snds_acp",nil,12000],
						["ToolKit",nil,2000],
						["itemgps",nil,500],
						["FirstAidKit",nil,250],
						["NVGoggles",nil,500],
						["Rangefinder",nil,1000],
						["MineDetector",nil,1000],
						["SmokeShell",nil,500],
 						["SmokeShellRed",nil,500],
						["SmokeShellYellow",nil,500],
						["SmokeShellPurple",nil,500],
						["SmokeShellOrange",nil,500],
						["Chemlight_green",nil,500],
						["Chemlight_red",nil,500],
						["Chemlight_yellow",nil,500],
						["Chemlight_blue",nil,500]
					]
				];
			};

			case (__GETC__(life_donator) >= 3):
			{
				["OGC Donator Shop Tier 3",
					[
						["srifle_LRR_F",nil,600000],
					    ["7Rnd_408_Mag",nil,10000],
					    ["LMG_Mk200_F",nil,500000],
					    ["200Rnd_65x39_cased_Box_Tracer",nil,6000],
					    ["200Rnd_65x39_cased_Box",nil,10000],
						["srifle_DMR_01_F",nil,150000],
						["10Rnd_762x51_Mag",nil,1500],
						["arifle_TRG21_F",nil,20000],
						["30Rnd_556x45_Stanag_Tracer_Yellow",nil,50],
						["arifle_Katiba_F",nil,95000],
						["30Rnd_65x39_caseless_green",nil,50],
						["srifle_EBR_F",nil,200000],
						["20Rnd_762x51_Mag",nil,1000],
						["hgun_Rook40_F",nil,2000],
						["16Rnd_9x21_Mag",nil,25],
						["SMG_02_F",nil,18000],
						["30Rnd_9x21_Mag",nil,55],
						["hgun_PDW2000_F",nil,6500],
						["30Rnd_65x39_caseless_mag",nil,55],
						["hgun_ACPC2_F",nil,5000],
						["9Rnd_45ACP_Mag",nil,25],
						["hgun_Pistol_heavy_02_F",nil,5000],
						["6Rnd_45ACP_Cylinder",nil,40],
						["arifle_Mk20C_plain_F",nil,30000],
						["30Rnd_556x45_Stanag",nil,125],
						["optic_Holosight",nil,2500],
						["optic_ACO_grn_smg",nil,2500],
						["optic_MRCO",nil,10000],
						["optic_DMS",nil,10000],
						["optic_SOS",nil,20000],
						["optic_Yorris",nil,5500],
						["optic_MRD",nil,7500],
						["optic_NVS",nil,15000],
						["muzzle_snds_H",nil,10000],
						["muzzle_snds_L",nil,10000],
						["muzzle_snds_M",nil,10000],
						["muzzle_snds_B",nil,10000],
						["muzzle_snds_H_MG",nil,10000],
						["muzzle_snds_acp",nil,10000],
						["ToolKit",nil,1000],
						["itemgps",nil,300],
						["FirstAidKit",nil,250],
						["NVGoggles",nil,200],
						["Rangefinder",nil,500],
						["MineDetector",nil,0],
						["SatchelCharge_Remote_Mag",nil,25000],
						["SmokeShell",nil,100],
 						["SmokeShellRed",nil,100],
						["SmokeShellYellow",nil,100],
						["SmokeShellPurple",nil,100],
						["SmokeShellOrange",nil,100],
						["Chemlight_green",nil,100],
						["Chemlight_red",nil,100],
						["Chemlight_yellow",nil,100],
						["Chemlight_blue",nil,100]
					]
				];
			};
		};
	};
	
	case "gang":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			default
			{
				["Hideout Armament",
					[
						["hgun_Rook40_F",nil,1500],
						["hgun_Pistol_heavy_02_F",nil,2500],
						["hgun_ACPC2_F",nil,4500],
						["hgun_PDW2000_F",nil,9500],
						["optic_ACO_grn_smg",nil,950],
						["V_Rangemaster_belt",nil,1900],
						["16Rnd_9x21_Mag",nil,25],
						["9Rnd_45ACP_Mag",nil,45],
						["6Rnd_45ACP_Cylinder",nil,50],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};
		};
	};
	
	case "genstore":
	{
		["Altis General Store",
			[
				["Binocular",nil,150],
				["ItemGPS",nil,100],
				["ToolKit",nil,250],
				["FirstAidKit",nil,150],
				["NVGoggles",nil,2000],
				["Chemlight_red",nil,300],
				["Chemlight_yellow",nil,300],
				["Chemlight_green",nil,300],
				["Chemlight_blue",nil,300]
			]
		];
	};
};
