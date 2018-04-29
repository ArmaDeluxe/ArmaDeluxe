/*
	File: fn_packupLight.sqf
	Author: Cobra
	
	Description:
	Pack up a light.
*/
private["_light"];
if(playerSide != civilian) exitWith {}; 
_light = nearestObjects[getPos player,["Land_PortableLight_double_F"],8] select 0;
if(isNil "_light") exitWith {};

if(([true,"light",1] call life_fnc_handleInv)) then
{
	player playAction "Medic";
	uiSleep 6;
	deleteVehicle _light;
	life_lightdrugfield = 0;
	player removeAction life_action_lightPickup;
	life_action_lightPickup = nil;
};