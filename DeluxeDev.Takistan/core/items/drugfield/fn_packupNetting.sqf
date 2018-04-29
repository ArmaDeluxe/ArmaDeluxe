/*
	File: fn_packupNetting.sqf
	Author: Cobra
	
	Description:
	Pack up netting.
*/
private["_netting"];
if(playerSide != civilian) exitWith {}; 
_netting = nearestObjects[getPos player,["CamoNet_INDP_Curator_F"],8] select 0;
if(isNil "_netting") exitWith {};

if(([true,"netting",1] call life_fnc_handleInv)) then
{
	player playAction "Medic";
	uiSleep 6;
	deleteVehicle _netting;
	life_nettingdrugfield = 0;
	player removeAction life_action_nettingPickup;
	life_action_nettingPickup = nil;
};