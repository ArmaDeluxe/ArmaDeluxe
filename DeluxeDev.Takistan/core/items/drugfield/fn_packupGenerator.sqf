/*
	File: fn_packupGenerator.sqf
	Author: Cobra
	
	Description:
	Pack up netting.
*/
private["_generator"];
if(playerSide != civilian) exitWith {}; 
_generator = nearestObjects[getPos player,["Land_Portable_generator_F"],8] select 0;
if(isNil "_generator") exitWith {};

if(([true,"generator",1] call life_fnc_handleInv)) then
{
	player playAction "Medic";
	uiSleep 6;
	deleteVehicle _generator;
	life_generatordrugfield = 0;
	player removeAction life_action_generatorPickup;
	life_action_generatorPickup = nil;
};