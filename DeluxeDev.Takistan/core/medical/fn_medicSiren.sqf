#include "..\..\script_macros.hpp"
/*
	File: fn_medicSiren.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Starts the medic siren sound for other players
*/
private["_vehicle"];
_vehicle = param [0,ObjNull,[ObjNull]];

if(isNull _vehicle) exitWith {};
if(isNil {_vehicle GVAR "siren"}) exitWith {};

while {true} do {
	if(!(_vehicle GVAR "siren")) exitWith {};
	if(EQUAL(count crew _vehicle,0)) then {_vehicle SVAR ["siren",false,true]};
	if(!alive _vehicle) exitWith {};
	if(isNull _vehicle) exitWith {};
	_vehicle say3D "medicSiren";//Class/name specified in description.ext
	uiSleep 4.275;//Exactly matches the length of the audio file.
	if(!(_vehicle GVAR "siren")) exitWith {};
};