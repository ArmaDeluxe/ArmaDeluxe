
private ["_index"];

createDialog "Life_Checkpoint_Alarm";
waitUntil {!(isNull (findDisplay 2720))};


{
	_index = lbAdd [ 1102, ( _x select 0 ) ]; 
	lbSetData [ 1102, _index, ( _x select 1 ) ];  
} forEach [
	["Sound Alarm", "execvm'core\cop\fn_checkpointLockdown.sqf';"],
	["Stop Alarm","execvm'core\cop\fn_checkpointLockdownStop.sqf';"]
];

lbSetCurSel [ 1102, 0 ];


