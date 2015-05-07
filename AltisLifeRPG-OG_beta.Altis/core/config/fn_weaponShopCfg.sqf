#include <macro.h>
/* PER TIER 20% LESS*/

/*
File: fn_weaponShopCfg.sqf
Author: Bryan "Tonic" Boardwine
Description:
Master configuration file for the weapon shops.
*/
// lines commented with price need to be given a price
private["_shop","_copGear","_copWeapons","_copAmmo","_copAttachments","_copThrowables","_cop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.
switch(_shop) do {
    case "med_basic": {
        if (playerSide != independent) then {
            "Only medics can access this store."
        } else {
            ["Paramedic Item Shop",
                [
                    ["ItemRadio",nil,0],
					["ItemMap",nil,40],
                    ["ItemGPS",nil,100],
                    ["Binocular",nil,150],
                    ["ToolKit",nil,250],
                    ["FirstAidKit",nil,150],
                    ["Medikit",nil,500],
                    ["NVGoggles",nil,1200]
                ]
            ];
        };
    };
    case "cop_basic": {
        // Kill execution if not a cop.
        if (playerSide != west) then {
            "Only the police may access this store!"
        } else {
            //Initialise our arrays for gear
            _copGear = [];
            _copWeapons = [];
            _copAmmo = [];
            _copAttachments = [];
            _copThrowables = [];

            // Rank 0  - Public
            _copGear = _copGear + [
				["ItemRadio",nil,0],
                ["ItemGPS",nil,100],
                ["Binocular",nil,150],
                ["NVGoggles",nil,2000],
                ["FirstAidKit",nil,150],
                ["ToolKit",nil,250],
                ["ItemMap",nil,200]
            ];
            _copWeapons = _copWeapons + [
                ["hgun_P07_snds_F","Taser Pistol",1200],
                ["SMG_01_F","Taser Rifle",2500]
            ];
            _copAmmo = _copAmmo + [
                ["16Rnd_9x21_Mag",nil,150],
                ["30Rnd_45ACP_Mag_SMG_01","Taser Rifle Magazine",400]
            ];
            _copThrowables = _copThrowables + [
                ["Smokeshell",nil,500],
                ["Chemlight_red",nil,500],
                ["Chemlight_green",nil,500]
            ];

            // WHITELISTED
            // Rank 1  - Cadet
            if (__GETC__(life_ozCoplvl) >= 1) then {
                _copWeapons = _copWeapons + [
                    ["hgun_PDW2000_F",nil,10000]
                ];
                _copAmmo = _copAmmo + [
                    ["30Rnd_9x21_Mag",nil,1000]
                ];
                _copAttachments = _copAttachments + [
                    ["optic_ACO_grn_smg","(1x) ACO SMG (Green)",700]
                ];
            };

            // DUTY OFFICERS
            // Rank 2  - Probationary Constable
            if (__GETC__(life_ozCoplvl) >= 2) then {
                _copAttachments = _copAttachments + [
                    ["optic_ACO_grn","(1x) ACO (Green)",800],
                    ["optic_MRD","(1x) MRD",700],
                    ["optic_Holosight","(1-2x) MK17 Holosight",1000],
                    ["acc_flashlight",nil,1000]
                ];
            };
            // Rank 3  - Constable
            if (__GETC__(life_ozCoplvl) >= 3) then {
                _copGear = _copGear + [
                    ["Minedetector",nil,1000]
                ];
                _copWeapons = _copWeapons + [
                    ["arifle_MX_F",nil,22000],
                    ["arifle_MXC_F",nil,20000],
                    ["arifle_MXM_F",nil,35000],
                    ["SMG_02_F",nil,15000]
                ];
                _copAmmo = _copAmmo + [
                    ["30Rnd_556x45_Stanag",nil,1500],
                    ["30Rnd_65x39_caseless_mag",nil,2000]
                ];
                _copThrowables = _copThrowables + [
                    ["HandGrenade_Stone","Flashbang Grenade",1500],
                    ["SmokeShellRed",nil,500],
                    ["Chemlight_yellow",nil,500],
                    ["Chemlight_blue",nil,500]
                ];
            };
            // Rank 4  - Senior Constable
            if (__GETC__(life_ozCoplvl) >= 4) then {
                _copWeapons = _copWeapons + [
                    ["arifle_Katiba_F",nil,38000],
                    ["arifle_Mk20C_plain_F",nil,30000]
                ];
                _copAmmo = _copAmmo + [
                    ["30Rnd_65x39_caseless_green",nil,2200]
                ];
                _copAttachments = _copAttachments + [
                    ["optic_MRCO","(1-6x) MRCO",2000],
                    ["optic_Hamr","(10x) RCO",4000],
                    ["optic_Arco","(10x) ARCO",4000],
                    ["muzzle_snds_H",nil,5000],
                    ["muzzle_snds_H_MG",nil,5000],
                    ["muzzle_snds_L",nil,5000],
                    ["muzzle_snds_M",nil,5000],
                    ["muzzle_snds_B",nil,5000]
                ];
            };

            // Rank 5 - Leading Senior Constable
            if (__GETC__(life_ozCoplvl) >= 5) then {
                _copGear = _copGear + [
                    ["Rangefinder",nil,3000]
                ];
                _copWeapons = _copWeapons + [
                    ["arifle_SDAR_F",nil,20000]
                ];
                _copAmmo = _copAmmo + [
                    ["20Rnd_556x45_UW_mag",nil,2500]
                ];
            };

            // NCOs
            // Rank 6  - Sergeant
            if (__GETC__(life_ozCoplvl) >= 6) then {
                _copWeapons = _copWeapons + [
                    ["hgun_Pistol_Signal_F",nil,1500],
                    ["srifle_DMR_01_F",nil,50000]
                ];
                _copAmmo = _copAmmo + [
                    ["6Rnd_GreenSignal_F",nil,500],
                    ["6Rnd_RedSignal_F",nil,500],
                    ["30Rnd_556x45_Stanag_Tracer_Yellow",nil,2000],
                    ["10Rnd_762x54_Mag",nil,3000]
                ];
                _copThrowables = _copThrowables + [
                    ["SmokeShellYellow",nil,500],
                    ["SmokeShellGreen","Tear Gas Grenade",1500]
                ];
            };
            // Rank 7  - Incremental Sergeant
            if (__GETC__(life_ozCoplvl) >= 7) then {
                _copWeapons = _copWeapons + [
                    ["srifle_EBR_F",nil,70000],
                    ["arifle_Katiba_C_F",nil,38000],
                    ["arifle_MX_Black_F",nil,25000],
                    ["arifle_MXC_Black_F",nil,22000],
                    ["arifle_MXM_Black_F",nil,40000],
                    ["hgun_Rook40_F",nil,5000]
                ];
                _copAmmo = _copAmmo + [
                    ["20Rnd_762x51_Mag",nil,3500],
                    ["16Rnd_9x21_Mag",nil,2000]
                ];
                _copAttachments = _copAttachments + [
                    ["optic_SOS","(18-75x) SOS",6000],
                    ["optic_NVS","(10x) NVS",8000]
                ];
            };
            // Rank 8  - Senior Sergeant
            if (__GETC__(life_ozCoplvl) >= 8) then {
                _copWeapons = _copWeapons + [
                    ["srifle_LRR_F",nil,500000]
                ];
                _copAmmo = _copAmmo + [
                    ["7Rnd_408_Mag",nil,5000]
                ];
            };

            // Officers
            // Rank 9 - Captain
            // Rank 10 - Inspector
            if (__GETC__(life_ozCoplvl) >= 10) then {
                _copWeapons = _copWeapons + [
                    ["LMG_Mk200_F",nil,250000]
                ];
                _copAmmo = _copAmmo + [
                    ["200Rnd_65x39_cased_Box",nil,12000],
                    ["200Rnd_65x39_cased_Box_Tracer",nil,15000],
                    ["SatchelCharge_Remote_Mag",nil,100000]
                ];
            };
            // Rank 11 - Chief Inspector

            // Senior Officers
            // Rank 20 - Superintendant, Chief Superintendant, Assistant Commissioner, Deputy Commissioner, Commissioner, Police Minister

            // Return the gear
            _cop = _copGear + _copWeapons + _copAmmo + _copAttachments + _copThrowables;
            ["Altis Police Shop", _cop];
        };
    };
    case "pmc":{
        if (playerSide != civilian) then {
            "Only civilians can access this store."
        } else {
            // PMC rank check
            if (__GETC__(life_ozPmclvl) == 0) then {
                "You must be a member of the PMC"
            } else {
                //Initialise our arrays for gear
				_pmcGear = [
					["ItemRadio",nil,0],
					["ItemGPS",nil,500],
					["Binocular",nil,200],
					["NVGoggles_OPFOR",nil,5000],
					["FirstAidKit",nil,200],
					["ToolKit",nil,2000],
					["Rangefinder",nil,3500],
					["ItemMap",nil,200],
					["ItemRadio",nil,200],
					["ItemCompass",nil,200],
					["ItemWatch",nil,200]
				];
				_pmcWeapons = [
					["hgun_PDW2000_F",nil,17500],
					["SMG_02_F",nil,35000],
					["hgun_Rook40_F",nil,7500]
				];
				_pmcAmmo = [
					["30Rnd_9x21_Mag",nil,200],
					["16Rnd_9x21_Mag",nil,200]
				];
				_pmcAttachments = [
					["optic_ACO_grn",nil,1500],
					["optic_DMS",nil,5000],
					["optic_Holosight",nil,3000],
					["optic_Holosight_smg",nil,1500],
					["optic_MRCO",nil,7500],
					["optic_NVS",nil,7500],
					["optic_SOS",nil,7500],
					["optic_Arco",nil,5000],
					["optic_Hamr",nil,2500],
					["acc_flashlight",nil,500],
					["acc_pointer_IR",nil,3500],
					["muzzle_snds_H",nil,2000],
					["muzzle_snds_L",nil,2000],
					["muzzle_snds_M",nil,2000],
					["muzzle_snds_B",nil,2000],
					["muzzle_snds_acp",nil,2000],
					["muzzle_snds_H_MG",nil,15000]
				];
				_pmcThrowables = [
					["SmokeShell",nil,200],
					["SmokeShellOrange",nil,200],
					["SmokeShellPurple",nil,200],
					["SmokeShellBlue",nil,200],
					["SmokeShellYellow",nil,200],
					["SmokeShellGreen",nil,200],
					["SmokeShellRed",nil,200],
					["Chemlight_green",nil,500],
					["Chemlight_red",nil,500],
					["Chemlight_yellow",nil,500],
					["Chemlight_blue",nil,500]
				];

				if (__GETC__(life_ozPmclvl) >= 2) then {
					_pmcWeapons = _pmcWeapons + [
						["arifle_TRG21_F",nil,50000],
						["arifle_Mk20C_F",nil,50000],
						["hgun_Pistol_heavy_01_F",nil,10000]
					];
					_pmcAmmo = _pmcAmmo + [
						["30Rnd_556x45_Stanag",nil,300],
						["30Rnd_556x45_Stanag_Tracer_Red",nil,300],
						["30Rnd_556x45_Stanag_Tracer_Green",nil,300],
						["30Rnd_556x45_Stanag_Tracer_Yellow",nil,300],
						["11Rnd_45ACP_Mag",nil,300]
					];
				};
				
				if (__GETC__(life_ozPmclvl) >= 3) then {
					_pmcWeapons = _pmcWeapons + [
						["arifle_MXC_Black_F",nil,75000],
						["arifle_Katiba_F",nil,45000],
						["hgun_ACPC2_F",nil,10000],
						["hgun_Pistol_heavy_02_Yorris_F",nil,12500],
						["arifle_MX_Black_F",nil,85000]
					];
					_pmcAmmo = _pmcAmmo + [
						["30Rnd_65x39_caseless_mag",nil,450],
						["30Rnd_65x39_caseless_mag_Tracer",nil,450],
						["30Rnd_65x39_caseless_green",nil,450],
						["30Rnd_65x39_caseless_green_mag_Tracer",nil,450],
						["9Rnd_45ACP_Mag",nil,300],
						["6Rnd_45ACP_Cylinder",nil,500]
					];
				};
				
				if (__GETC__(life_ozPmclvl) >= 4) then {
					_pmcWeapons = _pmcWeapons + [
						["arifle_Mk20_F",nil,50000],
						["arifle_MXM_Black_F",nil,100000],
						["srifle_EBR_F",nil,500000],
						["LMG_Mk200_F",nil,1200000]
					];
					_pmcAmmo = _pmcAmmo + [
						["200Rnd_65x39_cased_Box",nil,100000],
						["200Rnd_65x39_cased_Box_Tracer",nil,100000]
					];
				};
				
				if (__GETC__(life_ozPmclvl) >= 5) then {
					_pmcWeapons = _pmcWeapons + [
						["arifle_MX_GL_Black_F",nil,110000]
					];
					_pmcAmmo = _pmcAmmo + [
						["3Rnd_Smoke_Grenade_shell",nil,150],
						["3Rnd_SmokeRed_Grenade_shell",nil,150],
						["3Rnd_SmokeGreen_Grenade_shell",nil,150],
						["3Rnd_SmokeYellow_Grenade_shell",nil,150],
						["3Rnd_SmokePurple_Grenade_shell",nil,150],
						["3Rnd_SmokeBlue_Grenade_shell",nil,150],
						["3Rnd_SmokeOrange_Grenade_shell",nil,150],
						["20Rnd_762x51_Mag",nil,15000]
					];
					_pmcAttachments = _pmcAttachments + [
						["optic_LRPS",nil,10000]
					];
				};
				
				if (__GETC__(life_ozPmclvl) >= 6) then {
					_pmcWeapons = _pmcWeapons + [
						["arifle_MX_SW_Black_F",nil,850000],
						["srifle_LRR_F",nil,1300000]
					];
					_pmcAmmo = _pmcAmmo + [
						["100Rnd_65x39_caseless_mag",nil,50000],
						["100Rnd_65x39_caseless_mag_Tracer",nil,50000],
						["7Rnd_408_Mag",nil,100000]
					];
				};
				
				// Return the gear
				_pmc = _pmcGear + _pmcWeapons + _pmcAmmo + _pmcAttachments + _pmcThrowables;
				["PMC Armoury", _pmc];
            };
        };
    };
    case "rebel":{
        if (playerSide != civilian) then {
            "Only civilians can access this store."
        } else {
            if (!license_civ_rebel) then {
                "You must have a Rebel Training license to use this store!"
            } else {
                ["Jihadi Weapons Market",
                    [
                        // Gear
                        ["ItemRadio",nil,0],
                        ["Rangefinder",nil,1562],
                        ["MineDetector",nil,1562],
                        ["ToolKit",nil,250],
                        ["FirstAidKit",nil,150],
                        ["Medikit",nil,1000],
                        ["NVGoggles",nil,1500],
                        ["ItemGPS",nil,1000],
                        // Sidearms
                        ["hgun_Pistol_Signal_F","Flare Gun",3000],
                        ["hgun_Rook40_F",nil,6000],
                        ["hgun_PDW2000_F",nil,12500],
                        ["UGL_FlareGreen_F",nil,1000],
                        ["UGL_FlareRed_F",nil,1000],
                        ["UGL_FlareYellow_F",nil,1000],
                        ["UGL_FlareWhite_F",nil,1000],
                        ["16Rnd_9x21_Mag",nil,25],
                        ["30Rnd_9x21_Mag",nil,200],
                        // Rifles
                        ["SMG_02_F",nil,35000],
                        ["arifle_TRG21_F",nil,35000],
                        ["arifle_TRG21_GL_F",nil,40000],
                        ["arifle_Katiba_F",nil,30000],
                        ["srifle_DMR_01_F",nil,50000],
                        ["srifle_EBR_F",nil,500000],
                        ["arifle_Mk20C_plain_F",nil,50000],
                        ["arifle_SDAR_F",nil,20000],
                        ["30Rnd_556x45_Stanag",nil,300],
                        ["10Rnd_762x54_Mag",nil,500],
                        ["30Rnd_65x39_caseless_green",nil,275],
                        ["30Rnd_65x39_caseless_mag",nil,100],
                        ["20Rnd_556x45_UW_mag",nil,325],
                        ["30Rnd_556x45_Stanag",nil,250],
                        ["30Rnd_556x45_Stanag_Tracer_Yellow",nil,300],
                        ["30Rnd_65x39_caseless_green_mag_Tracer",nil,250],
                        ["1Rnd_SmokeGreen_Grenade_shell",nil,300],
                        // Heavy Weapons
                        ["20Rnd_762x51_Mag",nil,9000],
                        ["srifle_LRR_F",nil,1200000],
                        ["LMG_Mk200_F",nil,1000000],
                        ["7Rnd_408_Mag",nil,100000],
                        ["200Rnd_65x39_cased_Box_Tracer",nil,80000],
                        ["200Rnd_65x39_cased_Box",nil,80000],
                        // Attachments - Sights
                        ["optic_ACO_grn",nil,3500],
                        ["optic_ACO_grn_smg",nil,3600],
                        ["optic_Holosight",nil,3600],
                        ["optic_MRCO",nil,30000],
                        ["optic_DMS",nil,25000],
                        ["optic_Yorris",nil,10000],
                        ["optic_MRD",nil,14648],
                        ["optic_NVS",nil,30000],
                        ["optic_SOS",nil,39100],
                        ["optic_Hamr",nil,7500],
                        // Attachments - Silencers
                        ["muzzle_snds_H",nil,12000],
                        ["muzzle_snds_L",nil,12000],
                        ["muzzle_snds_M",nil,12000],
                        ["muzzle_snds_B",nil,12000],
                        ["muzzle_snds_acp",nil,12000],
                        ["muzzle_snds_H_MG",nil,12000],
                        // Attachments - Other
                        ["acc_flashlight",nil,1000],
                        // Throwables
                        ["SmokeShell",nil,500],
                        ["SmokeShellRed",nil,500],
                        ["SmokeShellYellow",nil,500],
                        ["SmokeShellPurple",nil,500],
                        ["SmokeShellOrange",nil,500],
                        ["Chemlight_green",nil,400],
                        ["Chemlight_red",nil,400],
                        ["Chemlight_yellow",nil,400],
                        ["Chemlight_blue",nil,400],
                        ["SatchelCharge_Remote_Mag","Explosive Satchel",500000]
                    ]
                ];
            };
        };
    };
    case "gun": {
        if (playerSide != civilian) then {
            "You are not a civ!"
        } else {
            if (!license_civ_gun) then {
                "You don't have a Firearms license!"
            } else {
                ["Billy Joe's Firearms",
                    [
                        ["hgun_Pistol_Signal_F","Flare Gun",2700],
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
    // ALL PRICES ARE TO BE REBALANCED;
    case "donator": {
        switch(true) do {
            case (__GETC__(life_Ozdonator) == 0): {"You are not a donator!"};
            case (__GETC__(life_Ozdonator) == 1): {
                ["OzzyGaming Donator Shop T1",
                    [
                        // Gear
                        ["ItemRadio",nil,0],
                        ["Rangefinder",nil,1400],
                        ["MineDetector",nil,1400],
                        ["ToolKit",nil,250],
                        ["FirstAidKit",nil,150],
                        ["Medikit",nil,1000],
                        ["NVGoggles",nil,1350],
                        ["ItemGPS",nil,1000],
                        // Pistols
                        ["hgun_Pistol_Signal_F","Flare Gun",2400],
                        ["hgun_Rook40_F",nil,5200],
                        ["hgun_ACPC2_F",nil,9200],
                        ["hgun_PDW2000_F",nil,10000],
                        ["hgun_Pistol_heavy_02_F",nil,7880],
                        ["SMG_02_F",nil,28000],
                        ["9Rnd_45ACP_Mag",nil,36],
                        ["6Rnd_45ACP_Cylinder",nil,40],
                        ["16Rnd_9x21_Mag",nil,20],
                        ["30Rnd_9x21_Mag",nil,160],
                        ["UGL_FlareGreen_F",nil,800],
                        ["UGL_FlareRed_F",nil,800],
                        // Rifles
                        ["arifle_TRG21_F",nil,32000],
                        ["arifle_Mk20C_plain_F",nil,40000],
                        ["30Rnd_556x45_Stanag",nil,240],
                        ["30Rnd_556x45_Stanag_Tracer_Yellow",nil,240],
                        // Heavy Weapons
                        ["srifle_LRR_F",nil,960000],
                        ["7Rnd_408_Mag",nil,80000],
                        // Sights
                        ["optic_Holosight",nil,2880],
                        ["optic_ACO_grn_smg",nil,2880],
                        ["optic_Hamr",nil,6000],
                        ["optic_MRCO",nil,24000],
                        // Throwables
                        ["Chemlight_green",nil,500],
                        ["Chemlight_red",nil,500],
                        ["Chemlight_yellow",nil,500],
                        ["Chemlight_blue",nil,500]
                    ]
                ];
            };
            case (__GETC__(life_Ozdonator) == 2): {
                ["OzzyGaming Donator Shop T2",
                    [
                        // Gear
                        ["ItemRadio",nil,0],
                        ["Rangefinder",nil,1300],
                        ["MineDetector",nil,1300],
                        ["ToolKit",nil,250],
                        ["FirstAidKit",nil,150],
                        ["Medikit",nil,1000],
                        ["NVGoggles",nil,1150],
                        ["ItemGPS",nil,900],
                        // Pistols
                        ["hgun_Rook40_F",nil,4160],
                        ["hgun_ACPC2_F",nil,7360],
                        ["hgun_Pistol_heavy_02_F",nil,6304],
                        ["SMG_02_F",nil,22400],
                        ["hgun_PDW2000_F",nil,8000],
                        ["9Rnd_45ACP_Mag",nil,29],
                        ["6Rnd_45ACP_Cylinder",nil,32],
                        ["16Rnd_9x21_Mag",nil,32],
                        ["30Rnd_9x21_Mag",nil,128],
                        // Rifles
                        ["arifle_TRG21_F",nil,22400],
                        ["arifle_Katiba_F",nil,19200],
                        ["srifle_DMR_01_F",nil,32000],
                        ["arifle_Mk20C_plain_F",nil,32000],
                        ["30Rnd_556x45_Stanag",nil,192],
                        ["30Rnd_556x45_Stanag_Tracer_Yellow",nil,192],
                        ["30Rnd_65x39_caseless_green_mag_Tracer",nil,150],
                        ["10Rnd_762x54_Mag",nil,320],
                        ["20Rnd_762x51_Mag",nil,5760],
                        // Heavy
                        ["srifle_LRR_F",nil,900000],
                        ["7Rnd_408_Mag",nil,70000],
                        // Sights
                        ["optic_Holosight",nil,2304],
                        ["optic_ACO_grn_smg",nil,2304],
                        ["optic_MRCO",nil,19200],
                        ["optic_DMS",nil,16000],
                        ["optic_Yorris",nil,6400],
                        ["optic_NVS",nil,19200],
                        // Silencers
                        ["muzzle_snds_H",nil,7680],
                        ["muzzle_snds_L",nil,7680],
                        ["muzzle_snds_M",nil,7680],
                        ["muzzle_snds_B",nil,7680],
                        ["muzzle_snds_acp",nil,7680],
                        // Throwables
                        ["SmokeShell",nil,320],
                        ["SmokeShellRed",nil,320],
                        ["SmokeShellYellow",nil,320],
                        ["SmokeShellPurple",nil,320],
                        ["SmokeShellOrange",nil,320],
                        ["Chemlight_green",nil,256],
                        ["Chemlight_red",nil,256],
                        ["Chemlight_yellow",nil,256],
                        ["Chemlight_blue",nil,256],
                        ["SatchelCharge_Remote_Mag","Explosive Satchel",320000]
                    ]
                ];
            };
            case (__GETC__(life_Ozdonator) >= 3):{
                ["OzzyGaming Donator Shop T3",
                    [
                        // Gear
                        ["ItemRadio",nil,0],
                        ["Rangefinder",nil,1100],
                        ["MineDetector",nil,1100],
                        ["ToolKit",nil,250],
                        ["FirstAidKit",nil,150],
                        ["Medikit",nil,1000],
                        ["NVGoggles",nil,1000],
                        ["ItemGPS",nil,800],
                        // Pistols
                        ["hgun_Rook40_F",nil,3328],
                        ["hgun_ACPC2_F",nil,5888],
                        ["hgun_Pistol_heavy_02_F",nil,5888],
                        ["SMG_02_F",nil,17920],
                        ["hgun_PDW2000_F",nil,6400],
                        ["6Rnd_45ACP_Cylinder",nil,26],
                        ["9Rnd_45ACP_Mag",nil,23],
                        ["16Rnd_9x21_Mag",nil,13],
                        ["30Rnd_9x21_Mag",nil,13],
                        // Rifles
                        ["arifle_Katiba_F",nil,15360],
                        ["arifle_TRG21_F",nil,17920],
                        ["srifle_DMR_01_F",nil,25600],
                        ["srifle_EBR_F",nil,256000],
                        ["arifle_Mk20C_plain_F",nil,25600],
                        ["30Rnd_65x39_caseless_green",nil,141],
                        ["30Rnd_556x45_Stanag",nil,125],
                        ["30Rnd_556x45_Stanag_Tracer_Yellow",nil,153],
                        ["30Rnd_65x39_caseless_mag",nil,52],
                        ["10Rnd_762x54_Mag",nil,256],
                        ["20Rnd_762x51_Mag",nil,4608],
                        // Heavy
                        ["srifle_LRR_F",nil,614400],
                        ["LMG_Mk200_F",nil,512000],
                        ["7Rnd_408_Mag",nil,51200],
                        ["200Rnd_65x39_cased_Box_Tracer",nil,40960],
                        ["200Rnd_65x39_cased_Box",nil,40960],
                        // Scopes
                        ["optic_Holosight",nil,1843],
                        ["optic_ACO_grn_smg",nil,1792],
                        ["optic_MRCO",nil,15360],
                        ["optic_DMS",nil,12800],
                        ["optic_SOS",nil,20000],
                        ["optic_Yorris",nil,5120],
                        ["optic_MRD",nil,7500],
                        ["optic_NVS",nil,15360],
                        // Silencers
                        ["muzzle_snds_H",nil,6144],
                        ["muzzle_snds_L",nil,6144],
                        ["muzzle_snds_M",nil,6144],
                        ["muzzle_snds_B",nil,6144],
                        ["muzzle_snds_H_MG",nil,6144],
                        ["muzzle_snds_acp",nil,6144],
                        // Throwables
                        ["SmokeShell",nil,256],
                        ["SmokeShellRed",nil,256],
                        ["SmokeShellYellow",nil,256],
                        ["SmokeShellPurple",nil,256],
                        ["SmokeShellOrange",nil,256],
                        ["Chemlight_green",nil,204],
                        ["Chemlight_red",nil,204],
                        ["Chemlight_yellow",nil,204],
                        ["Chemlight_blue",nil,204]
                        ["SatchelCharge_Remote_Mag",nil,256000],
                    ]
                ];
            };
        };
    };
    case "gang":{
        if (playerSide != civilian) then {
            "Only civilians can access this store."
        } else {
            ["Gang Hideout Armament",
                [
                    ["ItemRadio",nil,0],
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
                    ["10Rnd_762x54_Mag",nil,500],
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
    case "genstore": {
        ["Altis General Store",
            [
                ["ItemRadio",nil,0],
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
