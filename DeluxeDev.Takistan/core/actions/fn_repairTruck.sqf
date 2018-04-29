/*
	File: fn_repairTruck.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main functionality for toolkits, to be revised in later version.
*/
private["_veh","_upp","_ui","_progress","_pgText","_cP","_displayName"];
_veh = cursorTarget;
life_interrupted = false;
if(isNull _veh) exitwith {};
if((player getVariable "restrained")) exitWith {}; 
if((player getVariable "tied")) exitWith {};
if((_veh isKindOf "Car") OR (_veh isKindOf "Ship") OR (_veh isKindOf "Bicycle") OR (_veh isKindOf "Motorbike") OR (_veh isKindOf "Motorcycle") OR (_veh isKindOf "Air") OR (_veh isKindOf "A3L_Tahoe_Base")) then
{
	if("ToolKit" in (items player)) then
	{
		life_action_inUse = true;
		_displayName = getText(configFile >> "CfgVehicles" >> (typeOf _veh) >> "displayName");
		_upp = format[localize "STR_NOTF_Repairing",_displayName];
		//Setup our progress bar.
		disableSerialization;
		5 cutRsc ["life_progress","PLAIN"];
		_ui = uiNameSpace getVariable "life_progress";
		_progress = _ui displayCtrl 38201;
		_pgText = _ui displayCtrl 38202;
		_pgText ctrlSetText format["%2 (1%1)...","%",_upp];
		_progress progressSetPosition 0.01;
		_cP = 0;
		while{true} do
		{
			uiSleep 0.15;
			if(animationState player != "AinvPknlMstpSnonWnonDnon_medic_1") then {
		[[player,"AinvPknlMstpSnonWnonDnon_medic_1"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
		player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
	};
			if (player distance _veh > 8) exitwith {};
			_junior = [life_currentExpPerks, "Perk1"] call mav_ttm_fnc_hasPerk; 
			_normal = [life_currentExpPerks, "Perk1_2"] call mav_ttm_fnc_hasPerk;
			_senior = [life_currentExpPerks, "Perk1_3"] call mav_ttm_fnc_hasPerk;
			_nigger = [life_currentExpPerks, "Perk1_4"] call mav_ttm_fnc_hasPerk;
			_cP = _cP + 0.007;
			if (_junior) then { diag_log "Repair time slightly quicker - junior mechanic"; _cP = _cP + 0.03; };			
			if (_normal) then { diag_log "Repair time slightly quicker - normal mechanic"; _cP = _cP + 0.05; };	
			if (_senior) then { diag_log "Repair time even quicker - senior mechanic"; _cP = _cP + 0.07; };
			if (_nigger) then { diag_log "Repair time even quicker - expert mechanic"; _cP = _cP + 0.07; };
			_progress progressSetPosition _cP;
			_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
			if(_cP >= 1) exitWith {};
			if(!alive player) exitWith {};
			if(player != vehicle player) exitWith {};
			if(life_interrupted) exitWith {};
		};
		
		life_action_inUse = false;
		5 cutText ["","PLAIN"];
		if(life_interrupted) exitWith {life_interrupted = false; titleText[localize "STR_NOTF_ActionCancel","PLAIN"]; life_action_inUse = false;};
		if(player != vehicle player) exitWith {titleText[localize "STR_NOTF_RepairingInVehicle","PLAIN"];};
		_veh setDamage 0;
		titleText[localize "STR_NOTF_RepairedVehicle","PLAIN"];
	} else {
		life_action_inUse = true;
		_displayName = getText(configFile >> "CfgVehicles" >> (typeOf _veh) >> "displayName");
		_upp = format[localize "STR_NOTF_Repairing",_displayName];
		//Setup our progress bar.
		disableSerialization;
		5 cutRsc ["life_progress","PLAIN"];
		_ui = uiNameSpace getVariable "life_progress";
		_progress = _ui displayCtrl 38201;
		_pgText = _ui displayCtrl 38202;
		_pgText ctrlSetText format["%2 (1%1)...","%",_upp];
		_progress progressSetPosition 0.01;
		_cP = 0;

		while{true} do
		{
			uiSleep 1;
			if(animationState player != "AinvPknlMstpSnonWnonDnon_medic_1") then {
				[[player,"AinvPknlMstpSnonWnonDnon_medic_1"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
				player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
			};
			_junior = [life_currentExpPerks, "Perk1"] call mav_ttm_fnc_hasPerk; 
			_normal = [life_currentExpPerks, "Perk1_2"] call mav_ttm_fnc_hasPerk;
			_senior = [life_currentExpPerks, "Perk1_3"] call mav_ttm_fnc_hasPerk;
			_nigger = [life_currentExpPerks, "Perk1_4"] call mav_ttm_fnc_hasPerk;
			_cP = _cP + 0.02;
			if (_junior) then { diag_log "Repair time slightly quicker - junior mechanic"; _cP = _cP + 0.03; };			
			if (_normal) then { diag_log "Repair time slightly quicker - normal mechanic"; _cP = _cP + 0.04; };	
			if (_senior) then { diag_log "Repair time even quicker - senior mechanic"; _cP = _cP + 0.06; };	
			if (_nigger) then { diag_log "Repair time even quicker - senior mechanic"; _cP = _cP + 0.08; };	
			_progress progressSetPosition _cP;
			_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
			if(_cP >= 1) exitWith {};
			if(!alive player) exitWith {};
			if(player != vehicle player) exitWith {};
			if(life_interrupted) exitWith {};
		};
		
		life_action_inUse = false;
		5 cutText ["","PLAIN"];
		if(life_interrupted) exitWith {life_interrupted = false; titleText[localize "STR_NOTF_ActionCancel","PLAIN"]; life_action_inUse = false;};
		if(player != vehicle player) exitWith {titleText[localize "STR_NOTF_RepairingInVehicle","PLAIN"];};
		_veh setDamage 0;
		titleText[localize "STR_NOTF_RepairedVehicle","PLAIN"];
	};
};