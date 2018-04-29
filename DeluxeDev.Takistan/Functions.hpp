class Socket_Reciever
{
	tag = "SOCK";
	class SQL_Socket
	{
		file = "core\session";
		class requestReceived {};
		class dataQuery {};
		class insertPlayerInfo {};
		class updateRequest {};
		class syncData {};
		class updatePartial {};
	};
};

class Life_Client_Core
{
	tag = "life";

	class Master_Directory
	{
		file = "core";
		class setupActions {};
		class setupEVH {};
		class initCiv {};
		class initCop {};
		class initMedic {};
		class survival {};
	};

	class DynMarket
    {
        file = "core\DynMarket";
        class bought {};
        class update {};
        class DisplayPrices {};
        class LoadIntoListbox {};
        class ForcePrice {};
        class DYNMARKET_getPrice {};
	};
	
	class Admin
	{
		file = "core\admin";
		class admininfo {};
		class adminid {};
		class admingetID {};
		class adminMenu {};
	};

	class Medical_System
	{
		file = "core\medical";
		class healself {};
		class healperson {};
		class onPlayerKilled {};
		class cprplayer {};
		class onPlayerRespawn {};
		class respawned {};
		class revivePlayer {};
		class revived {};
		class medicMarkers {};
		class requestMedic {};
		class medicRequest {};
		class deathScreen {};
		class medicLoadout {};
		class medicSirenLights {};
		class medicLights {};
		class medicSiren {};
	};

	class Actions
	{
		file = "core\actions";
		class engineCarBomb {};
		class manualCarBomb {};
		class timedCarBomb {};
		class newsBroadcast {};
		class robShops {};
		class playSound {};
		class tieingAction {};
		class DeadmanSwitch {};
		class buyLicense {};
		class healHospital {};
		class pushVehicle {};
		class repairTruck {};
		class serviceChopper {};
		class catchFish {};
		class dropFishingNet {};
		class postBail {};
		class processAction {};
		class arrestAction {};
		class escortAction {};
		class impoundAction {};
		class pulloutAction {};
		class putInCar {};
		class stopEscorting {};
		class restrainAction {};
		class searchAction {};
		class searchVehAction {};
		class unrestrain {};
		class surrender {};
		class pickupItem {};
		class pickupMoney {};
		class ticketAction {};
		class packupSpikes {};
		class storeVehicle {};
		class robAction {};
		class captureHideout {};
		class gather {};
		class automaticgather {};
		class removeContainer {};
		class pickupItem2 {};
	};

	class Housing
	{
		file = "core\housing";
		class buyHouse {};
		class getBuildingPositions {};
		class houseMenu {};
		class lightHouse {};
		class lightHouseAction {};
		class sellHouse {};
		class initHouses {};
		class copBreakDoor {};
		class raidHouse {};
		class lockupHouse {};
		class copHouseOwner {};
		class lockHouse {};
		class garageRefund {};
		class placeContainer {};
		class PlayerInBuilding {};
		class containerMenu {};
	};

	class Config
	{
		file = "core\config";
		class itemWeight {};
		class taxRate {};
		class vehicleAnimate {};
		class vehicleWeightCfg {};
		class houseConfig {};
	};

	class Player_Menu
	{
		file = "core\pmenu";
		class wantedList {};
		class wantedInfo {};
		class wantedMenu {};
		class pardon {};
		class giveItem {};
		class giveMoney {};
		class p_openMenu {};
		class p_updateMenu {};
		class removeItem {};
		class useItem {};
		class cellphone {};
		class keyMenu {};
		class keyGive {};
		class keyDrop {};
		class s_onSliderChange {};
		class updateViewDistance {};
		class settingsMenu {};
		class s_onChar {};
		class s_onCheckedChange {};
		class wantedAddP {};
		class revokeLicense {};
	};

	class Functions
	{
		file = "core\functions";
		class houseautoclicker {};
		class alerttwo {};
		class settexture {};
		class rewardcops {};
		class debuggear {};
		class issuepayment {};
		class AAN {};
		class seizeObjects {}; 
		class untie {};
		class destroyComms {};
		class terrorAttack {};
		class calWeightDiff {};
		class fetchCfgDetails {};
		class handleInv {};
		class hudSetup {};
		class hudUpdate {};
		class tazeSound {};
		class animSync {};
		class simDisable {};
		class keyHandler {};
		class dropItems {};
		class handleDamage {};
		class numberText {};
		class handleItem {};
		class accType {};
		class receiveItem {};
		class postNewsBroadcast {};
		class giveDiff {};
		class receiveMoney {};
		class clearVehicleAmmo {};
		class RLG {};
		class nearUnits {};
		class actionKeyHandler {};
		class playerCount {};
		class fetchDeadGear {};
		class loadDeadGear {};
		class isnumeric {};
		class escInterupt {};
		class onTakeItem {};
		class fetchVehInfo {};
		class pushObject {};
		class onFired {};
		class revealObjects {};
		class nearestDoor {};
		class inventoryClosed {};
		class inventoryOpened {};
		class isUIDActive {};
		class saveGear {};
		class loadGear {};
		class stripDownPlayer {};
		class nearATM {};
		class nearestObjects {};
		class teleport {};
		class searchPosEmpty {};
		class hideObj {};
		class pickupItems {};
	};

	class Travis_Phone
	{
		file = "dialog\CustomPhone\Functions";
		class movesMenu {};
		class openBankMenu {};
		class openInvMenu {};
		class openLicensesMenu {};
	};
	
	class Network
	{
		file = "core\functions\network";
		class broadcast {};
		class corpse {};
		class jumpFnc {};
		class soundDevice {};
		class setFuel {};
		class say3D {};
		class MP {};
		class MPexec {};
	};

	class Civilian
	{
		file = "core\civilian";
		class civinteractionmenu {};
		class tieing {};
		class civescort {};
		class civstopescort {};
		class jailMe {};
		class civMarkers {};
		class jail {};
		class tazed {};
		class knockedOut {};
		class knockoutAction {};
		class robReceive {};
		class robPerson {};
		class removeLicenses {};
		class demoChargeTimer {};
		class civLoadout {};
		class freezePlayer {};
		class throwcar {};
	};

	class Vehicle
	{
		file = "core\vehicle";
		class colorVehicle {};
		class openInventory {};
		class lockVehicle {};
		class vehicleOwners {};
		class vehStoreItem {};
		class vehTakeItem {};
		class vehInventory {};
		class vInteractionMenu {};
		class vehicleWeight {};
		class deviceMine {};
		class addVehicle2Chain {};
		class FuelRefuelcar {};
		class vehiclecolor3DRefresh {};
		class fuelSupply {};
		class fuelStore {};
	};

	class Cop
	{
		file = "core\cop";
		class panicmarkers {};
		class removeWeaponActionCiv {};
		class callBackup {};
		class checkpointLockdown {};
		class checkpointLockdownStop {};
		class copMarkers {};
		class copLights {};
		class vehInvSearch {};
		class copSearch {};
		class bountyReceive {};
		class searchClient {};
		class restrain {};
		class ticketGive {};
		class ticketPay {};
		class ticketPrompt {};
		class copSiren {};
		class spikeStripEffect {};
		class radar {};
		class questionDealer {};
		class copInteractionMenu {};
		class sirenLights {};
		class licenseCheck {};
		class licensesRead {};
		class repairDoor {};
		class doorAnimate {};
		class copLoadout {};
		class ticketPaid {};
		class containerInvSearch {};
		class wantedGrab {};
		class stripPlayer {};
	};
	
	class ThreatLevel
	{
		file = "core\cop\threatlevel";
		class ThreatLevelMenu {};
		class ThreatLevelPressed {};
		class checkpointMenu {};
		class checkpointAlarmSounded {};
	};
	
	class Alcohol
	{
		file = "core\items\alcohol";
		class beer {};
		class whiskey {};
		class vodka {};
	};
	
	class Drugfield
	{
		file = "core\items\drugfield";
		class generator {};
		class light {};
		class netting {};
		class packupGenerator {};
		class packupLight {};
		class packupNetting {};
		class Shovel {};
	};

	class Seeds
	{
		file = "core\items\drugfield\seeds";
		class cannabisSeed {};
		class cocaSeed {};
	};

	class Gangs
	{
		file = "core\gangs";
		class initgangzones {};
		class initGang {};
		class createGang {};
		class gangCreated {};
		class gangMenu {};
		class gangKick {};
		class gangLeave {};
		class gangNewLeader {};
		class gangUpgrade {};
		class gangInvitePlayer {};
		class gangInvite {};
		class gangDisband {};
		class gangDisbanded {};
	};

	class Shops
	{
		file = "core\shops";
		class atmMenu {};
		class buyClothes {};
		class changeClothes {};
		class clothingMenu {};
		class clothingFilter {};
		class vehicleShopMenu {};
		class vehicleShopLBChange {};
		class vehicleShopBuy {};
		class weaponShopFilter {};
		class weaponShopMenu {};
		class weaponShopSelection {};
		class weaponShopBuySell {};
		class weaponShopMags {};
		class weaponShopAccs {};
		class virt_buy {};
		class virt_menu {};
		class virt_update {};
		class virt_sell {};
		class chopShopMenu {};
		class chopShopSelection {};
		class chopShopSell {};
		class FuelStatOpen {};
		class FuelLBchange {};
		class vehicleShopEnd3DPreview {};
		class vehicleShopInit3DPreview {};
		class vehicleShop3DPreview {};
	};

	class Items
	{
		file = "core\items";
		class lockpick {};
		class crowbar {};
		class spikeStrip {};
		class jerryRefuel {};
		class flashbang {};
		class boltcutter {};
		class blastingCharge {};
		class defuseKit {};
		class storageBoxBig {};
		class storageBoxSmall {};
		class placestorageBig {};
		class placestorageSmall {};
		class placedefinestorage {};
		class treefixer {};
	};

	class Dialog_Controls
	{
		file = "dialog\function";
		class setMapPosition {};
		class displayHandler {};
		class spawnConfirm {};
		class spawnMenu {};
		class spawnPointCfg {};
		class spawnPointSelected {};
		class progressBar {};
		class impoundMenu {};
		class unimpound {};
		class sellGarage {};
		class bankDeposit {};
		class bankWithdraw {};
		class bankTransfer {};
		class garageLBChange {};
		class safeInventory {};
		class safeOpen {};
		class safeTake {};
		class safeFix {};
		class vehicleGarage {};
		class gangDeposit {};
		class wireTransfer {};
		class gangWithdraw {};
	};
};

class RLG_Functions
{
	tag = "RLG";

	class Misc
	{
		file = "core\RLG\Misc";
		class RLGNotificationSystem {};
	};
};