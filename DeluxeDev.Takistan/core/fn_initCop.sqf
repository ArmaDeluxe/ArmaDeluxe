#include "..\script_macros.hpp"
/*
	File: fn_initCop.sqf
	Author: Bryan "Tonic" Boardwine
	Edited: Cobra

	Description:
	Cop Initialization file.
*/
tf_no_auto_long_range_radio = true; 

TF_terrain_interception_coefficient = 1;
private "_end";
player addRating 9999999;
waitUntil {!(isNull (findDisplay 46))};
_end = false;

if(life_blacklisted) exitWith {
	["Blacklisted",false,true] call BIS_fnc_endMission;
	uiSleep 30;
};

	if((FETCH_CONST(life_coplevel) == 0) && (FETCH_CONST(life_adminlevel) == 0)) then {
		["NotWhitelisted",false,true] call BIS_fnc_endMission;
		uiSleep 35;
};


player setVariable["rank",(FETCH_CONST(life_coplevel)),true];
player setVariable ["copLevel",1,true]; 

[] call life_fnc_spawnMenu;
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.
[]execVM "core\welcomeNotification.sqf";
player setVariable ["tf_sendingDistanceMultiplicator", 25];
[] spawn life_fnc_DebugGear;
player setVariable ["copLevel",1,true];