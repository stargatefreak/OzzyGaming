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
			// ITEMS
                        ["NVGoggles",nil,2000],
                        ["Binocular",nil,150],
                        //["Rangefinder",nil,2000],
                        ["ItemGPS",nil,100],
                        ["FirstAidKit",nil,150],
                        ["ToolKit",nil,250],
                        //["MineDetector",nil,500],
                        // NON LETHALS
                        ["hgun_P07_snds_F","Stun Pistol",300],
                        ["SMG_01_F","Taser Rifle",2200],
                                ["30Rnd_45ACP_Mag_SMG_01","Taser Rifle Magazine",300],
                        // SIGNALS
                        //["hgun_Pistol_Signal_F","Flare Gun",2700],
                        //        ["6Rnd_GreenSignal_F","6Rnd Signal Cylinder (Green)",300],
                        //        ["6Rnd_RedSignal_F","6Rnd Signal Cylinder (Red)",300],
                        // LETHALS
                                // Pistols
                        ["hgun_P07_F",nil,400],
                             ["16Rnd_9x21_Mag",nil,150],
                                // Assault Rifles
                        ["SMG_02_F",nil,21000],
                        ["hgun_PDW2000_F",nil,19000],
                                ["30Rnd_9x21_Mag","9mm 30Rnd Mag",1200],
                        //["arifle_Mk20C_plain_F",nil,22000],
                        //        ["30Rnd_556x45_Stanag",nil,2900],
                        //        ["30Rnd_556x45_Stanag_Tracer_Yellow",nil,2900],
                        //["arifle_Katiba_F",nil,21000],
                        //        ["30Rnd_65x39_caseless_green",nil,2100],
                        ["arifle_MX_F",nil,21000],
                        ["arifle_MXC_F",nil,22000],
                        //["srifle_DMR_01_F",nil,53000],
                                ["30Rnd_65x39_caseless_mag",nil,2100],
                        //        ["30Rnd_65x39_caseless_mag_Tracer",nil,2100],
                                // Specialist Guns
                        //["arifle_SDAR_F",nil,15000],
                        //        ["20Rnd_556x45_UW_mag",nil,2300],
                                // LMG
                        //["LMG_Mk200_F",nil,220000],
                        //        ["200Rnd_65x39_cased_Box",nil,12000],
                        //        ["200Rnd_65x39_cased_Box_Tracer",nil,12000],
                                // DMRs
                        //["arifle_MXM_F",nil,44000],
                        //        ["10Rnd_762x51_Mag",nil, 4400],
                        //["srifle_EBR_F",nil,63000],
                        //        ["20Rnd_762x51_Mag",nil,5300],
                                // Snipers
                        //["srifle_LRR_F",nil,550000],
                        //        ["7Rnd_408_Mag",nil,6000],                                    
                        // ATTACHMENTS                                        
                        //["optic_Hamr",nil,1400],
                        ["acc_flashlight",nil,900],
                        ["optic_Holosight",nil,4000],
                        ["muzzle_snds_H",nil,1400],
                        //["muzzle_snds_H_MG",nil,1400],
                        ["muzzle_snds_L",nil,1400],
                        //["muzzle_snds_M",nil,1400],
                        //["muzzle_snds_B",nil,1400],
                        ["optic_ACO_grn",nil,900],
                        ["optic_ACO_grn_smg",nil,600],
                        ["optic_MRCO",nil,600],
                        ["optic_MRD",nil,600],
                        //["optic_NVS",nil,2500],
                        //["optic_SOS",nil,4000],
                        // THROWABLES
                        //["HandGrenade_Stone","Flashbang",500],
                        ["SmokeShellGreen","Teargas",1000],
                        ["Chemlight_red",nil,500],
                        ["Chemlight_yellow",nil,500],
                        ["Chemlight_green",nil,500],
                        ["Chemlight_blue",nil,500],
                        ["Smokeshell",nil,200],
                        ["SmokeShellRed",nil,200],
                        ["SmokeShellYellow",nil,200]
                        //["SatchelCharge_Remote_Mag","Explosive Satchel",10000]
					]
				];
			};
			case (__GETC__(life_coplevel) == 3): 
			{
				["Patrol Officer",
					[
			// ITEMS
                        ["NVGoggles",nil,2000],
                        ["Binocular",nil,150],
                        //["Rangefinder",nil,2000],
                        ["ItemGPS",nil,100],
                        ["FirstAidKit",nil,150],
                        ["ToolKit",nil,250],
                        //["MineDetector",nil,500],
                        // NON LETHALS
                        ["hgun_P07_snds_F","Stun Pistol",250],
                        ["SMG_01_F","Taser Rifle",2100],
                                ["30Rnd_45ACP_Mag_SMG_01","Taser Rifle Magazine",200],
                        // SIGNALS
                        ["hgun_Pistol_Signal_F","Flare Gun",2600],
                                ["6Rnd_GreenSignal_F","6Rnd Signal Cylinder (Green)",200],
                                ["6Rnd_RedSignal_F","6Rnd Signal Cylinder (Red)",200],
                        // LETHALS
                                // Pistols
                        ["hgun_P07_F",nil,300],
                             ["16Rnd_9x21_Mag",nil,100],
                                // Assault Rifles
                        ["SMG_02_F",nil,20000],
                        ["hgun_PDW2000_F",nil,18000],
                                ["30Rnd_9x21_Mag","9mm 30Rnd Mag",1100],
                        ["arifle_Mk20C_plain_F",nil,21000],
                                ["30Rnd_556x45_Stanag",nil,2800],
                                ["30Rnd_556x45_Stanag_Tracer_Yellow",nil,2800],
                        ["arifle_Katiba_F",nil,20000],
                                ["30Rnd_65x39_caseless_green",nil,2000],
                        ["arifle_MX_F",nil,20000],
                        ["arifle_MXC_F",nil,21000],
                        //["srifle_DMR_01_F",nil,53000],
                                ["30Rnd_65x39_caseless_mag",nil,2000],
                                ["30Rnd_65x39_caseless_mag_Tracer",nil,2000],
                                // Specialist Guns
                        ["arifle_SDAR_F",nil,15000],
                                ["20Rnd_556x45_UW_mag",nil,2300],
                                // LMG
                        //["LMG_Mk200_F",nil,220000],
                        //        ["200Rnd_65x39_cased_Box",nil,12000],
                        //        ["200Rnd_65x39_cased_Box_Tracer",nil,12000],
                                // DMRs
                        ["arifle_MXM_F",nil,43000],
                                ["10Rnd_762x51_Mag",nil, 4300],
                        //["srifle_EBR_F",nil,63000],
                        //        ["20Rnd_762x51_Mag",nil,5300],
                                // Snipers
                        //["srifle_LRR_F",nil,550000],
                        //        ["7Rnd_408_Mag",nil,6000],                                    
                        // ATTACHMENTS                                        
                        ["optic_Hamr",nil,1300],
                        ["acc_flashlight",nil,800],
                        ["optic_Holosight",nil,3900],
                        ["muzzle_snds_H",nil,1300],
                        ["muzzle_snds_H_MG",nil,1300],
                        ["muzzle_snds_L",nil,1300],
                        ["muzzle_snds_M",nil,1300],
                        ["muzzle_snds_B",nil,1300],
                        ["optic_ACO_grn",nil,800],
                        ["optic_ACO_grn_smg",nil,500],
                        ["optic_MRCO",nil,500],
                        ["optic_MRD",nil,500],
                        ["optic_NVS",nil,2400],
                        ["optic_SOS",nil,4000],
                        // THROWABLES
                        ["HandGrenade_Stone","Flashbang",500],
                        ["SmokeShellGreen","Teargas",1000],
                        ["Chemlight_red",nil,500],
                        ["Chemlight_yellow",nil,500],
                        ["Chemlight_green",nil,500],
                        ["Chemlight_blue",nil,500],
                        ["Smokeshell",nil,200],
                        ["SmokeShellRed",nil,200],
                        ["SmokeShellYellow",nil,200]
                        //["SatchelCharge_Remote_Mag","Explosive Satchel",10000]
					]
				];
			};
			case (__GETC__(life_coplevel) == 4): 
			{
				["Air Patrol Shop",
					[
			// ITEMS
                        ["NVGoggles",nil,2000],
                        ["Binocular",nil,150],
                        //["Rangefinder",nil,2000],
                        ["ItemGPS",nil,100],
                        ["FirstAidKit",nil,150],
                        ["ToolKit",nil,250],
                        //["MineDetector",nil,500],
                        // NON LETHALS
                        ["hgun_P07_snds_F","Stun Pistol",250],
                        ["SMG_01_F","Taser Rifle",2100],
                                ["30Rnd_45ACP_Mag_SMG_01","Taser Rifle Magazine",200],
                        // SIGNALS
                        ["hgun_Pistol_Signal_F","Flare Gun",2600],
                                ["6Rnd_GreenSignal_F","6Rnd Signal Cylinder (Green)",200],
                                ["6Rnd_RedSignal_F","6Rnd Signal Cylinder (Red)",200],
                        // LETHALS
                                // Pistols
                        ["hgun_P07_F",nil,300],
                             ["16Rnd_9x21_Mag",nil,100],
                                // Assault Rifles
                        ["SMG_02_F",nil,19000],
                        ["hgun_PDW2000_F",nil,17000],
                                ["30Rnd_9x21_Mag","9mm 30Rnd Mag",1000],
                        ["arifle_Mk20C_plain_F",nil,27000],
                                ["30Rnd_556x45_Stanag",nil,2700],
                                ["30Rnd_556x45_Stanag_Tracer_Yellow",nil,2700],
                        ["arifle_Katiba_F",nil,19000],
                                ["30Rnd_65x39_caseless_green",nil,1900],
                        ["arifle_MX_F",nil,19000],
                        ["arifle_MXC_F",nil,22000],
                        ["srifle_DMR_01_F",nil,52000],
                                ["30Rnd_65x39_caseless_mag",nil,1900],
                                ["30Rnd_65x39_caseless_mag_Tracer",nil,1900],
                                // Specialist Guns
                        ["arifle_SDAR_F",nil,14000],
                                ["20Rnd_556x45_UW_mag",nil,2200],
                                // LMG
                        //["LMG_Mk200_F",nil,220000],
                        //        ["200Rnd_65x39_cased_Box",nil,12000],
                        //        ["200Rnd_65x39_cased_Box_Tracer",nil,12000],
                                // DMRs
                        ["arifle_MXM_F",nil,42000],
                                ["10Rnd_762x51_Mag",nil, 4200],
                        ["srifle_EBR_F",nil,62000],
                                ["20Rnd_762x51_Mag",nil,5200],
                                // Snipers
                        ["srifle_LRR_F",nil,550000],
                                ["7Rnd_408_Mag",nil,6000],                                    
                        // ATTACHMENTS                                        
                        ["optic_Hamr",nil,1200],
                        ["acc_flashlight",nil,700],
                        ["optic_Holosight",nil,3800],
                        ["muzzle_snds_H",nil,1200],
                        ["muzzle_snds_H_MG",nil,1200],
                        ["muzzle_snds_L",nil,1200],
                        ["muzzle_snds_M",nil,1200],
                        ["muzzle_snds_B",nil,1200],
                        ["optic_ACO_grn",nil,700],
                        ["optic_ACO_grn_smg",nil,400],
                        ["optic_MRCO",nil,400],
                        ["optic_MRD",nil,400],
                        ["optic_NVS",nil,2300],
                        ["optic_SOS",nil,4000],
                        // THROWABLES
                        ["HandGrenade_Stone","Flashbang",300],
                        ["SmokeShellGreen","Teargas",800],
                        ["Chemlight_red",nil,500],
                        ["Chemlight_yellow",nil,500],
                        ["Chemlight_green",nil,500],
                        ["Chemlight_blue",nil,500],
                        ["Smokeshell",nil,200],
                        ["SmokeShellRed",nil,200],
                        ["SmokeShellYellow",nil,200]
                        //["SatchelCharge_Remote_Mag","Explosive Satchel",10000]
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
                        // ITEMS
                        ["NVGoggles",nil,2000],
                        ["Binocular",nil,150],
                        ["Rangefinder",nil,2000],
                        ["ItemGPS",nil,100],
                        ["FirstAidKit",nil,150],
                        ["ToolKit",nil,250],
                        ["MineDetector",nil,500],
                        // NON LETHALS
                        ["hgun_P07_snds_F","Stun Pistol",200],
                        ["SMG_01_F","Taser Rifle",2000],
                                ["30Rnd_45ACP_Mag_SMG_01","Taser Rifle Magazine",150],
                        // SIGNALS
                        ["hgun_Pistol_Signal_F","Flare Gun",2500],
                                ["6Rnd_GreenSignal_F","6Rnd Signal Cylinder (Green)",150],
                                ["6Rnd_RedSignal_F","6Rnd Signal Cylinder (Red)",150],
                        // LETHALS
                                // Pistols
                        ["hgun_P07_F",nil,250],
                             ["16Rnd_9x21_Mag",nil,60],
                                // Assault Rifles
                        ["SMG_02_F",nil,18000],
                        ["hgun_PDW2000_F",nil,16000],
                                ["30Rnd_9x21_Mag","9mm 30Rnd Mag",850],
                        ["arifle_Mk20C_plain_F",nil,26000],
                                ["30Rnd_556x45_Stanag",nil,2600],
                                ["30Rnd_556x45_Stanag_Tracer_Yellow",nil,2600],
                        ["arifle_Katiba_F",nil,18000],
                                ["30Rnd_65x39_caseless_green",nil,1750],
                        ["arifle_MX_F",nil,17800],
                        ["arifle_MXC_F",nil,21000],
                        ["srifle_DMR_01_F",nil,51000],
                                ["30Rnd_65x39_caseless_mag",nil,1750],
                                ["30Rnd_65x39_caseless_mag_Tracer",nil,1750],
                                // Specialist Guns
                        ["arifle_SDAR_F",nil,13000],
                                ["20Rnd_556x45_UW_mag",nil,2100],
                                // LMG
                        ["LMG_Mk200_F",nil,210000],
                                ["200Rnd_65x39_cased_Box",nil,11000],
                                ["200Rnd_65x39_cased_Box_Tracer",nil,11000],
                                // DMRs
                        ["arifle_MXM_F",nil,41000],
                                ["10Rnd_762x51_Mag",nil, 4100],
                        ["srifle_EBR_F",nil,61000],
                                ["20Rnd_762x51_Mag",nil,5100],
                                // Snipers
                        ["srifle_LRR_F",nil,510000],
                                ["7Rnd_408_Mag",nil,5100],                                    
                        // ATTACHMENTS                                        
                        ["optic_Hamr",nil,1100],
                        ["acc_flashlight",nil,600],
                        ["optic_Holosight",nil,3700],
                        ["muzzle_snds_H",nil,1100],
                        ["muzzle_snds_H_MG",nil,1100],
                        ["muzzle_snds_L",nil,1100],
                        ["muzzle_snds_M",nil,1100],
                        ["muzzle_snds_B",nil,1100],
                        ["optic_ACO_grn",nil,550],
                        ["optic_ACO_grn_smg",nil,300],
                        ["optic_MRCO",nil,300],
                        ["optic_MRD",nil,300],
                        ["optic_NVS",nil,2200],
                        ["optic_SOS",nil,3000],
                        // THROWABLES
                        ["HandGrenade_Stone","Flashbang",250],
                        ["SmokeShellGreen","Teargas",700],
                        ["Chemlight_red",nil,500],
                        ["Chemlight_yellow",nil,500],
                        ["Chemlight_green",nil,500],
                        ["Chemlight_blue",nil,500],
                        ["Smokeshell",nil,200],
                        ["SmokeShellRed",nil,200],
                        ["SmokeShellYellow",nil,200]
                        //["SatchelCharge_Remote_Mag","Explosive Satchel",10000]
                                        ]
                                ];
                        };
                        case (__GETC__(life_coplevel) >= 6): 
                        {
                                ["Anti-Terror Task Force Shop",
                                        [
                        // ITEMS
                        ["NVGoggles",nil,2000],
                        ["Binocular",nil,150],
                        ["Rangefinder",nil,2000],
                        ["ItemGPS",nil,100],
                        ["FirstAidKit",nil,150],
                        ["ToolKit",nil,250],
                        ["MineDetector",nil,500],
                        // NON LETHALS
                        ["hgun_P07_snds_F","Stun Pistol",200],
                        ["SMG_01_F","Taser Rifle",2000],
                                ["30Rnd_45ACP_Mag_SMG_01","Taser Rifle Magazine",150],
                        // SIGNALS
                        ["hgun_Pistol_Signal_F","Flare Gun",2500],
                                ["6Rnd_GreenSignal_F","6Rnd Signal Cylinder (Green)",150],
                                ["6Rnd_RedSignal_F","6Rnd Signal Cylinder (Red)",150],
                        // LETHALS
                                // Pistols
                        ["hgun_P07_F",nil,200],
                             ["16Rnd_9x21_Mag",nil,50],
                                // Assault Rifles
                        ["SMG_02_F",nil,17500],
                        ["hgun_PDW2000_F",nil,15000],
                                ["30Rnd_9x21_Mag","9mm 30Rnd Mag",750],
                        ["arifle_Mk20C_plain_F",nil,25000],
                                ["30Rnd_556x45_Stanag",nil,2500],
                                ["30Rnd_556x45_Stanag_Tracer_Yellow",nil,2500],
                        ["arifle_Katiba_F",nil,17500],
                                ["30Rnd_65x39_caseless_green",nil,1700],
                        ["arifle_MX_F",nil,17500],
                        ["arifle_MXC_F",nil,20000],
                        ["srifle_DMR_01_F",nil,50000],
                                ["30Rnd_65x39_caseless_mag",nil,1700],
                                ["30Rnd_65x39_caseless_mag_Tracer",nil,1700],
                                // Specialist Guns
                        ["arifle_SDAR_F",nil,12500],
                                ["20Rnd_556x45_UW_mag",nil,2000],
                                // LMG
                        ["LMG_Mk200_F",nil,200000],
                                ["200Rnd_65x39_cased_Box",nil,10000],
                                ["200Rnd_65x39_cased_Box_Tracer",nil,10000],
                                // DMRs
                        ["arifle_MXM_F",nil,40000],
                                ["10Rnd_762x51_Mag",nil, 4000],
                        ["srifle_EBR_F",nil,60000],
                                ["20Rnd_762x51_Mag",nil,5000],
                                // Snipers
                        ["srifle_LRR_F",nil,500000],
                                ["7Rnd_408_Mag",nil,5000],                                    
                        // ATTACHMENTS                                        
                        ["optic_Hamr",nil,1000],
                        ["acc_flashlight",nil,500],
                        ["optic_Holosight",nil,3600],
                        ["muzzle_snds_H",nil,1000],
                        ["muzzle_snds_H_MG",nil,1000],
                        ["muzzle_snds_L",nil,1000],
                        ["muzzle_snds_M",nil,1000],
                        ["muzzle_snds_B",nil,1000],
                        ["optic_ACO_grn",nil,500],
                        ["optic_ACO_grn_smg",nil,200],
                        ["optic_MRCO",nil,200],
                        ["optic_MRD",nil,250],
                        ["optic_NVS",nil,2000],
                        ["optic_SOS",nil,2500],
                        // THROWABLES
                        ["HandGrenade_Stone","Flashbang",200],
                        ["SmokeShellGreen","Teargas",600],
                        ["Chemlight_red",nil,500],
                        ["Chemlight_yellow",nil,500],
                        ["Chemlight_green",nil,500],
                        ["Chemlight_blue",nil,500],
                        ["Smokeshell",nil,150],
                        ["SmokeShellRed",nil,150],
                        ["SmokeShellYellow",nil,150],
                        ["SatchelCharge_Remote_Mag","Explosive Satchel",10000]
                        // UNUSED ??
                        //["UGL_FlareRed_F",nil,200],
                        //["UGL_FlareYellow_F",nil,200],
                        //["UGL_FlareWhite_F",nil,200]
					]
				];
			};
			default
			{
				["Rookie Cop Shop",
					[
                        // ITEMS
                        ["NVGoggles",nil,2000],
                        ["Binocular",nil,200],
                        //["Rangefinder",nil,2000],
                        ["ItemGPS",nil,100],
                        ["FirstAidKit",nil,200],
                        ["ToolKit",nil,300],
                        //["MineDetector",nil,500],
                        // NON LETHALS
                        ["hgun_P07_snds_F","Stun Pistol",350],
                        ["SMG_01_F","Taser Rifle",2500],
                                ["30Rnd_45ACP_Mag_SMG_01","Taser Rifle Magazine",400],
                        // SIGNALS
                        //["hgun_Pistol_Signal_F","Flare Gun",2700],
                        //        ["6Rnd_GreenSignal_F","6Rnd Signal Cylinder (Green)",300],
                        //        ["6Rnd_RedSignal_F","6Rnd Signal Cylinder (Red)",300],
                        // LETHALS
                                // Pistols
                        //["hgun_P07_F",nil,400],
                       ["16Rnd_9x21_Mag",nil,150],
                                // Assault Rifles
                        //["SMG_02_F",nil,21000],
                        //["hgun_PDW2000_F",nil,19000],
                        //        ["30Rnd_9x21_Mag","9mm 30Rnd Mag",1200],
                        //["arifle_Mk20C_plain_F",nil,22000],
                        //        ["30Rnd_556x45_Stanag",nil,2900],
                        //        ["30Rnd_556x45_Stanag_Tracer_Yellow",nil,2900],
                        //["arifle_Katiba_F",nil,21000],
                        //        ["30Rnd_65x39_caseless_green",nil,2100],
                        //["arifle_MX_F",nil,21000],
                        //["arifle_MXC_F",nil,22000],
                        //["srifle_DMR_01_F",nil,53000],
                        //        ["30Rnd_65x39_caseless_mag",nil,2100],
                        //        ["30Rnd_65x39_caseless_mag_Tracer",nil,2100],
                                // Specialist Guns
                        //["arifle_SDAR_F",nil,15000],
                        //        ["20Rnd_556x45_UW_mag",nil,2300],
                                // LMG
                        //["LMG_Mk200_F",nil,220000],
                        //        ["200Rnd_65x39_cased_Box",nil,12000],
                        //        ["200Rnd_65x39_cased_Box_Tracer",nil,12000],
                                // DMRs
                        //["arifle_MXM_F",nil,44000],
                        //        ["10Rnd_762x51_Mag",nil, 4400],
                        //["srifle_EBR_F",nil,63000],
                        //        ["20Rnd_762x51_Mag",nil,5300],
                                // Snipers
                        //["srifle_LRR_F",nil,550000],
                        //        ["7Rnd_408_Mag",nil,6000],                                    
                        // ATTACHMENTS                                        
                        //["optic_Hamr",nil,1400],
                        //["acc_flashlight",nil,900],
                        //["optic_Holosight",nil,4000],
                        //["muzzle_snds_H",nil,1400],
                        //["muzzle_snds_H_MG",nil,1400],
                        //["muzzle_snds_L",nil,1400],
                        //["muzzle_snds_M",nil,1400],
                        //["muzzle_snds_B",nil,1400],
                        //["optic_ACO_grn",nil,900],
                        //["optic_ACO_grn_smg",nil,600],
                        //["optic_MRCO",nil,600],
                        //["optic_MRD",nil,600],
                        //["optic_NVS",nil,2500],
                        //["optic_SOS",nil,4000],
                        // THROWABLES
                        //["HandGrenade_Stone","Flashbang",1000],
                        //["SmokeShellGreen","Teargas",1000],
                        ["Chemlight_red",nil,500],
                        //["Chemlight_yellow",nil,500],
                        ["Chemlight_green",nil,500],
                        //["Chemlight_blue",nil,500],
                        ["Smokeshell",nil,500]
                        //["SmokeShellRed",nil,200],
                        //["SmokeShellYellow",nil,200]
                        //["SatchelCharge_Remote_Mag","Explosive Satchel",10000]
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
				["Millers's Jihadi Shop",
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
						["SatchelCharge_Remote_Mag","Explosive Satchel"50000]
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
Status API Training Shop Blog About
© 2014 GitHub, Inc. Terms Privacy Security Contact
