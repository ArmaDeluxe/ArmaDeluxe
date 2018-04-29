class WeaponShops {
    class gun {
        name = "Legal Gun Store";
        side = "civ";
        license = "gun";
        level[] = { "", "", -1, "" };
        items[] = {
            { "hgun_Pistol_heavy_01_F", "", 1500, -1 },
            { "hgun_ACPC2_F", "", 1150, -1 },
            { "JM_Taserb_26", "", 3000, -1 },
			{ "hgun_P07_khk_F", "", 1600, -1 },
			{ "hgun_P07_F", "", 1600, -1 },,
			{ "hgun_Pistol_01_F", "", 950, -1 },
            { "hgun_Rook40_F", "", 2010, -1 },
            { "hgun_Pistol_heavy_02_F", "", 2650, -1 },
            { "hlc_smg_mp5k_PDW", "", 17500, -1 },
            { "hgun_mas_mp7_F", "", 17500, -1 }
        };
        mags[] = {
            { "11Rnd_45ACP_Mag", "", 19 },
			{ "9Rnd_45ACP_Mag", "", 19 },
            { "JM_26_Cartridge", "", 25 },
			{ "10Rnd_9x21_Mag", "", 15 },
            { "16Rnd_9x21_Mag", "", 19 },
            { "hlc_30Rnd_9x19_B_MP5", "", 25, -1 },
            { "40Rnd_mas_46x30_Mag", "", 25, -1 },
            { "6Rnd_45ACP_Cylinder", "", 25 }
        };
        accs[] = {
            { "optic_Aco_smg", "", 120 },
            { "optic_ACO_grn_smg", "", 120 }
        };
    };

    class rebelar {
        name = "Blackmarket Weapons Dealer";
        side = "civ";
        license = "rebel";
        level[] = { "", "", -1, "" };
        items[] = {
            //All AR variants
            { "arifle_Katiba_F", "", 22000, -1 },
            { "SMA_ACRREMMOECQB", "", 28000, -1 },
            { "arifle_mas_mp40", "", 15500, -1 },
		    { "arifle_mas_ppsh", "", 25000, -1 },
		    { "arifle_mas_l119c_d", "", 20000, -1 },
            { "arifle_mas_l119_d", "", 22500, -1 },
            { "arifle_mas_ak_74m_sf", "", 23000, -1 },
		    { "arifle_mas_akms", "", 24000, -1 },
            { "arifle_mas_asval", "", 20000, -1 },
	        { "hlc_rifle_bcmblackjack", "", 34000, -1 },
	        { "hlc_rifle_FAL5061Rail", "", 34000, -1 },
	        { "arifle_mas_ak12_sf", "", 23000, -1 },
	        { "hlc_rifle_ak47", "", 24000, -1 },
	        { "hlc_rifle_ak74_dirty2", "", 20000, -1 },
	        { "hlc_rifle_g3sg1ris", "", 34000, -1 },
            { "hlc_rifle_akm", "", 24000, -1 },
            { "SMA_AAC_MPW_12_Black", "", 35000, -1 },
            { "hlc_rifle_samr2", "", 19000, -1 },
            { "SMA_L85RIS", "", 22000, -1 },
            //All SR variants
            { "srifle_mas_m24_d", "", 22000, -1 },
            { "srifle_mas_sr25_d", "", 28000, -1 },
            { "srifle_mas_svd", "", 15500, -1 },
		    { "srifle_DMR_04_Tan_F", "", 25500, -1 },
		    { "srifle_EBR_F", "", 20000, -1 },
            { "bnae_mk1_t_virtual", "", 22500, -1 },
            { "srifle_DMR_06_olive_F", "", 23000, -1 },
		    { "hlc_rifle_m14sopmod", "", 24000, -1 },
            { "srifle_mas_m110", "", 90000, -1 }

			};
        mags[] = {

            // AR Weapon Mags
            { "hlc_20rnd_762x51_b_G3", "", 20 },
            { "30Rnd_65x39_caseless_green", "", 20 },
            { "SMA_30Rnd_68x43_SPC_FMJ", "", 20 },
            { "30Rnd_mas_9x21_Stanag", "", 20 },
            { "71Rnd_mas_762x25_mag", "", 20 },
            { "30Rnd_mas_556x45_Stanag", "", 20 },
            { "30Rnd_mas_545x39_mag", "", 20 },
            { "30Rnd_mas_762x39_mag", "", 20 },
            { "SMA_30Rnd_556x45_M855A1", "", 20 },
            { "30Rnd_mas_9x39_mag", "", 20 },
            { "29rnd_300BLK_STANAG", "", 20 },
            { "hlc_20Rnd_762x51_B_fal", "", 20 },
            { "30Rnd_mas_545x39_mag", "", 20 },
            { "hlc_30Rnd_762x39_b_ak", "", 20 },
            { "hlc_30Rnd_545x39_B_AK", "", 20 },
            { "hlc_30Rnd_762x39_b_ak", "", 20 },
            { "SMA_30Rnd_762x35_SS", "", 20 },
            { "hlc_30rnd_556x45_EPR", "", 20 },
            // SR Weapon Mags
            { "5Rnd_mas_762x51_Stanag", "", 20 },
            { "20Rnd_mas_762x51_Stanag", "", 20 },
            { "10Rnd_mas_762x54_mag", "", 20 },
            { "10Rnd_127x54_Mag", "", 20 },
            { "20Rnd_762x51_Mag", "", 20 },
            { "10Rnd_303_Magazine", "", 20 },
            { "20Rnd_762x51_Mag", "", 20 },
            { "20Rnd_mas_762x51_Stanag", "", 20 },
            { "hlc_20Rnd_762x51_B_M14", "", 20 }

        };
    };


	   class rebellmg {
        name = "Blackmarket LMG Dealer";
        side = "civ";
        license = "rebel";
        level[] = { "", "", -1, "" };
        items[] = {
		    { "LMG_Mk200_F", "", 45000, -1 },
            { "bnae_m97_virtual", "", 12500, -1 },
            { "bnae_spr220_virtual", "", 12500, -1 },
            { "LMG_mas_pkm_F", "", 42000, -1 },
		    { "LMG_mas_pech_F", "", 42975, -1 },
            { "hlc_rifle_rpk_75rnd", "", 42500, -1 },
            { "hlc_lmg_m60", "", 48975, -1 },
            { "hlc_lmg_MG42", "", 48975, -1 },
            { "LMG_mas_m60_F", "", 58500, -1 }
        };
        mags[] = {
		    { "30Rnd_762x39_Mag_F", "", 255 },
            { "100Rnd_mas_762x54_mag", "", 500 },
            { "200Rnd_65x39_cased_Box", "", 500 },
            { "hlc_100Rnd_762x51_M_M60E4", "", 500 },
            { "hlc_50Rnd_792x57_T_MG42", "", 500 },
            { "hlc_100Rnd_762x51_M_M60E4", "", 500 },
            { "2Rnd_00_Buckshot_Magazine", "", 500 },
            { "hlc_100Rnd_762x51_M_M60E4", "", 500 },
            { "100Rnd_mas_762x51_Stanag", "", 500 }
        };
    };

	 class rebelexp {
        name = "Blackmarket Explosives Dealer";
        side = "civ";
        license = "rebel";
        level[] = { "", "", -1, "" };
        items[] = {
            { "mas_launch_pzf60_F", "IGLA AA Launcher", 120000, -1 },
            { "mas_launch_Strela_F", "", 120000, -1 },
			{ "mas_launch_RPG7_F", "", 120000, -1 },
            { "HandGrenade", "Grenade", 1900, -1 },
            { "IEDUrbanSmall_Remote_Mag", "IED Urban", 20000, -1 },
			{ "IEDLandSmall_Remote_Mag", "IED Dug In", 50000, -1 },
            { "SatchelCharge_Remote_Mag", "IED Satchel", 45000, -1 },
            { "DemoCharge_Remote_Mag", "C4 Charge", 30000, -1 }

        };
        mags[] = {
			{ "mas_pzf60", "IGLA Missile", 5000 },
			{ "mas_PG7V", "", 5000 },
			{ "mas_Strela", "", 5000 }
        };
    };

	class rebeloptics {
        name = "Barry's Jihadi Optics & Accessories Shop";
        side = "civ";
        license = "rebel";
        level[] = { "", "", -1, "" };
        items[] = {
			{ "optic_Aco", "", 100 },
			{ "optic_ACO_grn_smg", "", 100 },
			{ "optic_Aco_smg", "", 100 },
			{ "optic_AMS", "", 4000 },
			{ "optic_Arco", "", 2500 },
			{ "optic_DMS", "", 3000 },
			{ "optic_KHS_blk", "", 5500 },
			{ "optic_LRPS", "", 5500 },
			{ "optic_Holosight", "", 640 },
			{ "optic_SOS", "", 2500 },
			{ "optic_MRCO", "", 1000 },
			{ "optic_Hamr", "", 1500 },
			{ "bipod_01_F_snd", "", 2000 },
			{ "acc_flashlight", "", 1000 },
            { "SMA_AAC_762_sdn6", "", 1000 },
            { "SMA_supp2b_556", "", 1000 },
            { "hlc_muzzle_762SUP_AK", "", 1000 },
            { "muzzle_snds_M", "", 1000 },
            { "hlc_muzzle_300blk_KAC", "", 1000 },
            { "muzzle_snds_B", "", 1000 },
            { "SMA_supp2BOD_556", "", 1000 },
			{ "Binocular", "", 300 },
			{ "Rangefinder", "", 800 },
			{ "ItemGPS", "", 10 },
			{ "ToolKit", "", 25 },
            { "TRYK_ESS_BLKTAN_NV", "NVGlasses", 400 },
			{ "NVGoggles", "", 200 },
			{ "tf_fadak", "Fadak Radio", 150 },
			{ "Chemlight_red", "", 30 },
			{ "Chemlight_yellow", "", 30 },
			{ "Chemlight_green", "", 30 },
			{ "Chemlight_blue", "", 30 }
        };
    };

    //Basic Shops
    class genstore {
        name = "General Store";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = {
            { "Binocular", "", 15, -1 },
            { "ItemGPS", "", 10, -1 },
            { "ItemMap", "", 5, -1 },
            { "ItemCompass", "", 5, -1 },
            { "ItemWatch", "", 5, -1 },
            { "ToolKit", "", 25, -1 },
            { "TRYK_ESS_BLKTAN_NV", "NVGlasses", 400, -1 },
            { "NVGoggles", "", 200, -1 },
			{ "tf_fadak", "Fadak Radio (5km)", 150, -1 },
            { "Chemlight_red", "", 30, -1 },
            { "Chemlight_yellow", "", 30, -1 },
            { "Chemlight_green", "", 30, -1 },
            { "Chemlight_blue", "", 30, -1 }
        };
    };

	class taki_acc {
		name = "Optics & Accessories Shop";
		side = "cop";
		license = "";
        level[] = { "life_coplevel", "SCALAR", 1, "You must be a recruit!" };
        items[] = {
        { "HandGrenade_Stone", "Flashbang", 0 },
		{ "SmokeShellOrange", "Teargas", 0 },
		{ "MASK_M50", "", 0 },
		{ "Rangefinder", "", 0 },
		{ "ItemGPS", "GPS", 0 },
		{ "ItemMap", "Map", 0},
		{ "ItemCompass", "Compass", 0},
		{ "ToolKit", "", 0 },
		{ "Medikit", "", 0 },
        { "B_UavTerminal", "", 0 },
		{ "tf_anprc152", "", 0 },
		{ "tf_rt1523g", "", 0 },
        { "TRYK_ESS_BLKTAN_NV", "NVGlasses", 0 },
		{ "NVGoggles", "", 0 },
        { "rhs_weap_tr8", "", 0 },

        //

        //
		{ "optic_Arco_blk_F", "", 0 },
		{ "optic_ERCO_blk_F", "", 0 },
		{ "optic_MRCO", "", 0 },
		{ "optic_Hamr", "", 0 },
		{ "bipod_01_F_snd", "", 0 },
		{ "acc_flashlight", "", 0 },
        { "SMA_AAC_762_sdn6", "", 0 },
        { "SMA_supp2b_556", "", 0 },
        { "hlc_muzzle_762SUP_AK", "", 0 },
        { "muzzle_snds_M", "", 0 },
        { "hlc_muzzle_300blk_KAC", "", 0 },
        { "muzzle_snds_B", "", 0 }
        };
    };

	class taki_recruit {
		name = "TMP Recruit Weapons Shop";
		side = "cop";
		license = "";
        level[] = { "life_coplevel", "SCALAR", 1, "You must be a Recruit!" };
        items[] = {
            { "JM_Taser_26", "", 0, 0 },
			{ "hgun_mas_mp7_F", "", 0, -1 },
		    { "arifle_mas_mp5", "", 0, 0 }

		};
        mags[] = {
            { "JM_26_Cartridge", "", 0 },
            { "40Rnd_mas_46x30_Mag", "", 0 },
            { "30Rnd_mas_9x21_Stanag", "", 0 }
		};
    };

	class taki_private {
		name = "TMP Private Weapons Shop";
		side = "cop";
		license = "";
        level[] = { "life_coplevel", "SCALAR", 2, "You must be a Private!" };
        items[] = {
            { "JM_Taser_26", "", 0, 0 },
			{ "hgun_mas_mp7_F", "", 0, -1 },
		    { "arifle_mas_mp5", "", 0, 0 }

		};
        mags[] = {
            { "JM_26_Cartridge", "", 0 },
            { "40Rnd_mas_46x30_Mag", "", 0 },
            { "30Rnd_mas_9x21_Stanag", "", 0 }
		};
    };

	class taki_pfc {
		name = "TMP Private First Class Shop";
		side = "cop";
		license = "";
        level[] = { "life_coplevel", "SCALAR", 3, "You must be a Private First Class!" };
        items[] = {
            { "JM_Taser_26", "", 0, 0 },
            { "arifle_mas_l119", "", 0, 0 },
            { "hlc_rifle_M4a1carryhandle", "", 0, 0 },
            { "hlc_rifle_G36C", "", 0, 0 }
		};
        mags[] = {
            { "JM_26_Cartridge", "", 0 },
            { "30Rnd_mas_556x45_Stanag", "", 0 },
            { "hlc_30rnd_556x45_EPR", "", 0 },
            { "hlc_30rnd_556x45_EPR_G36", "", 0 }
		};
    };


	class taki_cpl {
		name = "TMP Corporal Weapons Shop";
		side = "cop";
		license = "";
		level[] = { "life_coplevel", "SCALAR", 4, "You must be a Corporal!" };
		items[] = {
            { "JM_Taser_26", "", 0, 0 },
            { "hlc_rifle_rpk_75rnd", "", 0, 0 },
			{ "arifle_mas_ak_74m_sf", "", 0, -1 },
		    { "hlc_rifle_vendimus", "", 0, 0 },
            { "mas_launch_LAW_F", "", 0, 0 }
		};
		mags[] = {
            { "JM_26_Cartridge", "", 0 },
            { "hlc_75Rnd_762x39_m_rpk", "", 0 },
            { "30Rnd_mas_545x39_mag", "", 0 },
			{ "29rnd_300BLK_STANAG", "", 0 },
            { "mas_LAW", "", 0, 0 }
		};
	};

	class taki_sergeant {
		name = "TMP Sergeant Weapons Shop";
		side = "cop";
		license = "";
        level[] = { "life_coplevel", "SCALAR", 5, "You must be a Sergeant!" };
        items[] = {
            { "JM_Taser_26", "", 0, 0 },
            { "RH_g18", "", 0, 0 },
            //
            { "hlc_m249_pip2", "", 0, -1 },
			{ "hlc_rifle_falosw", "", 0, -1 },
            { "srifle_mas_m24", "", 0, -1 },
            //
            { "mas_launch_Strela_F", "", 0, -1 }


		};
        mags[] = {
            { "JM_26_Cartridge", "", 0 },
            { "200Rnd_556x45_Box_Red_F", "", 0 },
			{ "hlc_20Rnd_762x51_B_fal", "", 0 },
            { "5Rnd_mas_762x51_Stanag", "", 0 },
            { "RH_33Rnd_9x19_g18", "", 0 },
			{ "mas_Strela", "", 0 }

		};
    };

    class taki_ssergeant {
		name = "TMP Staff Sergeant Weapons Shop";
		side = "cop";
		license = "";
        level[] = { "life_coplevel", "SCALAR", 6, "You must be a Staff Sergeant!" };
        items[] = {
            { "JM_Taser_26", "", 0, 0 },
            { "RH_g18", "", 0, 0 },
            //
            { "LMG_Mk200_F", "", 0, -1 },
			{ "bnae_mk1_t_virtual", "", 0, -1 },
            { "arifle_mas_hk417c", "", 0, -1 },
            { "srifle_mas_lrr", "", 0, -1 },
            //
            { "hgun_Pistol_heavy_01_F", "", 0, -1 },
			{ "optic_DMS", "", 0, -1 },
			{ "optic_SOS", "", 0, -1 },
            { "RH_gemtech9", "", 0, -1 },
            { "optic_AMS", "", 0, -1 }
		};
        mags[] = {
            { "JM_26_Cartridge", "", 0 },
            { "10Rnd_mas_338_Stanag", "", 0 },
            { "10Rnd_mas_338_T_Stanag", "", 0 },
            { "RH_33Rnd_9x19_g18", "", 0 },
            { "200Rnd_65x39_cased_Box", "", 0 },
			{ "10Rnd_303_Magazine", "", 0 },
            { "20Rnd_mas_762x51_Stanag", "", 0 }
		};
    };

	class taki_deptcommand {
		name = "TMP Department Command Weapons Shop";
		side = "cop";
		license = "";
        level[] = { "life_coplevel", "SCALAR", 7, "Lt Or Above!" };
        items[] = {
            { "JM_Taser_26", "", 0, 0 },
            { "hlc_rifle_M21_Rail", "", 0, 0 },
            { "arifle_mas_m27m", "", 0, 0 },
            { "SMA_Mk16_black", "", 0, 0 },
            { "hlc_rifle_m14sopmod", "", 0, 0 },
            { "SMA_Mk17_black", "", 0, 0 },
            { "optic_SOS", "", 0, 0 },
            { "optic_LRPS", "", 0, 0 },
            { "optic_AMS", "", 0, 0 },
            { "optic_DMS", "", 0, 0 }
		};
        mags[] = {
            { "JM_26_Cartridge", "", 0 },
            { "hlc_20Rnd_762x51_B_M14", "", 0 },
            { "150Rnd_mas_556x45_Stanag", "", 0 },
            { "SMA_30Rnd_556x45_M855A1", "", 0 },
            { "SMA_20Rnd_762x51mm_M80A1_EPR", "", 0 }
		};
    };


	class taki_highcommand {
		name = "TMP High Command Weapons Shop";
		side = "cop";
		license = "";
        level[] = { "life_coplevel", "SCALAR", 8, "You must be Command!" };
        items[] = {
            { "JM_Taser_26", "", 0, 0 },
            { "SMA_M4MOE", "", 0, 0 },
            { "sma_minimi_mk3_762tlb", "", 0, 0 },
            { "hlc_rifle_honeybadger", "", 0, 0 },
            { "hlc_lmg_M60E4", "", 0, 0 },
            { "srifle_mas_m107", "", 0, 0 },
            { "srifle_GM6_F", "", 0, 0 },
            { "mas_launch_smaw_F", "", 0, 0 },
            { "mas_launch_Stinger_F", "", 0, 0 },
            { "optic_SOS", "", 0, 0 },
            { "optic_LRPS", "", 0, 0 },
            { "optic_AMS", "", 0, 0 },
            { "optic_DMS", "", 0, 0 }
		};
        mags[] = {
            { "JM_26_Cartridge", "", 0 },
            { "SMA_30Rnd_556x45_M855A1", "", 0 },
            { "SMA_150Rnd_762_M80A1", "", 0 },
            { "29rnd_300BLK_STANAG", "", 0 },
            { "5Rnd_mas_127x99_Stanag", "", 0 },
            { "5Rnd_mas_127x99_T_Stanag", "", 0 },
            { "hlc_100Rnd_762x51_M_M60E4", "", 0 },
            { "5Rnd_127x108_Mag", "", 0 },
            { "mas_SMAW", "", 0 },
            { "mas_Stinger", "", 0 }
		};
    };

    //Medic Shops
    class med_basic {
        name = "store";
        side = "med";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = {
            { "ItemGPS", "", 10, -1 },
            { "Binocular", "", 15, -1 },
            { "ToolKit", "", 15, 5 },
            { "Medikit", "", 20, -1 },
			{ "tf_anprc152", "", 20, -1 },
            { "NVGoggles", "", 55, -1 }
        };
        mags[] = {};
        accs[] = {};
    };


	class NATO_private {
		name = "NATO Private Weapons Shop";
		side = "cop";
		license = "";
        level[] = { "life_coplevel", "SCALAR", 10, "You must be a Private!" };
        items[] = {
            { "JM_Taser_26", "", 0, 0 },
			{ "hlc_rifle_SAMR", "", 0, -1 }

		};
        mags[] = {
            { "JM_26_Cartridge", "", 0 },
            { "hlc_30rnd_556x45_EPR", "", 0 }
		};
    };

	class NATO_lcpl {
		name = "NATO Lance Corporal Shop";
		side = "cop";
		license = "";
        level[] = { "life_coplevel", "SCALAR", 11, "You must be a Lance Corporal!" };
        items[] = {
            { "JM_Taser_26", "", 0, 0 },
            { "SMA_L85RIS", "", 0, 0 },
            { "hlc_rifle_SAMR", "", 0, 0 },
            { "SMA_HK416CUSTOMvfg", "", 0, 0 },
            { "SMA_M4MOE_Tan", "", 0, 0 },
            { "SMA_MK16", "", 0, 0 }
		};
        mags[] = {
            { "JM_26_Cartridge", "", 0 },
            { "SMA_30Rnd_556x45_M855A1", "", 0 },
            { "hlc_30rnd_556x45_EPR", "", 0 },
            { "SMA_30Rnd_556x45_M855A1", "", 0 }

		};
    };


	class NATO_cpl {
		name = "NATO Corporal Weapons Shop";
		side = "cop";
		license = "";
		level[] = { "life_coplevel", "SCALAR", 12, "You must be a Corporal!" };
		items[] = {
            { "JM_Taser_26", "", 0, 0 },
            { "SMA_ACRMOE", "", 0, 0 },
			{ "SMA_ACRREMMOE", "", 0, -1 },
		    { "SMA_AAC_MPW_9_Tan", "", 0, 0 },
			{ "arifle_mas_m27m_d", "", 0, -1 },
		    { "mas_launch_M136_F", "", 0, 0 },
            { "mas_launch_Strela_F", "", 0, 0 },
		    { "srifle_mas_m24_v", "", 0, 0 }
		};
		mags[] = {
            { "JM_26_Cartridge", "", 0 },
            { "SMA_30Rnd_68x43_SPC_FMJ", "", 0 },
            { "SMA_30Rnd_556x45_M855A1", "", 0 },
			{ "SMA_30Rnd_762x35_BLK_EPR", "", 0 },
            { "5Rnd_mas_762x51_Stanag", "", 0, 0 },
            { "150Rnd_mas_556x45_Stanag", "", 0 },
			{ "mas_M136", "", 0 },
            { "mas_Strela", "", 0, 0 }
		};
	};

	class NATO_sergeant {
		name = "NATO Sergeant Weapons Shop";
		side = "cop";
		license = "";
        level[] = { "life_coplevel", "SCALAR", 13, "You must be a Sergeant!" };
        items[] = {
            { "JM_Taser_26", "", 0, 0 },
            { "SMA_AAC_MPW_9_Tan", "", 0, -1 },
			{ "hlc_rifle_awmagnum_FDE", "", 0, -1 },
            { "arifle_AK12_F", "", 0, -1 },
            { "bnae_rk95r_camo1_virtual", "", 0, -1 },
            { "hlc_lmg_minimipara_railed", "", 0, -1 },
			{ "hlc_rifle_falosw", "", 0, -1 },
            { "HandGrenade", "", 0, -1 },
            { "mas_launch_smaw_F", "", 0, -1 },
            { "mas_launch_Stinger_F", "", 0, -1 }

		};
        mags[] = {
            { "JM_26_Cartridge", "", 0 },
            { "SMA_30Rnd_762x35_BLK_EPR", "", 0 },
			{ "hlc_5rnd_300WM_BTSP_AWM", "", 0 },
            { "30Rnd_762x39_Mag_F", "", 0 },
			{ "30Rnd_762x39_Magazine", "", 0 },
            { "hlc_200rnd_556x45_M_SAW", "", 0 },
            { "hlc_20Rnd_762x51_B_fal", "", 0 },
			{ "mas_SMAW", "", 0 },
            { "mas_Stinger	mas_Stinger", "", 0 }

		};
    };

    class NATO_msergeant {
		name = "NATO Master Sergeant Weapons Shop";
		side = "cop";
		license = "";
        level[] = { "life_coplevel", "SCALAR", 14, "You must be a Staff Sergeant!" };
        items[] = {
            { "JM_Taser_26", "", 0, 0 },
            { "arifle_mas_hk417c_d", "", 0, -1 },
			{ "LMG_mas_mk48_F_d", "", 0, -1 },
            { "SMA_Mk17", "", 0, -1 },
            { "srifle_EBR_F", "", 0, -1 },
			{ "optic_DMS", "", 0, -1 },
			{ "optic_SOS", "", 0, -1 },
            { "optic_AMS", "", 0, -1 }
		};
        mags[] = {
            { "JM_26_Cartridge", "", 0 },
            { "20Rnd_mas_762x51_Stanag", "", 0 },
			{ "100Rnd_mas_762x51_Stanag", "", 0 },
            { "SMA_20Rnd_762x51mm_M80A1_EPR", "", 0 },
            { "20Rnd_762x51_Mag", "", 0 }
		};
    };

	class NATO_Sgtmajor {
		name = "NATO Sergeant Major Weapons Shop";
		side = "cop";
		license = "";
        level[] = { "life_coplevel", "SCALAR", 15, "Lt Or Above!" };
        items[] = {
            { "JM_Taser_26", "", 0, 0 },
            { "bnae_falkor_blk_virtual", "", 0, 0 },
            { "srifle_mas_hk417_d", "", 0, 0 },
            { "sma_minimi_mk3_762tlb_des", "", 0, 0 },
            { "SMA_Mk17_16", "", 0, 0 },
            { "optic_SOS", "", 0, 0 },
            { "optic_LRPS", "", 0, 0 },
            { "optic_AMS", "", 0, 0 },
            { "optic_DMS", "", 0, 0 }
		};
        mags[] = {
            { "JM_26_Cartridge", "", 0 },
            { "10Rnd_300WM_Magazine", "", 0 },
            { "20Rnd_mas_762x51_Stanag", "", 0 },
            { "SMA_150Rnd_762_M80A1", "", 0 },
            { "SMA_20Rnd_762x51mm_M80A1_EPR", "", 0 }
		};
    };


	class NATO_Warofficer {
		name = "NATO Warrant Officer Weapons Shop";
		side = "cop";
		license = "";
        level[] = { "life_coplevel", "SCALAR", 16, "You must be Command!" };
        items[] = {
            { "JM_Taser_26", "", 0, 0 },
            { "bnae_trg42_f_mmrs_camo1_virtual", "", 0, 0 },
            { "srifle_DMR_03_tan_F", "", 0, 0 },
            { "optic_SOS", "", 0, 0 },
            { "optic_LRPS", "", 0, 0 },
            { "optic_AMS", "", 0, 0 },
            { "optic_DMS", "", 0, 0 }
		};
        mags[] = {
            { "JM_26_Cartridge", "", 0 },
            { "SMA_30Rnd_556x45_M855A1", "", 0 },
            { "SMA_150Rnd_762_M80A1", "", 0 },
            { "29rnd_300BLK_STANAG", "", 0 },
            { "hlc_100Rnd_762x51_M_M60E4", "", 0 },
            { "5Rnd_127x108_Mag", "", 0 },
            { "mas_SMAW", "", 0 },
            { "mas_Stinger", "", 0 }
		};

    };

	class NATO_CWarofficer {
		name = "NATO Warrent Officer Weapons Shop";
		side = "cop";
		license = "";
        level[] = { "life_coplevel", "SCALAR", 17, "You must be Command!" };
        items[] = {
            { "JM_Taser_26", "", 0, 0 },
            { "hlc_rifle_bcmblackjack", "", 0, 0 },
            { "hlc_rifle_Bushmaster300", "", 0, 0 },
            { "optic_SOS", "", 0, 0 },
            { "optic_LRPS", "", 0, 0 },
            { "optic_AMS", "", 0, 0 },
            { "optic_DMS", "", 0, 0 }
		};
        mags[] = {
            { "JM_26_Cartridge", "", 0 },
            { "29rnd_300BLK_STANAG_S", "", 0 }
		};
    };


	class NATO_Captain {
		name = "NATO Captains Weapons Shop";
		side = "cop";
		license = "";
        level[] = { "life_coplevel", "SCALAR", 18, "You must be Command!" };
        items[] = {
            { "JM_Taser_26", "", 0, 0 },
            { "srifle_mas_m107_d", "", 0, 0 },
            { "hlc_rifle_honeybadger", "", 0, 0 },
            { "optic_SOS", "", 0, 0 },
            { "optic_LRPS", "", 0, 0 },
            { "optic_AMS", "", 0, 0 },
            { "optic_DMS", "", 0, 0 }
		};
        mags[] = {
            { "JM_26_Cartridge", "", 0 },
            { "29rnd_300BLK_STANAG", "", 0 },
            { "5Rnd_mas_127x99_Stanag", "", 0 }
		};
    };

	class NATO_Major {
		name = "NATO Majors Weapons Shop";
		side = "cop";
		license = "";
        level[] = { "life_coplevel", "SCALAR", 19, "You must be Command!" };
        items[] = {
            { "JM_Taser_26", "", 0, 0 },
            { "srifle_LRR_F", "", 0, 0 },
            { "optic_SOS", "", 0, 0 },
            { "optic_LRPS", "", 0, 0 },
            { "optic_AMS", "", 0, 0 },
            { "optic_DMS", "", 0, 0 }
		};
        mags[] = {
            { "JM_26_Cartridge", "", 0 },
            { "7Rnd_408_Mag", "", 0 }
		};
    };

	class NATO_HighCommand {
		name = "NATO High Command Weapons Shop smc";
		side = "cop";
		license = "";
        level[] = { "life_coplevel", "SCALAR", 20, "You must be Command!" };
        items[] = {
            { "JM_Taser_26", "", 0, 0 },
            { "srifle_mas_m107_d", "", 0, 0 },
            { "optic_SOS", "", 0, 0 },
            { "optic_LRPS", "", 0, 0 },
            { "optic_AMS", "", 0, 0 },
            { "optic_DMS", "", 0, 0 }
		};
        mags[] = {
            { "JM_26_Cartridge", "", 0 },
            { "5Rnd_mas_127x99_Stanag", "", 0 }
		};
    };
};
