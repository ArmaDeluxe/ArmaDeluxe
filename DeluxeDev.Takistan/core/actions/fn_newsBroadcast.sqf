#include "..\script_macros.hpp"
/*
+    File: fn_newsBroadcast.sqf
+    Author: Jesse "tkcjesse" Schultz
Fixed by Cobra the meme master
+
+    Description:
+    Creates the dialog and handles the data in the Channel 7 News Dialog.
+*/
private ["_msgCost","_display","_confirmBtn","_msgCooldown","_broadcastDelay"];

if (!dialog) then {
    createDialog "life_news_broadcast";
};

disableSerialization;
_display = findDisplay 100100;
_confirmBtn = _display displayCtrl 100104;
_confirmBtn ctrlEnable false;

_msgCooldown = 60 * 20;
_msgCost = 30000;

if (CASH < _msgCost) then {
    hint format[localize "STR_News_NotEnough",[_msgCost] call life_fnc_numberText];
} else {
    _confirmBtn ctrlEnable true;
    _confirmBtn buttonSetAction "[ctrlText 100101,ctrlText 100102,profilename] call life_fnc_postNewsBroadcast; closeDialog 0;";
};

if (isNil "life_broadcastTimer" || {(time - life_broadcastTimer) > _msgCooldown}) then {
    _broadcastDelay = localize "STR_News_Now";
} else {
    _broadcastDelay = [(_msgCooldown - (time - life_broadcastTimer))] call BIS_fnc_secondsToString;
    _confirmBtn ctrlEnable false;
};

CONTROL(100100,100103) ctrlSetStructuredText parseText format[localize "STR_News_StructuredText",[_msgCost] call life_fnc_numberText,_broadcastDelay];
