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
            ["Hospital EMS Shop",
                [
                    ["ItemGPS",nil,100],
                    ["Binocular",nil,150],
                    ["ToolKit",nil,250],
                    ["FirstAidKit",nil,150],
                    ["Medikit",nil,500],
                    ["NVGoggles",nil,1200],
                    ["B_FieldPack_ocamo",nil,3000],
                    ["V_RebreatherB",nil,2500],
                    ["G_Diving",nil,250],
                    ["U_B_Wetsuit",nil,1000]
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
                ["ItemGPS",nil,100],
                ["Binocular",nil,150],
                ["NVGoggles",nil,2000],
                ["FirstAidKit",nil,150],
                ["ToolKit",nil,250]
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
                    ["optic_ACO_grn_smg",nil,700]
                ];
            };

            // DUTY OFFICERS
            // Rank 2  - Probationary Constable
            if (__GETC__(life_ozCoplvl) >= 2) then {
                _copWeapons = _copWeapons + [
                    ["hgun_Rook40_F",nil,5000],
                    ["arifle_MX_F",nil,22000]
                ];
                _copAmmo = _copAmmo + [
                    ["16Rnd_9x21_Mag",nil,2000],
                    ["30Rnd_65x39_caseless_mag",nil,2000]
                ];
                _copAttachments = _copAttachments + [
                    ["optic_ACO_grn",nil,800],
                    ["optic_MRD",nil,700],
                    ["optic_Holosight",nil,1000],
                    ["acc_flashlight",nil,1000]
                ];
            };
            // Rank 3  - Constable
            if (__GETC__(life_ozCoplvl) >= 3) then {
                _copGear = _copGear + [
                    ["Minedetector",nil,1000]
                ];
                _copWeapons = _copWeapons + [
                    ["arifle_MXC_F",nil,20000],
                    ["arifle_MXM_F",nil,35000],
                    ["SMG_02_F",nil,15000],
                    ["arifle_Mk20C_plain_F",nil,30000]
                ];
                _copAmmo = _copAmmo + [
                    ["30Rnd_556x45_Stanag",nil,1500]
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
                    ["arifle_Katiba_F",nil,38000]
                ];
                _copAmmo = _copAmmo + [
                    ["30Rnd_65x39_caseless_green",nil,2200]
                ];
                _copAttachments = _copAttachments + [
                    ["optic_MRCO",nil,2000],
                    ["optic_Hamr",nil,4000],
                    ["muzzle_snds_H",nil,5000],
                    ["muzzle_snds_H_MG",nil,5000],
                    ["muzzle_snds_L",nil,5000],
                    ["muzzle_snds_M",nil,5000],
                    ["muzzle_snds_B",nil,5000]
                ];
            };

            // JUNIOR NCO
            // Rank 5 - 
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
                    ["hgun_Pistol_Signal_F",nil,1500]
                ];
                _copAmmo = _copAmmo + [
                    ["6Rnd_GreenSignal_F",nil,500],
                    ["6Rnd_RedSignal_F",nil,500],
                    ["30Rnd_556x45_Stanag_Tracer_Yellow",nil,2000]
                ];
                _copThrowables = _copThrowables + [
                    ["SmokeShellYellow",nil,500],
                    ["SmokeShellGreen","Tear Gas Grenade",1500]
                ];
            };
            // Rank 7  - Senior Sergeant
            if (__GETC__(life_ozCoplvl) >= 7) then {
                _copWeapons = _copWeapons + [
                    ["srifle_DMR_01_F",nil,50000]
                ];
                _copAmmo = _copAmmo + [
                    ["10Rnd_762x51_Mag",nil,3000]
                ];
                _copAttachments = _copAttachments + [
                    ["optic_SOS",nil,6000]
                ];
            };
            // Rank 8  - 
            if (__GETC__(life_ozCoplvl) >= 8) then {
            };

            // JUNIOR OFFICER
            // Rank 9  - 2nd Lieutenant
            if (__GETC__(life_ozCoplvl) >= 9) then {
                _copWeapons = _copWeapons + [
                    ["srifle_EBR_F",nil,70000]
                ];
                _copAmmo = _copAmmo + [
                    ["20Rnd_762x51_Mag",nil,3500]
                ];
            };

            // Officers
            // Rank 10 - 1st Lieutenant
            if (__GETC__(life_ozCoplvl) >= 10) then {
                _copWeapons = _copWeapons + [
                    ["srifle_LRR_F",nil,500000]
                ];
                _copAmmo = _copAmmo + [
                    ["7Rnd_408_Mag",nil,5000]
                ];
                _copAttachments = _copAttachments + [
                    ["optic_NVS",nil,8000]
                ];
            };
            // Rank 11 - Captain
            if (__GETC__(life_ozCoplvl) >= 11) then {
                _copWeapons = _copWeapons + [
                    ["LMG_Mk200_F",nil,250000]
                ];
                _copAmmo = _copAmmo + [
                    ["200Rnd_65x39_cased_Box",nil,12000],
                    ["200Rnd_65x39_cased_Box_Tracer",nil,15000],
                    ["SatchelCharge_Remote_Mag",nil,100000]
                ];
            };
            // Rank 12 - Inspector
            if (__GETC__(life_ozCoplvl) >= 12) then {
            };

            // Senior Officers
            // Rank 20 - Lead Inspector, Deputy Chief, Chief, Dept Commissioner, Commissioner
            if (__GETC__(life_ozCoplvl) >= 20) then {
            };

            // Return the gear
            _cop = _copGear + _copWeapons + _copAmmo + _copThrowables;
            ["Altis Police Shop", _cop];
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
                        ["hgun_Pistol_Signal_F","Flare Gun",3000],
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
                        ["optic_ACO_grn_smg",nil,3600],
                        ["optic_Holosight",nil,3600],
                        ["optic_MRCO",nil,30000],
                        ["optic_DMS",nil,25000],
                        ["optic_Yorris",nil,10000],
                        ["optic_MRD",nil,14648],
                        ["optic_NVS",nil,30000],
                        ["optic_SOS",nil,39100],
                        ["acc_flashlight",nil,1000],
                        ["optic_Hamr",nil,7500],
                        ["30Rnd_9x21_Mag",nil,200],
                        ["30Rnd_556x45_Stanag",nil,300],
                        ["10Rnd_762x51_Mag",nil,500],
                        ["30Rnd_65x39_caseless_green",nil,275],
                        ["30Rnd_65x39_caseless_mag",nil,100],
                        ["20Rnd_556x45_UW_mag",nil,325],
                        ["SmokeShell",nil,100],
                        ["Rangefinder",nil,1562],
                        ["MineDetector",nil,1562],
                        ["ToolKit",nil,250],
                        ["FirstAidKit",nil,150],
                        ["Medikit",nil,1000],
                        ["itemgps",nil,1000],
                        ["1Rnd_SmokeGreen_Grenade_shell",nil,300],
                        ["arifle_Mk20C_plain_F",nil,50000],
                        ["30Rnd_556x45_Stanag",nil,250],
                        ["16Rnd_9x21_Mag",nil,25],
                        ["SMG_02_F",nil,35000],
                        ["hgun_PDW2000_F",nil,12500],
                        ["srifle_LRR_F",nil,1200000],
                        ["7Rnd_408_Mag",nil,100000],
                        ["LMG_Mk200_F",nil,1000000],
                        ["200Rnd_65x39_cased_Box_Tracer",nil,80000],
                        ["200Rnd_65x39_cased_Box",nil,80000],
                        ["srifle_EBR_F",nil,500000],
                        ["20Rnd_762x51_Mag",nil,9000],
                        ["NVGoggles",nil,1500],
                        ["30Rnd_556x45_Stanag_Tracer_Yellow",nil,300],
                        ["30Rnd_65x39_caseless_green_mag_Tracer",nil,250],
                        ["muzzle_snds_H",nil,12000],
                        ["muzzle_snds_L",nil,12000],
                        ["muzzle_snds_M",nil,12000],
                        ["muzzle_snds_B",nil,12000],
                        ["muzzle_snds_acp",nil,12000],
                        ["muzzle_snds_H_MG",nil,12000],
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
                        ["arifle_TRG21_F",nil,32000],
                        ["30Rnd_556x45_Stanag_Tracer_Yellow",nil,240],
                        ["arifle_Mk20C_plain_F",nil,40000],
                        ["30Rnd_556x45_Stanag",nil,240],
                        ["hgun_Rook40_F",nil,5200],
                        ["16Rnd_9x21_Mag",nil,20],
                        ["SMG_02_F",nil,28000],
                        ["hgun_PDW2000_F",nil,10000],
                        ["srifle_LRR_F",nil,960000],
                        ["7Rnd_408_Mag",nil,80000],
                        ["30Rnd_9x21_Mag",nil,160],
                        ["hgun_ACPC2_F",nil,9200],
                        ["9Rnd_45ACP_Mag",nil,36],
                        ["hgun_Pistol_heavy_02_F",nil,7880],
                        ["6Rnd_45ACP_Cylinder",nil,40],
                        ["optic_Holosight",nil,2880],
                        ["optic_ACO_grn_smg",nil,2880],
                        ["optic_Hamr",nil,6000],
                        ["optic_MRCO",nil,24000],
                        ["ToolKit",nil,200],
                        ["itemgps",nil,800],
                        ["FirstAidKit",nil,120],
                        ["NVGoggles",nil,1200],
                        ["Chemlight_green",nil,500],
                        ["Chemlight_red",nil,500],
                        ["Chemlight_yellow",nil,500],
                        ["hgun_Pistol_Signal_F","Flare Gun",2400],
                        ["Chemlight_blue",nil,500]
                    ]
                ];
            };
            case (__GETC__(life_Ozdonator) == 2): {
                ["OzzyGaming Donator Shop T2",
                    [
                        ["arifle_TRG21_F",nil,22400],
                        ["30Rnd_556x45_Stanag_Tracer_Yellow",nil,192],
                        ["arifle_Katiba_F",nil,192000],
                        ["30Rnd_65x39_caseless_green_mag_Tracer",nil,150],
                        ["srifle_DMR_01_F",nil,32000],
                        ["10Rnd_762x51_Mag",nil,320],
                        ["20Rnd_762x51_Mag",nil,5760],
                        ["hgun_Rook40_F",nil,4160],
                        ["16Rnd_9x21_Mag",nil,32],
                        ["SMG_02_F",nil,22400],
                        ["hgun_PDW2000_F",nil,8000],
                        ["30Rnd_9x21_Mag",nil,128],
                        ["hgun_ACPC2_F",nil,7360],
                        ["9Rnd_45ACP_Mag",nil,29],
                        ["hgun_Pistol_heavy_02_F",nil,6304],
                        ["6Rnd_45ACP_Cylinder",nil,32],
                        ["arifle_Mk20C_plain_F",nil,32000],
                        ["30Rnd_556x45_Stanag",nil,192],
                        ["optic_Holosight",nil,2304],
                        ["optic_ACO_grn_smg",nil,2304],
                        ["optic_MRCO",nil,19200],
                        ["optic_DMS",nil,16000],
                        ["optic_Yorris",nil,6400],
                        ["optic_NVS",nil,19200],
                        ["muzzle_snds_H",nil,7680],
                        ["muzzle_snds_L",nil,7680],
                        ["muzzle_snds_M",nil,7680],
                        ["muzzle_snds_B",nil,7680],
                        ["muzzle_snds_acp",nil,7680],
                        ["ToolKit",nil,160],
                        ["itemgps",nil,640],
                        ["FirstAidKit",nil,96],
                        ["NVGoggles",nil,960],
                        ["Rangefinder",nil,1000],
                        ["MineDetector",nil,1000],
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
                        ["srifle_LRR_F",nil,614400],
                        ["7Rnd_408_Mag",nil,51200],
                        ["LMG_Mk200_F",nil,512000],
                        ["200Rnd_65x39_cased_Box_Tracer",nil,40960],
                        ["200Rnd_65x39_cased_Box",nil,40960],
                        ["srifle_DMR_01_F",nil,25600],
                        ["10Rnd_762x51_Mag",nil,256],
                        ["arifle_TRG21_F",nil,17920],
                        ["30Rnd_556x45_Stanag_Tracer_Yellow",nil,153],
                        ["arifle_Katiba_F",nil,15360],
                        ["30Rnd_65x39_caseless_green",nil,141],
                        ["srifle_EBR_F",nil,256000],
                        ["20Rnd_762x51_Mag",nil,4608],
                        ["hgun_Rook40_F",nil,3328],
                        ["16Rnd_9x21_Mag",nil,13],
                        ["SMG_02_F",nil,17920],
                        ["30Rnd_9x21_Mag",nil,13],
                        ["hgun_PDW2000_F",nil,6400],
                        ["30Rnd_65x39_caseless_mag",nil,52],
                        ["hgun_ACPC2_F",nil,5888],
                        ["9Rnd_45ACP_Mag",nil,23],
                        ["hgun_Pistol_heavy_02_F",nil,5888],
                        ["6Rnd_45ACP_Cylinder",nil,26],
                        ["arifle_Mk20C_plain_F",nil,25600],
                        ["30Rnd_556x45_Stanag",nil,125],
                        ["optic_Holosight",nil,1843],
                        ["optic_ACO_grn_smg",nil,1792],
                        ["optic_MRCO",nil,15360],
                        ["optic_DMS",nil,12800],
                        ["optic_SOS",nil,20000],
                        ["optic_Yorris",nil,5120],
                        ["optic_MRD",nil,7500],
                        ["optic_NVS",nil,15360],
                        ["muzzle_snds_H",nil,6144],
                        ["muzzle_snds_L",nil,6144],
                        ["muzzle_snds_M",nil,6144],
                        ["muzzle_snds_B",nil,6144],
                        ["muzzle_snds_H_MG",nil,6144],
                        ["muzzle_snds_acp",nil,6144],
                        ["ToolKit",nil,128],
                        ["itemgps",nil,512],
                        ["FirstAidKit",nil,77],
                        ["NVGoggles",nil,768],
                        ["Rangefinder",nil,800],
                        ["MineDetector",nil,800],
                        ["SatchelCharge_Remote_Mag",nil,256000],
                        ["SmokeShell",nil,256],
                        ["SmokeShellRed",nil,256],
                        ["SmokeShellYellow",nil,256],
                        ["SmokeShellPurple",nil,256],
                        ["SmokeShellOrange",nil,256],
                        ["Chemlight_green",nil,204],
                        ["Chemlight_red",nil,204],
                        ["Chemlight_yellow",nil,204],
                        ["Chemlight_blue",nil,204]
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
    case "genstore": {
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
