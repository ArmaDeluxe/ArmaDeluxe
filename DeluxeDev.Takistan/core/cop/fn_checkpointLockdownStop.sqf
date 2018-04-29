/*
	File: fn_checkpointLockdownStop.sqf
	Author: Cobra
	Made for: www.rlgroleplay.com
	
	Description:
	Disengage checkpoint lockdown!
*/
if(playerSide != west) exitWith {
["<t size='3.2' color='#e57300'>You do not know the passcode to sound the alarm.</t>"] call life_fnc_alerttwo;
}; 
if (Checkpoint1 getVariable "checkpoint_alarm") exitWith {
player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
uiSleep 4;
Checkpoint1 setVariable ["checkpoint_alarm", false, true];
["","#d32df0"] spawn RLG_fnc_RLGNotificationSystem;
["<t size='3.2' color='#e57300'>You have turned the checkpoint alarm off.</t>"] call life_fnc_alerttwo;

};