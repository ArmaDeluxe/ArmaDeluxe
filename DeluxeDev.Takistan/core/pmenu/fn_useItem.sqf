#include "..\..\script_macros.hpp"
/*
	File: fn_useItem.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Main function for item effects and functionality through the player menu.
*/
private "_item";
disableSerialization;
if(EQUAL(lbCurSel 1500,-1)) exitWith {hint localize "STR_ISTR_SelectItemFirst";};
_item = CONTROL_DATA(1500);

switch (true) do {
	case (_item in ["waterBottle","coffee","redgull"]): {
		if(([false,_item,1] call life_fnc_handleInv)) then {
			life_thirst = 100;
			if(EQUAL(LIFE_SETTINGS(getNumber,"enable_fatigue"),1)) then {player setFatigue 0;};
			if(EQUAL(_item,"redgull") && {EQUAL(LIFE_SETTINGS(getNumber,"enable_fatigue"),1)}) then {
				[] spawn {
					life_redgull_effect = time;
					titleText[localize "STR_ISTR_RedGullEffect","PLAIN"];
					player enableFatigue false;
					_ifSway = getCustomAimCoef player;
					if((_ifSway) > 0.5) then {player setCustomAimCoef 0.35;};
					waitUntil {!alive player OR ((time - life_redgull_effect) > (3 * 60))};
					player enableFatigue true;
					player setCustomAimCoef 0.01;
					closeDialog 1;
				};
			};
		};
	};

	case (EQUAL(_item,"boltcutter")): {
		[cursorTarget] spawn life_fnc_boltcutter;
		closeDialog 1;
	};

	case (EQUAL(_item,"blastingcharge")): {
		player reveal fed_bank;
		(group player) reveal fed_bank;
		[cursorTarget] spawn life_fnc_blastingCharge;
		closeDialog 1;
	};

	case (EQUAL(_item,"defusekit")): {
		[cursorTarget] spawn life_fnc_defuseKit;
		closeDialog 1;
	};

	case (EQUAL(_item,"paintBlack")): {
		if(([false,_item,1] call life_fnc_handleInv)) then	{
			[[cursorTarget,0,"#(argb,8,8,3)color(0,0,0,1)"],"life_fnc_setTexture",true,false] call life_fnc_MP;
			[[cursorTarget,1,"#(argb,8,8,3)color(0,0,0,1)"],"life_fnc_setTexture",true,false] call life_fnc_MP;
			[[cursorTarget,2,"#(argb,8,8,3)color(0,0,0,1)"],"life_fnc_setTexture",true,false] call life_fnc_MP;
		};
	};

	case (EQUAL(_item,"paintWhite")): {
		if(([false,_item,1] call life_fnc_handleInv)) then	{
			[[cursorTarget,0,"#(argb,8,8,3)color(1,1,1,1)"],"life_fnc_setTexture",true,false] call life_fnc_MP;
			[[cursorTarget,1,"#(argb,8,8,3)color(1,1,1,1)"],"life_fnc_setTexture",true,false] call life_fnc_MP;
			[[cursorTarget,2,"#(argb,8,8,3)color(1,1,1,1)"],"life_fnc_setTexture",true,false] call life_fnc_MP;
		};
	};

	case (EQUAL(_item,"paintRed")): {
		if(([false,_item,1] call life_fnc_handleInv)) then	{
			[[cursorTarget,0,"#(argb,8,8,3)color(1,0,0,1)"],"life_fnc_setTexture",true,false] call life_fnc_MP;
			[[cursorTarget,1,"#(argb,8,8,3)color(1,0,0,1)"],"life_fnc_setTexture",true,false] call life_fnc_MP;
			[[cursorTarget,2,"#(argb,8,8,3)color(1,0,0,1)"],"life_fnc_setTexture",true,false] call life_fnc_MP;
		};
	};

	case (EQUAL(_item,"paintBlue")): {
		if(([false,_item,1] call life_fnc_handleInv)) then	{
			[[cursorTarget,0,"#(argb,8,8,3)color(0,0,1,1)"],"life_fnc_setTexture",true,false] call life_fnc_MP;
			[[cursorTarget,1,"#(argb,8,8,3)color(0,0,1,1)"],"life_fnc_setTexture",true,false] call life_fnc_MP;
			[[cursorTarget,2,"#(argb,8,8,3)color(0,0,1,1)"],"life_fnc_setTexture",true,false] call life_fnc_MP;
		};
	};

	case (EQUAL(_item,"paintGreen")): {
		if(([false,_item,1] call life_fnc_handleInv)) then	{
			[[cursorTarget,0,"#(argb,8,8,3)color(0,1,0,1)"],"life_fnc_setTexture",true,false] call life_fnc_MP;
			[[cursorTarget,1,"#(argb,8,8,3)color(0,1,0,1)"],"life_fnc_setTexture",true,false] call life_fnc_MP;
			[[cursorTarget,2,"#(argb,8,8,3)color(0,1,0,1)"],"life_fnc_setTexture",true,false] call life_fnc_MP;
		};
	};

	case (EQUAL(_item,"paintYellow")): {
		if(([false,_item,1] call life_fnc_handleInv)) then	{
			[[cursorTarget,0,"#(argb,8,8,3)color(1,1,0,1)"],"life_fnc_setTexture",true,false] call life_fnc_MP;
			[[cursorTarget,1,"#(argb,8,8,3)color(1,1,0,1)"],"life_fnc_setTexture",true,false] call life_fnc_MP;
			[[cursorTarget,2,"#(argb,8,8,3)color(1,1,0,1)"],"life_fnc_setTexture",true,false] call life_fnc_MP;
		};
	};

	case (EQUAL(_item,"paintPurple")): {
		if(([false,_item,1] call life_fnc_handleInv)) then	{
			[[cursorTarget,0,"#(argb,8,8,3)color(1,0,1,1)"],"life_fnc_setTexture",true,false] call life_fnc_MP;
			[[cursorTarget,1,"#(argb,8,8,3)color(1,0,1,1)"],"life_fnc_setTexture",true,false] call life_fnc_MP;
			[[cursorTarget,2,"#(argb,8,8,3)color(1,0,1,1)"],"life_fnc_setTexture",true,false] call life_fnc_MP;
		};
	};

	case (EQUAL(_item,"paintOrange")): {
		if(([false,_item,1] call life_fnc_handleInv)) then	{
			[[cursorTarget,0,"#(argb,8,8,3)color(1,0.5,0,1)"],"life_fnc_setTexture",true,false] call life_fnc_MP;
			[[cursorTarget,1,"#(argb,8,8,3)color(1,0,0.5,1)"],"life_fnc_setTexture",true,false] call life_fnc_MP;
			[[cursorTarget,2,"#(argb,8,8,3)color(1,0,0.5,1)"],"life_fnc_setTexture",true,false] call life_fnc_MP;
		};
	};

	case (EQUAL(_item,"paintPink")): {
		if(([false,_item,1] call life_fnc_handleInv)) then	{
			[[cursorTarget,0,"#(argb,8,8,3)color(1,0.4,0.7,1)"],"life_fnc_setTexture",true,false] call life_fnc_MP;
			[[cursorTarget,1,"#(argb,8,8,3)color(1,0.4,0.7,1)"],"life_fnc_setTexture",true,false] call life_fnc_MP;
			[[cursorTarget,2,"#(argb,8,8,3)color(1,0.4,0.7,1)"],"life_fnc_setTexture",true,false] call life_fnc_MP;
		};
	};

	case (EQUAL(_item,"storagesmall")): {
		[] call life_fnc_storageBoxSmall;
		closeDialog 1;
	};

	case (EQUAL(_item,"storagebig")): {
		[] call life_fnc_storageBoxBig;
		closeDialog 1;
	};

	case (EQUAL(_item,"spikeStrip")): {
		if(!isNull life_spikestrip) exitWith {hint localize "STR_ISTR_SpikesDeployment"};
		if(([false,_item,1] call life_fnc_handleInv)) then {
			[] spawn life_fnc_spikeStrip;
			closeDialog 1;
		};
	};

	case (EQUAL(_item,"fuelFull")): {
		if(vehicle player != player) exitWith {hint localize "STR_ISTR_RefuelInVehicle"};
		[] spawn life_fnc_jerryRefuel;
		closeDialog 1;
	};

	case (EQUAL(_item,"lockpick")): {
		[] spawn life_fnc_lockpick;
		closeDialog 1;
	};

	case (EQUAL(_item,"crowbar")): {
		[] spawn life_fnc_crowbar;
		closeDialog 1;
	};

	case (EQUAL(_item,"treefixer")): {
		[] spawn life_fnc_treefixer;
		closeDialog 1;
	};

	case (EQUAL(_item,"panicbutton")): {
		[] spawn life_fnc_callBackup;
		closeDialog 1;
	};

	case (EQUAL(_item,"beer")): {
		if(([false,_item,1] call life_fnc_handleInv)) then	{
			[] spawn life_fnc_beer;
			closeDialog 1;
		};
	};

	case (EQUAL(_item,"whiskey")): {
		if(([false,_item,1] call life_fnc_handleInv)) then	{
			[] spawn life_fnc_whiskey;
			closeDialog 1;
		};
	};

	case (EQUAL(_item,"vodka")): {
		if(([false,_item,1] call life_fnc_handleInv)) then	{
			[] spawn life_fnc_vodka;
			closeDialog 1;
		};
	};

	case (EQUAL(_item,"timedcarbomb")): {
		if(([false,_item,1] call life_fnc_handleInv)) then	{
			createdialog 'Carbomb';
		};
	};

	case (EQUAL(_item,"manualcarbomb")): {
		if(([false,_item,1] call life_fnc_handleInv)) then	{
			[] spawn life_fnc_manualCarBomb;
			closeDialog 1;
		};
	};

	case (EQUAL(_item,"engineBomb")): {
		if(([false,_item,1] call life_fnc_handleInv)) then	{
			[] spawn life_fnc_engineCarBomb;
			closeDialog 1;
		};
	};

	////////////DrugField//////////////
	case (EQUAL(_item,"light")): {
		if(([false,_item,1] call life_fnc_handleInv)) then	{
			[] spawn life_fnc_Light;
			closeDialog 1;
		};
	};

	case (EQUAL(_item,"generator")): {
		if(([false,_item,1] call life_fnc_handleInv)) then	{
			[] spawn life_fnc_generator;
			closeDialog 1;
		};
	};

	case (EQUAL(_item,"netting")): {
		if(([false,_item,1] call life_fnc_handleInv)) then	{
			[] spawn life_fnc_netting;
			closeDialog 1;
		};
	};

	case (EQUAL(_item,"shovel")): {
		[] spawn life_fnc_shovel;
		closeDialog 1;
	};

	case (EQUAL(_item,"cocaseed")): {
		if(([false,_item,1] call life_fnc_handleInv)) then	{
			[] spawn life_fnc_cocaSeed;
			closeDialog 1;
		};
	};

	case (EQUAL(_item,"cannabisseed")): {
		if(([false,_item,1] call life_fnc_handleInv)) then	{
			[] spawn life_fnc_cannabisSeed;
			closeDialog 1;
		};
	};

	case (_item in ["apple","rabbit","salema","ornate","mackerel","tuna","mullet","catshark","turtle_soup","hen","rooster","sheep","goat","donuts","tbacon","peach"]): {
		if(!(EQUAL(M_CONFIG(getNumber,"VirtualItems",_item,"edible"),-1))) then {
			if([false,_item,1] call life_fnc_handleInv) then {
				_val = M_CONFIG(getNumber,"VirtualItems",_item,"edible");
				_sum = life_hunger + _val;
				switch (true) do {
					case (_val < 0 && _sum < 1): {life_hunger = 5;}; //This adds the ability to set the entry edible to a negative value and decrease the hunger without death
					case (_sum > 100): {life_hunger = 100;};
					default {life_hunger = _sum;};
					closeDialog 1;
				};
			};
		};
	};

	default {
		hint localize "STR_ISTR_NotUsable";
	};
};

[] call life_fnc_p_updateMenu;
[] call life_fnc_hudUpdate;
