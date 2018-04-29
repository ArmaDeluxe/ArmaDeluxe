/*
	File: fn_searchAction.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Starts the searching process.
*/
params [
	["_unit",objNull,[objNull]]
];
if(isNull _unit) exitWith {};
["<t size='3.2' color='#e57300'>Searching Player...</t>"] call life_fnc_alerttwo;
uiSleep 2;
if(player distance _unit > 5 || !alive player || !alive _unit) exitWith {hint localize "STR_NOTF_CannotSearchPerson"};
[player] remoteExec ["life_fnc_searchClient",_unit];
life_action_inUse = true;