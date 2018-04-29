/*
	File: fn_packupSpikes.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Packs up a deployed spike strip.
*/
private["_spikes"];
_spikes = nearestObjects[getPos player,["Land_Razorwire_F"],8] select 0;
if(isNil "_spikes") exitWith {};

if(([true,"spikeStrip",1] call life_fnc_handleInv)) then
{
	["<t size='3.2' color='#e57300'>You have packed up the spike strip.</t>"] call life_fnc_alerttwo;
	player removeAction life_action_spikeStripPickup;
	life_action_spikeStripPickup = nil;
	deleteVehicle _spikes;
};