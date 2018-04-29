#include "..\..\script_macros.hpp"
/*
	File: fn_jail.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Starts the initial process of jailing.
*/
params [
	["_unit",objNull,[objNull]],
	["_bad",false,[false]]
];

if(isNull _unit) exitWith {}; //Dafuq?
if(_unit != player) exitWith {}; //Dafuq?
if(life_is_arrested) exitWith {}; //Dafuq i'm already arrested

player SVAR ["restrained",false,true];
player SVAR ["Escorting",false,true];
player SVAR ["transporting",false,true];

titleText[localize "STR_Jail_Warn","PLAIN"];
hint localize "STR_Jail_LicenseNOTF";
_marker = JailMarker;
player setPos (getPos _marker);

if(_bad) then {
	waitUntil {alive player};
	uiSleep 1;
};

//Check to make sure they goto check
if(player distance _marker > 40) then {
	player setPos (getPos _marker);
};

[1] call life_fnc_removeLicenses;

{
	_amount = ITEM_VALUE(_x);
	if(_amount > 0) then {
		[false,_x,_amount] call life_fnc_handleInv;
	};
} forEach ["heroin_unprocessed","heroin_processed","cannabis","marijuana","cocaine_unprocessed","cocaine_processed","turtle_raw"];

life_is_arrested = true;

//Strip Players Down
removeAllWeapons player;
{player removeMagazine _x} foreach (magazines player);
removeHeadgear player;
removeBackpack player;
removeUniform player;
removeVest player;
removeGoggles player;
//Add the prisoner uniform
player addUniform "U_C_WorkerCoveralls";

if(life_HC_isActive) then {
	[player,_bad] remoteExecCall ["HC_fnc_jailSys",HC_Life];
} else {
	[player,_bad] remoteExecCall ["life_fnc_jailSys",RSERV];
};

[5] call SOCK_fnc_updatePartial;