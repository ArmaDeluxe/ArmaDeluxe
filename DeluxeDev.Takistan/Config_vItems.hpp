class VirtualShops {
    //Virtual Shops
    class market {
        name = "STR_Shops_Market";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "waterBottle", "apple", "redgull", "tbacon", "lockpick","bandage","cprkit", "pickaxe", "treefixer", "fuelFull", "peach", "boltcutter", "storagesmall", "storagebig","paintBlack","paintWhite","paintRed","paintBlue","paintGreen","paintYellow","paintPurple","paintOrange","paintPink" };
    };

    class rebel {
        name = "STR_Shops_Rebel";
        side = "civ";
        license = "rebel";
        level[] = { "", "", -1, "" };
        items[] = { "waterBottle", "ziptie", "apple", "redgull", "tbacon","bandage","cprkit", "lockpick", "pickaxe", "fuelFull", "peach", "boltcutter", "blastingcharge","manualcarbomb","timedcarbomb","engineBomb" };
    };

    class gang {
        name = "STR_Shops_Gang";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "waterBottle", "ziptie", "rabbit_grilled", "apple", "redgull", "tbacon", "lockpick", "pickaxe", "fuelFull", "peach", "boltcutter", "blastingcharge" };
    };

    class ems {
        name = "STR_Shops_EMS";
        side = "med";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "waterBottle", "apple","redgull","bandage", "fuelFull", "crowbar", "treefixer", "lollypop", "condom" };
    };

    class coffee {
        name = "STR_Shops_Coffee";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "coffee", "donuts" };
    };

    class f_station_coffee {
        name = "STR_Shop_Station_Coffee";
        side = "";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "coffee", "donuts", "redgull", "fuelFull"};
    };

    class drugdealer {
        name = "STR_Shops_DrugDealer";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "cocaine_processed", "marijuana", "cocaseed","cannabisseed" };
    };

    class oil {
        name = "STR_Shops_Oil";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "oil_processed","petrol","jetfuel", "fuelFull" };
    };

    class iron  {
        name = "STR_Shops_Minerals";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "iron_refined", "copper_refined" };
    };

    class diamond {
        name = "STR_Shops_Diamond";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "diamond_uncut", "diamond_cut" };
    };

    class gold {
        name = "STR_Shops_Gold";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "goldbar" };
    };
	
	class cotton {
        name = "STR_Shops_Cotton";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "cotton" };
    };

    class cop {
        name = "STR_Shops_Cop";
        side = "cop";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "panicbutton","crowbar","bandage","spikeStrip", "waterBottle", "apple", "redgull", "treefixer", "fuelFull","defusekit" };
    };

    class hardware {
        name = "STR_Shops_Hardware";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "netting","generator","light","shovel" };
    };

    class uranium {
        name = "STR_Shops_Uranium";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "uranium","uraniumr" };
    };
};

/*
*    CLASS:
*        variable = Variable Name
*        displayName = Item Name
*        weight = Item Weight
*        buyPrice = Item Buy Price
*        sellPrice = Item Sell Price
*        illegal = Illegal Item
*        edible = Item Edible (-1 = Disabled)
*        icon = Item Icon
*        processedItem = Processed Item
*/
class VirtualItems {
    //Virtual Items

    //Misc
    class pickaxe {
        variable = "pickaxe";
        displayName = "STR_Item_Pickaxe";
        weight = 1;
        buyPrice = 75;
        sellPrice = -1;
        illegal = 0;
        edible = -1;
        icon = "\rlgsndimg\icons\ico_pickaxe.paa";
    };
	
	class cantuseitem {
        variable = "cantuseitem";
        displayName = "STR_Item_Pickaxe";
        weight = 1;
        buyPrice = -1;
        sellPrice = -1;
        illegal = 0;
        edible = -1;
        icon = "\rlgsndimg\icons\ico_pickaxe.paa";
    };
	
	class cotton {
        variable = "cotton";
        displayName = "STR_Item_Cotton";
        weight = 2;
        buyPrice = -1;
        sellPrice = 85;
        illegal = 0;
        edible = -1;
        icon = "";
    };

    class fuelEmpty {
        variable = "fuelEmpty";
        displayName = "STR_Item_FuelE";
        weight = 1;
        buyPrice = -1;
        sellPrice = -1;
        illegal = 0;
        edible = -1;
        icon = "\rlgsndimg\icons\ico_fuelEmpty.paa";
    };

    class fuelFull {
        variable = "fuelFull";
        displayName = "STR_Item_FuelF";
        weight = 3;
        buyPrice = 5;
        sellPrice = -1;
        illegal = 0;
        edible = -1;
        icon = "\rlgsndimg\icons\ico_fuel.paa";
    };

    class spikeStrip {
        variable = "spikeStrip";
        displayName = "STR_Item_SpikeStrip";
        weight = 5;
        buyPrice = 0;
        sellPrice = -1;
        illegal = 0;
        edible = -1;
        icon = "\rlgsndimg\icons\ico_spikeStrip.paa";
    };

    class lockpick {
        variable = "lockpick";
        displayName = "STR_Item_Lockpick";
        weight = 1;
        buyPrice = 15;
        sellPrice = -1;
        illegal = 0;
        edible = -1;
        icon = "\rlgsndimg\icons\ico_lockpick.paa";
    };

    class goldbar {
        variable = "goldBar";
        displayName = "STR_Item_GoldBar";
        weight = 4;
        buyPrice = -1;
        sellPrice = 12500;
        illegal = 1;
        edible = -1;
        icon = "\rlgsndimg\icons\ico_goldbar.paa";
    };

    class blastingcharge {
        variable = "blastingCharge";
        displayName = "STR_Item_BCharge";
        weight = 9;
        buyPrice = 5500;
        sellPrice = -1;
        illegal = 1;
        edible = -1;
        icon = "\rlgsndimg\icons\ico_blastingcharge.paa";
    };

    class engineBomb {
    variable = "engineBomb";
    displayName = "STR_Item_EngineBomb";
    weight = 20;
    buyPrice = 31000;
    sellPrice = -1;
    illegal = true;
    edible = -1;
   icon = "\rlgsndimg\icons\ico_blastingcharge.paa";
    };
    
	class manualcarbomb {
        variable = "manualcarbomb";
        displayName = "STR_Item_ManualCarBomb";
        weight = 20;
        buyPrice = 31000;
        sellPrice = -1;
        illegal = 1;
        edible = -1;
       icon = "\rlgsndimg\icons\ico_blastingcharge.paa";
    };
	
	class timedcarbomb {
        variable = "timedcarbomb";
        displayName = "STR_Item_TimedCarBomb";
        weight = 20;
        buyPrice = 29500;
        sellPrice = -1;
        illegal = 1;
        edible = -1;
        icon = "\rlgsndimg\icons\ico_blastingcharge.paa";
    };

    class boltcutter {
        variable = "boltCutter";
        displayName = "STR_Item_BCutter";
        weight = 5;
        buyPrice = 750;
        sellPrice = -1;
        illegal = 1;
        edible = -1;
        icon = "\rlgsndimg\icons\ico_boltCutter.paa";
    };
	
	class treefixer {
        variable = "treefixer";
        displayName = "STR_Item_TreeFixer";
        weight = 1;
        buyPrice = 0;
        sellPrice = -1;
        illegal = 0;
        edible = -1;
        icon = "\rlgsndimg\icons\ico_treefixer.paa";
    };

    class paintBlack {
        variable = "paintBlack";
        displayName = "STR_Item_paintBlack";
        weight = 6;
        buyPrice = 2565;
        sellPrice = -1;
        illegal = 0;
        edible = -1;
        icon = "";
    };

    class paintWhite {
        variable = "paintWhite";
        displayName = "STR_Item_paintWhite";
        weight = 6;
        buyPrice = 2565;
        sellPrice = -1;
        illegal = 0;
        edible = -1;
        icon = "";
    };

    class paintRed {
        variable = "paintRed";
        displayName = "STR_Item_paintRed";
        weight = 6;
        buyPrice = 2565;
        sellPrice = -1;
        illegal = 0;
        edible = -1;
        icon = "";
    };

    class paintBlue {
        variable = "paintBlue";
        displayName = "STR_Item_paintBlue";
        weight = 6;
        buyPrice = 2565;
        sellPrice = -1;
        illegal = 0;
        edible = -1;
        icon = "";
    };

    class paintGreen {
        variable = "paintGreen";
        displayName = "STR_Item_paintGreen";
        weight = 6;
        buyPrice = 2565;
        sellPrice = -1;
        illegal = 0;
        edible = -1;
        icon = "";
    };

    class paintYellow {
        variable = "paintYellow";
        displayName = "STR_Item_paintYellow";
        weight = 6;
        buyPrice = 2565;
        sellPrice = -1;
        illegal = 0;
        edible = -1;
        icon = "";
    };

    class paintPurple {
        variable = "paintPurple";
        displayName = "STR_Item_paintPurple";
        weight = 6;
        buyPrice = 2565;
        sellPrice = -1;
        illegal = 0;
        edible = -1;
        icon = "";
    };

    class paintOrange {
        variable = "paintOrange";
        displayName = "STR_Item_paintOrange";
        weight = 6;
        buyPrice = 2565;
        sellprice = -1;
        illegal = 0;
        edible = -1;
        icon = "";
    };

    class paintPink {
        variable = "paintPink";
        displayName = "STR_Item_paintPink";
        weight = 6;
        buyPrice = 2565;
        sellprice = -1;
        illegal = 0;
        edible = -1;
        icon = "";
    };
	
    class defusekit {
        variable = "defuseKit";
        displayName = "STR_Item_DefuseKit";
        weight = 2;
        buyPrice = 0;
        sellPrice = -1;
        illegal = 0;
        edible = -1;
        icon = "\rlgsndimg\icons\ico_defuseKit.paa";
    };

    class storagesmall {
        variable = "storageSmall";
        displayName = "STR_Item_StorageBS";
        weight = 5;
        buyPrice = 7500;
        sellPrice = -1;
        illegal = 0;
        edible = -1;
        icon = "\rlgsndimg\icons\ico_storageSmall.paa";
    };

    class storagebig {
        variable = "storageBig";
        displayName = "STR_Item_StorageBL";
        weight = 10;
        buyPrice = 15000;
        sellPrice = -1;
        illegal = 0;
        edible = -1;
        icon = "\rlgsndimg\icons\ico_storageBig.paa";
    };

    //Mined Items
    class oil_unprocessed {
        variable = "oilUnprocessed";
        displayName = "STR_Item_OilU";
        weight = 2;
        buyPrice = -1;
        sellPrice = -1;
        illegal = 0;
        edible = -1;
        icon = "\rlgsndimg\icons\ico_oilUnprocessed.paa";
    };

    class oil_processed {
        variable = "oilProcessed";
        displayName = "STR_Item_OilP";
        weight = 1;
        buyPrice = -1;
        sellPrice = 580;
        illegal = 0;
        edible = -1;
        icon = "\rlgsndimg\icons\ico_oilProcessed.paa";
    };
	
	class petrol {
        variable = "petrol";
        displayName = "STR_Item_Petrol";
        weight = 1;
        buyPrice = -1;
        sellPrice = 680;
        illegal = 0;
        edible = -1;
        icon = "\rlgsndimg\icons\ico_oilProcessed.paa";
    };
	
	class jetfuel {
        variable = "jetfuel";
        displayName = "STR_Item_JetFuel";
        weight = 1;
        buyPrice = -1;
        sellPrice = 943;
        illegal = 0;
        edible = -1;
        icon = "\rlgsndimg\icons\ico_oilProcessed.paa";
    };

    class copper_unrefined {
        variable = "copperUnrefined";
        displayName = "STR_Item_CopperOre";
        weight = 2;
        buyPrice = -1;
        sellPrice = -1;
        illegal = 0;
        edible = -1;
	icon = "\rlgsndimg\icons\ico_copperOre.paa";
    };

    class copper_refined {
        variable = "copperRefined";
        displayName = "STR_Item_CopperIngot";
        weight = 1;
        buyPrice = -1;
        sellPrice = 175;
        illegal = 0;
        edible = -1;
	icon = "\rlgsndimg\icons\ico_copper.paa";
    };

    class iron_unrefined {
        variable = "ironUnrefined";
        displayName = "STR_Item_IronOre";
        weight = 2;
        buyPrice = -1;
        sellPrice = -1;
        illegal = 0;
        edible = -1;
	icon = "\rlgsndimg\icons\ico_ironOre.paa";
    };

    class iron_refined {
        variable = "ironRefined";
        displayName = "STR_Item_IronIngot";
        weight = 1;
        buyPrice = -1;
        sellPrice = 350;
        illegal = 0;
        edible = -1;
        icon = "\rlgsndimg\icons\ico_iron.paa";
    };

    class diamond_uncut {
        variable = "diamondUncut";
        displayName = "STR_Item_DiamondU";
        weight = 2;
        buyPrice = -1;
        sellPrice = -1;
        illegal = 0;
        edible = -1;
        icon = "\rlgsndimg\icons\ico_diamondUncut.paa";
    };

    class diamond_cut {
        variable = "diamondCut";
        displayName = "STR_Item_DiamondC";
        weight = 1;
        buyPrice = -1;
        sellPrice = 400;
        illegal = 0;
        edible = -1;
        icon = "\rlgsndimg\icons\ico_diamondCut.paa";
    };

    //Drugs
    class cannabis {
        variable = "cannabis";
        displayName = "STR_Item_Cannabis";
        weight = 2;
        buyPrice = -1;
        sellPrice = -1;
        illegal = 1;
        edible = -1;
        icon = "\rlgsndimg\icons\ico_cannabis.paa";
        processedItem = "marijuana";
    };

    class marijuana {
        variable = "marijuana";
        displayName = "STR_Item_Marijuana";
        weight = 1;
        buyPrice = -1;
        sellPrice = 1420;
        illegal = 1;
        edible = -1;
        icon = "\rlgsndimg\icons\ico_marijuana.paa";
    };

    class cocaine_unprocessed {
        variable = "cocaineUnprocessed";
        displayName = "STR_Item_CocaineU";
        weight = 2;
        buyPrice = -1;
        sellPrice = -1;
        illegal = 1;
        edible = -1;
        icon = "\rlgsndimg\icons\ico_cocaineUnprocessed.paa";
        processedItem = "cocaine_processed";
    };

    class cocaine_processed {
        variable = "cocaineProcessed";
        displayName = "STR_Item_CocaineP";
        weight = 1;
        buyPrice = -1;
        sellPrice = 2500;
        illegal = 1;
        edible = -1;
        icon = "\rlgsndimg\icons\ico_cocaineProcessed.paa";
    };

    //Drink
    class redgull {
        variable = "redgull";
        displayName = "STR_Item_RedGull";
        weight = 1;
        buyPrice = 5;
        sellPrice = -1;
        illegal = 0;
        edible = 100;
        icon = "\rlgsndimg\icons\ico_redgull.paa";
    };

    class coffee {
        variable = "coffee";
        displayName = "STR_Item_Coffee";
        weight = 1;
        buyPrice = 1;
        sellprice = -1;
        illegal = 0;
        edible = 100;
        icon = "\rlgsndimg\icons\ico_coffee.paa";
    };

    class waterBottle {
        variable = "waterBottle";
        displayName = "STR_Item_WaterBottle";
        weight = 1;
        buyPrice = 1;
        sellPrice = -1;
        illegal = 0;
        edible = 100;
        icon = "\rlgsndimg\icons\ico_waterBottle.paa";
    };

    //Food
    class apple {
        variable = "apple";
        displayName = "STR_Item_Apple";
        weight = 0.1;
        buyPrice = 2;
        sellPrice = -1;
        illegal = 0;
        edible = 10;
        icon = "\rlgsndimg\icons\ico_apple.paa";
    };

    class peach {
        variable = "peach";
        displayName = "STR_Item_Peach";
        weight = 1;
        buyPrice = 7;
        sellPrice = -1;
        illegal = 0;
        edible = 10;
        icon = "\rlgsndimg\icons\ico_peach.paa";
    };

    class tbacon {
        variable = "tbacon";
        displayName = "STR_Item_TBacon";
        weight = 1;
        buyPrice = 8;
        sellPrice = -1;
        illegal = 0;
        edible = 40;
        icon = "\rlgsndimg\icons\ico_tBacon.paa";
    };

    class donuts {
        variable = "donuts";
        displayName = "STR_Item_Donuts";
        weight = 1;
        buyPrice = 12;
        sellPrice = -1;
        illegal = 0;
        edible = 30;
        icon = "\rlgsndimg\icons\ico_donuts.paa";
    };

    class rabbit {
        variable = "rabbit";
        displayName = "STR_Item_Rabbit";
        weight = 1;
        buyPrice = 15;
        sellPrice = -1;
        illegal = 0;
        edible = 20;
        icon = "\rlgsndimg\icons\ico_rabbit.paa";
    };

    class uranium {
        variable = "uranium";
        displayName = "STR_Item_Uranium";
        weight = 3;
        buyPrice = -1;
        sellprice = -1;
        illegal = 1;
        edible = 100;
        icon = "\rlgsndimg\icons\ico_uranium.paa";
    };

    class uraniumr {
        variable = "uraniumr";
        displayName = "STR_Item_UraniumR";
        weight = 2;
        buyPrice = -1;
        sellPrice = 8000;
        illegal = 1;
        edible = 100;
        icon = "\rlgsndimg\icons\ico_uraniumr.paa";
    };

    class netting {
        variable = "netting";
        displayName = "STR_Item_Netting";
        weight = 1;
        buyPrice = 20;
        sellPrice = -1;
        illegal = 0;
        edible = 100;
        icon = "\rlgsndimg\icons\ico_netting.paa";
    };

    class generator {
        variable = "generator";
        displayName = "STR_Item_Generator";
        weight = 1;
        buyPrice = 18;
        sellPrice = -1;
        illegal = 0;
        edible = 100;
        icon = "\rlgsndimg\icons\ico_generator.paa";
    };

    class light {
        variable = "light";
        displayName = "STR_Item_Light";
        weight = 1;
        buyPrice = 18;
        sellPrice = -1;
        illegal = 0;
        edible = 100;
        icon = "\rlgsndimg\icons\ico_light.paa";
    };

    class shovel {
        variable = "shovel";
        displayName = "STR_Item_Shovel";
        weight = 1;
        buyPrice = 18;
        sellPrice = -1;
        illegal = 0;
        edible = 100;
        icon = "\rlgsndimg\icons\ico_shovel.paa";
    };

    class panicbutton {
        variable = "panicbutton";
        displayName = "STR_Item_Panicbutton";
        weight = 2;
        buyPrice = 0;
        sellprice = -1;
        illegal = 0;
        edible = 100;
        icon = "\rlgsndimg\icons\ico_panicbutton.paa";
    };

    class cocaseed {
        variable = "cocaseed";
        displayName = "STR_Item_Cocaseed";
        weight = 1;
        buyPrice = 18;
        sellPrice = -1;
        illegal = 1;
        edible = 100;
        icon = "\rlgsndimg\icons\ico_cocaseed.paa";
    };

    class cannabisseed {
        variable = "cannabisseed";
        displayName = "STR_Item_Cannabisseed";
        weight = 1;
        buyPrice = 18;
        sellPrice = -1;
        illegal = 1;
        edible = 100;
        icon = "\rlgsndimg\icons\ico_cannabisseed.paa";
    };

     class cprkit {
        variable = "cprkit";
        displayName = "STR_Item_CPRKIT";
        weight = 5;
        buyPrice = 185;
        sellPrice = -1;
        illegal = 0;
        edible = -1;
        icon = "\rlgsndimg\icons\ico_kidney.paa";
    };

class bandage {
        variable = "bandage";
        displayName = "STR_Item_Bandage";
        weight = 5;
        buyPrice = 45;
        sellPrice = -1;
        illegal = 0;
        edible = -1;
        icon = "\rlgsndimg\icons\ico_chickendrumstick.paa";
    };

    class crowbar {
        variable = "crowbar";
        displayName = "STR_Item_Crowbar";
        weight = 2;
        buyPrice = 0;
        sellprice = -1;
        illegal = 0;
        edible = 100;
        icon = "\rlgsndimg\icons\ico_crowbar.paa";
    };

    class lollypop {
        variable = "lollypop";
        displayName = "STR_Item_Lollypop";
        weight = 1;
        buyPrice = 0;
        sellprice = -1;
        illegal = 0;
        edible = 100;
        icon = "\rlgsndimg\icons\ico_lollypop.paa";
    };

    class condom {
        variable = "condom";
        displayName = "STR_Item_Condom";
        weight = 1;
        buyPrice = 18;
        sellPrice = -1;
        illegal = 0;
        edible = 100;
        icon = "\rlgsndimg\icons\ico_condom.paa";
    };

    class ziptie {
        variable = "ziptie";
        displayName = "STR_Item_Ziptie";
        weight = 1;
        buyPrice = 18;
        sellPrice = -1;
        illegal = 1;
        edible = 100;
        icon = "\rlgsndimg\icons\ico_ziptie.paa";
    };
};
