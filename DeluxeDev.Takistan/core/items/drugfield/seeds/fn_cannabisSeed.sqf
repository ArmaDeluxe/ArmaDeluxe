/*
	File: fn_cannabisSeed.sqf
	Author: Cobra
    Description: 
	Plant and grow cannabis seeds.
*/
private["_tent","_time","_amount","_halftime","_seedcheck"];
_tent = nearestObjects [(getPos player),["CamoNet_INDP_Curator_F"], 10];
_seedcheck = nearestObjects [(getPos player),["CamoNet_INDP_Curator_F"], 20];
if(playerSide != civilian) exitWith {};
if(life_shovel == 0) exitWith {["You have not cultivated the land.","#d32df0"] spawn RLG_fnc_RLGNotificationSystem;[true,"cannabisseed",1] call life_fnc_handleInv; };
if(life_lightdrugfield == 0) exitWith {["You require lights to grow drugs.","#d32df0"] spawn RLG_fnc_RLGNotificationSystem;[true,"cannabisseed",1] call life_fnc_handleInv; };
if(life_antispam == 10) exitWith {["You cannot plant more than 10 seeds at a time!","#d32df0"] spawn RLG_fnc_RLGNotificationSystem;[true,"cannabisseed",1] call life_fnc_handleInv; };
if ((count _tent) == 0) exitWith {["You are not close enough to the netting.","#d32df0"] spawn RLG_fnc_RLGNotificationSystem;[true,"cannabisseed",1] call life_fnc_handleInv; };
if ((player distance (getMarkerPos "marker_248") > 456)) exitWith 
{
	["You cannot grow weed here, it is not a designated zone!","#d32df0"] spawn RLG_fnc_RLGNotificationSystem;
	[true,"cannabisseed",1] call life_fnc_handleInv;
};
_tent = (_tent select 0);
life_antispam = life_antispam +1;
//Check to see how many lights are placed...
if(life_lightdrugfield == 1) then { 
_time = 100 + round(random 25);
};
if(life_lightdrugfield == 2) then { 
_time = 75 + round(random 25);
};
if(life_lightdrugfield == 3) then { 
_time = 50 + round(random 30);
};
_newtime = _time;
_skill = [life_currentExpPerks, "Perk4_12"] call mav_ttm_fnc_hasPerk; 
if (_skill) then {
_newtime = _time/2;
};
_halftime = _newtime/2;
_amount = 3 + round(random 3);
life_action_inUse = true;
player playAction "Medic";
uiSleep 6;
life_action_inUse = false;
["The cannabis seed has been planted.","#d32df0"] spawn RLG_fnc_RLGNotificationSystem;
uiSleep 4;
closeDialog 0;
hint format ["Cannabis seeds usually take around %1 seconds to grow.",_newtime];
uiSleep _halftime;
if ((count _seedcheck) == 0) exitWith {["The seeds finished growing and you were not close enough to them, they are now spoiled.","#d32df0"] spawn RLG_fnc_RLGNotificationSystem; life_shovel = 0; [true,"cannabisseed",1] call life_fnc_handleInv; };
_seedcheck = (_seedcheck select 0);
hint format ["About %1 seconds left until the drugs grow.",_halftime];
uiSleep _halftime;
["Your seeds have grown.","#d32df0"] spawn RLG_fnc_RLGNotificationSystem;
player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
uiSleep 1;
hint format ["You have gathered %1 cannabis plants.",_amount];
[true,"cannabis",_amount] call life_fnc_handleInv;
uiSleep 3;
closeDialog 0;
["You need to re-cultivate the land to grow more drugs.","#d32df0"] spawn RLG_fnc_RLGNotificationSystem;
life_shovel = 0;
life_antispam = 0;