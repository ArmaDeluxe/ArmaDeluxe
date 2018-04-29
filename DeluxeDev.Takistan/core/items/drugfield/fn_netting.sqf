/*
	File: fn_netting.sqf
	Author: Cobra
	
	Description:
	Place down netting.
*/
if(playerSide != civilian) exitWith {}; 
if(vehicle player != player) exitWith {[true,"netting",1] call life_fnc_handleInv; ["You cannot place that while you're inside of a vehicle.","#d32df0"] spawn RLG_fnc_RLGNotificationSystem;};
if (isOnRoad (getPos player)) exitWith {[true,"netting",1] call life_fnc_handleInv; ["You cannot place that on a road, you will be seen!","#d32df0"] spawn RLG_fnc_RLGNotificationSystem;};
if (count ((getPos player) isFlatEmpty [0,0,0.5,10,0,false,player]) == 0) exitWith {["The area is too steep to place that here.","#d32df0"] spawn RLG_fnc_RLGNotificationSystem;[true,"netting",1] call life_fnc_handleInv; };
if ((player distance (getMarkerPos "marker_250") > 456) && (player distance (getMarkerPos "marker_248") > 456)) exitWith 
{
	["You cannot grow drugs here, it is not a designated zone!","#d32df0"] spawn RLG_fnc_RLGNotificationSystem;
	[true,"netting",1] call life_fnc_handleInv;
};
if(life_nettingdrugfield == 1) exitWith {[true,"netting",1] call life_fnc_handleInv; ["You already have netting in active deployment.","#d32df0"] spawn RLG_fnc_RLGNotificationSystem;};
life_nettingdrugfield = 1;
player playAction "Medic";
uiSleep 6;
_pos = position player;
_netting = "CamoNet_INDP_Curator_F" createVehicle ([0,0,0]);
_dir = getDir player;
_netting setpos _pos;
_netting setDir _dir;
life_action_nettingPickup = player addaction [("<t color=""#FF3300"">" + ("Pack Up Netting") +"</t>"),"core\items\drugfield\fn_packupNetting.sqf"];
