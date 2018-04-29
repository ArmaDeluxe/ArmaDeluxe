/*
	File: fn_shovel.sqf
	Author: Cobra
    Description: 
	Cultivate soil ready for growing drugs.	
*/
private["_tent"];
if(playerSide != civilian) exitWith {}; 
if(life_shovel == 1) exitWith {["You have already cultivated land recently.","#d32df0"] spawn RLG_fnc_RLGNotificationSystem;};
_tent = nearestObjects [(getPos player),["CamoNet_INDP_Curator_F"], 10];
if ((count _tent) == 0) exitWith {["You are not close enough to the netting.","#d32df0"] spawn RLG_fnc_RLGNotificationSystem;};
_tent = (_tent select 0);
player playAction "Medic";
uiSleep 6;
_shovel = "Land_ClutterCutter_large_F" createVehicle position player; 
["The soil has been cultivated.","#d32df0"] spawn RLG_fnc_RLGNotificationSystem;
life_shovel = 1;
