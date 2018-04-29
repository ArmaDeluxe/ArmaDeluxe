/*
	File: fn_light.sqf
	Author: Cobra
	
	Description:
	Place down a light.
*/
if(playerSide != civilian) exitWith {}; 
_generator = nearestObjects [(getPos player),["Land_Portable_generator_F"], 15];
if ((count _generator) == 0) exitWith {["You cannot place lights without a generator!","#d32df0"] spawn RLG_fnc_RLGNotificationSystem; [true,"light",1] call life_fnc_handleInv;};
_generator = (_generator select 0);
if(vehicle player != player) exitWith {[true,"light",1] call life_fnc_handleInv; ["You cannot place that while you're inside of a vehicle.","#d32df0"] spawn RLG_fnc_RLGNotificationSystem;};
if (isOnRoad (getPos player)) exitWith {[true,"light",1] call life_fnc_handleInv; ["You cannot place that on a road, you will be seen!","#d32df0"] spawn RLG_fnc_RLGNotificationSystem;};
if (count ((getPos player) isFlatEmpty [0,0,0.5,10,0,false,player]) == 0) exitWith {["The area is too steep to place that here.","#d32df0"] spawn RLG_fnc_RLGNotificationSystem;[true,"light",1] call life_fnc_handleInv; };
if ((player distance (getMarkerPos "civ_spawn_1") < 500) OR (player distance (getMarkerPos "civ_spawn_3") < 500) OR (player distance (getMarkerPos "civ_spawn_2") < 500) OR (player distance (getMarkerPos "cocaine processing") < 1500) OR (player distance (getMarkerPos "Weed_p_1_1") < 1000)) exitWith 
{
	["You cannot grow drugs here, it is too dangerous!","#d32df0"] spawn RLG_fnc_RLGNotificationSystem;
	[true,"light",1] call life_fnc_handleInv;
};
if(life_lightdrugfield == 3) exitWith {[true,"light",1] call life_fnc_handleInv; ["You already have the maximum of 3 lights in active deployment.","#d32df0"] spawn RLG_fnc_RLGNotificationSystem;};
life_lightdrugfield = life_lightdrugfield + 1;
player playAction "Medic";
uiSleep 6;
_pos = position player;
_light = "Land_PortableLight_double_F" createVehicle ([0,0,0]);
_dir = getDir player;
_light setpos _pos;
_light setDir _dir;
life_action_lightPickup = player addaction [("<t color=""#FF3300"">" + ("Pack Up Light") +"</t>"),"core\items\drugfield\fn_packupLight.sqf"];