scriptName "fn_clientSendUpdateToServer";
/*--------------------------------------------------------------------
	Author: Maverick (ofpectag: MAV)
    File: fn_clientSendUpdateToServer.sqf

	<Maverick Applications>
    Written by Maverick Applications (www.maverick-apps.de)
    You're not allowed to use this file without permission from the author!
--------------------------------------------------------------------*/
#define __filename "fn_clientSendUpdateToServer.sqf"

params [
	["_which", -1, [0]]
];

if (_which isEqualTo -1) exitWith {diag_log "fnclientSendUpdateToServer - Error.. _which is EqualTo 0";};

private _toSend = switch (_which) do {
	case 0: {life_currentExpLevel};
	case 1: {life_currentExp};
	case 2: {life_currentPerkPoints};
	case 3: {life_currentExpPerks};
};

diag_log "fn_clientSendUpdateToServer.sqf Sending to server";
[_which, _toSend, getPlayerUID player] remoteExecCall ["mav_ttm_fnc_updateDatabaseEntry", 2];
diag_log ("Experience data for user ID " + (getPlayerUID player) + " | Current Level (1): " + str life_currentExpLevel);
diag_log ("Experience data for user ID " + (getPlayerUID player) + " | Current EXP (1): " + str life_currentExp);
diag_log ("Experience data for user ID " + (getPlayerUID player) + " | Current Perk Points (1): " + str life_currentPerkPoints);
diag_log ("Experience data for user ID " + (getPlayerUID player) + " | Current EXP Points (1): " + str life_currentExpPerks);