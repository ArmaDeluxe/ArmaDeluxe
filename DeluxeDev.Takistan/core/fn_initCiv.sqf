#include "..\script_macros.hpp"
/*
	File: fn_initCiv.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Initializes the civilian.
*/

// TFR Variables API
tf_no_auto_long_range_radio = true; 

TF_terrain_interception_coefficient = 1;

waitUntil {!(isNull (findDisplay 46))};
if(life_is_alive && !life_is_arrested) then {
	/* Spawn at our last position */
	player setPosWorld life_civ_position;
} else {
	if(!life_is_alive && !life_is_arrested) then {
		if(EQUAL(LIFE_SETTINGS(getNumber,"save_civ_positionStrict"),1)) then {
			_handle = [] spawn life_fnc_civLoadout;
			waitUntil {scriptDone _handle}; CASH = 0;
		};
		[] call life_fnc_spawnMenu;
		waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
		waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.
	} else {
		if(life_is_arrested) then {
			life_is_arrested = false;
			[player,true] spawn life_fnc_jail;
		};
	};
};
life_is_alive = true;
player setVariable ["tf_sendingDistanceMultiplicator", 25];
player addRating 9999999;
[]execVM "core\welcomeNotification.sqf";	
[] spawn life_fnc_DebugGear;