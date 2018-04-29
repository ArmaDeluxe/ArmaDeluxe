/*
	File: fn_checkpointLockdown.sqf
	Author: Cobra
	Made for: www.rlgroleplay.com
	
	Description:
	Engage checkpoint lockdown!
*/
if(playerSide != west) exitWith {}; 
player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
uiSleep 4;
Checkpoint1 setVariable ["checkpoint_alarm", true, true];
_storename = "dickshit";
["<t size='3.2' color='#e57300'>Checkpoint alarm sounded.</t>"] call life_fnc_alerttwo;
[[1,format["DISPATCH: The border checkpoint alarm has been sounded. ASSISTANCE REQUIRED!",_storename]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;

while {Checkpoint1 getVariable "checkpoint_alarm"} do {
	[[Checkpoint1, "checkpointalarm",5000],"life_fnc_playSound",true,false] spawn life_fnc_MP;
	[[Checkpoint2, "checkpointalarm",5000],"life_fnc_playSound",true,false] spawn life_fnc_MP;
	[[Checkpoint3, "checkpointalarm",5000],"life_fnc_playSound",true,false] spawn life_fnc_MP;
	uiSleep 20;
	[[1,format["DISPATCH: The border checkpoint alarm has been sounded. ASSISTANCE REQUIRED!",_storename]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
	[[Checkpoint1, "AirRaidSirenAlert",5000],"life_fnc_playSound",true,false] spawn life_fnc_MP;
	[[Checkpoint2, "AirRaidSirenAlert",5000],"life_fnc_playSound",true,false] spawn life_fnc_MP;
	[[Checkpoint3, "AirRaidSirenAlert",5000],"life_fnc_playSound",true,false] spawn life_fnc_MP;
};
