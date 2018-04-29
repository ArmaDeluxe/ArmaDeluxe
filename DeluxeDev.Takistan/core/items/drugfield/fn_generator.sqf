/*
	File: fn_generator.sqf
	Author: Cobra
	
	Description:
	Place down a generator.
*/
if(playerSide != civilian) exitWith {}; 
_tent = nearestObjects [(getPos player),["CamoNet_INDP_Curator_F"], 15];
if ((count _tent) == 0) exitWith {["You cannot do that without netting nearby!","#d32df0"] spawn RLG_fnc_RLGNotificationSystem;[true,"generator",1] call life_fnc_handleInv; };
_tent = (_tent select 0);
if(vehicle player != player) exitWith {[true,"generator",1] call life_fnc_handleInv; ["You cannot place that while you're inside of a vehicle.","#d32df0"] spawn RLG_fnc_RLGNotificationSystem;};
if (isOnRoad (getPos player)) exitWith {[true,"generator",1] call life_fnc_handleInv; ["You cannot place that on a road, you will be seen!","#d32df0"] spawn RLG_fnc_RLGNotificationSystem;};
if (count ((getPos player) isFlatEmpty [0,0,0.5,10,0,false,player]) == 0) exitWith {["The area is too steep to place that here.","#d32df0"] spawn RLG_fnc_RLGNotificationSystem;[true,"generator",1] call life_fnc_handleInv; };
if ((player distance (getMarkerPos "civ_spawn_1") < 500) OR (player distance (getMarkerPos "civ_spawn_3") < 500) OR (player distance (getMarkerPos "civ_spawn_2") < 500) OR (player distance (getMarkerPos "cocaine processing") < 1500) OR (player distance (getMarkerPos "Weed_p_1_1") < 1000)) exitWith 
{
	["You cannot grow drugs here, it is too dangerous!","#d32df0"] spawn RLG_fnc_RLGNotificationSystem;
	[true,"generator",1] call life_fnc_handleInv;
};
if(life_generatordrugfield == 1) exitWith {[true,"generator",1] call life_fnc_handleInv; ["You already have a generator in active deployment.","#d32df0"] spawn RLG_fnc_RLGNotificationSystem;};
life_generatordrugfield = 1;
player playAction "Medic";
uiSleep 6;
_pos = position player;
_generator = "Land_Portable_generator_F" createVehicle position player;
_generator setpos _pos;
_generator setDir 90;
life_action_generatorPickup = player addaction [("<t color=""#FF3300"">" + ("Pack Up Generator") +"</t>"),"core\items\drugfield\fn_packupGenerator.sqf"];
