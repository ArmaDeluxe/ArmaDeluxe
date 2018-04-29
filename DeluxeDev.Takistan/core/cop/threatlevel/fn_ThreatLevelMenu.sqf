/*
  File:fn_ThreatLevelMenu.sqf
  Author:http://rlgroleplay.com
*/

private ["_index"];

createDialog "Life_Threat_Level";
waitUntil {!(isNull (findDisplay 2720))};


{
	_index = lbAdd [ 1102, ( _x select 0 ) ]; 
	lbSetData [ 1102, _index, ( _x select 1 ) ];  
} forEach [
	["Green", "execvm'core\cop\threatlevel\Green.sqf';"],
	["Amber","execvm'core\cop\threatlevel\Amber.sqf';"],
	["Red","execvm'core\cop\threatlevel\Red.sqf';"],
	["Terror","execvm'core\functions\fn_terrorAttack.sqf';"]
];

lbSetCurSel [ 1102, 0 ];


