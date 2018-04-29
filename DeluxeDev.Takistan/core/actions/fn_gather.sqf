#include "..\..\script_macros.hpp"
/*
	File: fn_gather.sqf
	Author: Devilfloh

	Description:
	Main functionality for gathering.
*/
private["_maxGather","_resource","_amount","_maxGather","_requiredItem"];
if (life_action_inUse) exitWith {};
if (cobra_mining == 1) exitWith { hint "Slow down!"; };
if((vehicle player) != player) exitWith {};
if((player GVAR "restrained")) exitWith {hint localize "STR_NOTF_isrestrained";};
if((player GVAR "playerSurrender")) exitWith {hint localize "STR_NOTF_surrender";};

life_action_inUse = true;
cobra_mining = 1;
_zone = "";
_requiredItem = "";
_zoneSize = (getNumber(missionConfigFile >> "CfgGather" >> "zoneSize"));
_exit = false;

_resourceCfg = missionConfigFile >> "CfgGather" >> "Resources";
_skill1 = [life_currentExpPerks, "Perk7_1"] call mav_ttm_fnc_hasPerk; 
_skill2 = [life_currentExpPerks, "Perk7_1_1"] call mav_ttm_fnc_hasPerk; 
_morexp = [life_currentExpPerks, "Perk7_2"] call mav_ttm_fnc_hasPerk;
for[{_i = 0},{_i < count(_resourceCfg)},{_i = _i + 1}] do {

	_curConfig = (_resourceCfg select _i);
	_resource = configName _curConfig;
	_maxGather = getNumber(_curConfig >> "amount");
	_resourceZones = getArray(_curConfig >> "zones");
	_requiredItem = getText(_curConfig >> "item");

	{
		if((player distance (getMarkerPos _x)) < _zoneSize) exitWith {_zone = _x;};
	} forEach _resourceZones;

	if(_zone != "") exitWith {};
};

if(_zone == "") exitWith {life_action_inUse = false; cobra_mining = 0;};

if (_requiredItem != "") then
{
	_valItem = GVAR_MNS "life_inv_" + _requiredItem;

	if (_valItem < 1) exitWith
	{
		switch (_requiredItem) do
		{
			case "pickaxe": {titleText[(localize "STR_NOTF_Pickaxe"),"PLAIN"];};
		};
		life_action_inUse = false;
		cobra_mining = 0;
		_exit = true;
	};
};

if(_exit) exitWith {life_action_inUse = false; cobra_mining = 0;};

_amount = round(random(_maxGather)) + 1;
_diff = [_resource,_amount,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
if(_diff == 0) exitWith {
	hint localize "STR_NOTF_InvFull";
	life_action_inUse = false;
	cobra_mining = 0;
};

switch (_requiredItem) do
{
	case "pickaxe": {player say3D "mining";};
	default {player say3D "harvest";};
};

_amt = 4;
_uiSleep = 0.5;
_enduiSleep = 1;
if (_skill1) then {_amt = 3.6; _uiSleep = 0.45;_enduiSleep = 0.9;};
if (_skill2) then {_amt = 3.4;_uiSleep = 0.425;_enduiSleep = 0.85;};

for "_i" from 0 to _amt do
{
	player playMoveNow "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
	uiSleep 0.5;
};

if(([true,_resource,_diff] call life_fnc_handleInv)) then
{
	_itemName = M_CONFIG(getText,"VirtualItems",_resource,"displayName");
	titleText[format[localize "STR_NOTF_Gather_Success",(localize _itemName),_diff],"PLAIN"];
	_chance = round (random 250); 
//WOW WHAT A NICE MEME
	if (_chance < 100) then { 
		if (_chance < 15) then {
			if (_morexp) then {
				["miningbigmore"] spawn mav_ttm_fnc_addExp; 
			} else {
				["miningbig"] spawn mav_ttm_fnc_addExp; 
			};
		} else { 
			if (_morexp) then {
				["miningextramore"] spawn mav_ttm_fnc_addExp; 
			} else {
				["miningextra"] spawn mav_ttm_fnc_addExp; 
			};
		}; 
		} else { 
			if (_morexp) then {
				["miningmore"] spawn mav_ttm_fnc_addExp; 
			} else {
				["mining"] spawn mav_ttm_fnc_addExp; 
			};	
		};
	};

uiSleep _enduiSleep;
life_action_inUse = false;
cobra_mining = 0;