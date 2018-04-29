/*
    File: fn_treefixer.sqf
    Author: MrBoolean
	www.rlgroleplay.com
*/
#include "..\..\script_macros.hpp"
_trees = ["b_pistacial1s_ep1","t_populusf2s_ep1","t_populusb2s_ep1","t_ficusb2s_ep1"];
_toFix = [];
 
{
    _tree = str _x;
    _found = false;
    {
        if((_tree find _x) > -1) then {
            _found = true;
        }
    } forEach _trees;
 
    if(_found) then {
        _toFix pushBack _x;
    };
} forEach nearestTerrainObjects [getPos player, [], 10];
 
if(count _toFix > 0) then {
 
    player playAction "Medic";
	uiSleep 2; 
    {
      _x setDamage 0;
    } forEach _toFix;
 
    systemChat str _toFix;
};