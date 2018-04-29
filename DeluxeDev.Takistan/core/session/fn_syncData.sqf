#include "..\..\script_macros.hpp"
/*
	File: fn_syncData.sqf
	Author: Bryan "Tonic" Boardwine"
	
	Description:
	Used for player manual sync to the server.
*/
_fnc_scriptName = "Player Synchronization";
if(isNil "life_session_time") then {life_session_time = false;};
if(life_session_time) exitWith {};

[] call SOCK_fnc_updateRequest;
["<t size='3.2' color='#e57300'>Data saved to database.</t>"] call life_fnc_alerttwo;
[] spawn {
	life_session_time = true;
	uiSleep (5 * 60);
	life_session_time = false;
};
	