/*
	File: fn_cocaSeed.sqf
	Author: Cobra
    Description: 
	Plant and grow coca seeds.
*/
private["_tent","_time","_amount","_halftime","_seedcheck"];
_tent = nearestObjects [(getPos player),["CamoNet_INDP_Curator_F"], 10];
_seedcheck = nearestObjects [(getPos player),["CamoNet_INDP_Curator_F"], 20];
if(playerSide != civilian) exitWith {};
if(life_shovel == 0) exitWith {hint "You have not cultivated the land.";[true,"cocaseed",1] call life_fnc_handleInv; };
if(life_lightdrugfield == 0) exitWith {hint "There is not enough lighting to grow the drugs..";[true,"cocaseed",1] call life_fnc_handleInv; };
if(life_antispam == 10) exitWith {["<t size='3.2' color='#e57300'>You cannot plant more than 10 seeds at a time!</t>"] call life_fnc_alerttwo;
[true,"cannabisseed",1] call life_fnc_handleInv; };
if ((count _tent) == 0) exitWith {hint "You are not close enough to the netting";[true,"cocaseed",1] call life_fnc_handleInv; };
if ((player distance (getMarkerPos "marker_250") > 456)) exitWith 
{
	["You cannot grow cocaine here, it is not a designated zone!","#d32df0"] spawn RLG_fnc_RLGNotificationSystem;
	[true,"cocaseed",1] call life_fnc_handleInv;
};
_tent = (_tent select 0);
life_antispam = life_antispam +1;
//Check to see how many lights are placed...
if(life_lightdrugfield == 1) then { 
_time = 115 + round(random 50);
};
if(life_lightdrugfield == 2) then { 
_time = 100 + round(random 45);
};
if(life_lightdrugfield == 3) then { 
_time = 90 + round(random 40);
};
_halftime = _time/2;
_amount = 3 + round(random 3);
life_action_inUse = true;
player playAction "Medic";
uiSleep 6;
life_action_inUse = false;
hintSilent "The coca seed has been planted.";
uiSleep 4;
closeDialog 0;
hint format ["Coca seeds usually take around %1 seconds to grow.",_time];
uiSleep _halftime;
if ((count _seedcheck) == 0) exitWith {hint "You need to be within 20 metres of the seeds to tend to them. You need to replant now.";[true,"cocaseed",1] call life_fnc_handleInv; };
_seedcheck = (_seedcheck select 0);
hint format ["About %1 seconds left until the drugs grow.",_halftime];
uiSleep _halftime;
hint "Your seeds have grown."; 
player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
uiSleep 1;
hint format ["You have gathered %1 coca plants.",_amount];
[true,"cocaine_unprocessed",_amount] call life_fnc_handleInv;
uiSleep 3;
closeDialog 0;
["You need to recultivate the land to grow more drugs.","#d32df0"] spawn RLG_fnc_RLGNotificationSystem;
["<t size='3.2' color='#e57300'>You need to recultivate the land to grow more drugs.</t>"] call life_fnc_alerttwo;
life_shovel = 0;
life_antispam = 0;