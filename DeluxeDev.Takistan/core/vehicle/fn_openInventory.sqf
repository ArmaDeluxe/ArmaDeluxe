#include "..\..\script_macros.hpp"
/*
	File: fn_openInventory.sqf
	Author: Bryan "Tonic" Boardwine
	Edited: Cobra the meme lord

	Description:
	Starts the initialization of vehicle virtual inventory menu.
*/
private["_vehicle","_veh_data"];
if(dialog) exitWith {};
if (trunkopened == 1) exitWith {};
trunkopened = 1;
_vehicle = [_this,0,Objnull,[Objnull]] call BIS_fnc_param;
if(isNull _vehicle OR !(_vehicle isKindOf "Car" OR _vehicle isKindOf "Air" OR _vehicle isKindOf "Ship" OR _vehicle isKindOf "Box_IND_Grenades_F" OR _vehicle isKindOf "B_supplyCrate_F")) exitWith {trunkopened = 0;}; //Either a null or invalid vehicle type.
if((_vehicle getVariable ["trunk_in_use",false])) exitWith {trunkopened = 0; hint localize "STR_MISC_VehInvUse"};
_time = 1 + round(random 9); 
while {_time > 0} do {
hintsilent format ["Opening inventory in %1 seconds.",_time];
uiSleep 1;
_time = _time - 1;
};
closeDialog 0;
if((_vehicle getVariable ["trunk_in_use",false])) exitWith {trunkopened = 0; hint localize "STR_MISC_VehInvUse"};
_vehicle setVariable["trunk_in_use",true,true];
_vehicle setVariable["trunk_in_use_by",player,true];
hint "Inventory opened successfully!";
trunkopened = 0;
if(!createDialog "TrunkMenu") exitWith {hint localize "STR_MISC_DialogError";}; //Couldn't create the menu?
disableSerialization;

if(_vehicle isKindOf "Box_IND_Grenades_F" OR _vehicle isKindOf "B_supplyCrate_F") then {
	ctrlSetText[3501,format[(localize "STR_MISC_HouseStorage")+ " - %1",getText(configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "displayName")]];
} else {
	ctrlSetText[3501,format[(localize "STR_MISC_VehStorage")+ " - %1",getText(configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "displayName")]];
};

_veh_data = [_vehicle] call life_fnc_vehicleWeight;

if(_veh_data select 0 == -1) exitWith {closeDialog 0; _vehicle setVariable["trunk_in_use",false,true]; hint localize "STR_MISC_NoStorageVeh";};

ctrlSetText[3504,format[(localize "STR_MISC_Weight")+ " %1/%2",_veh_data select 1,_veh_data select 0]];
[_vehicle] call life_fnc_vehInventory;
life_trunk_vehicle = _vehicle;

_vehicle spawn {
	waitUntil {isNull (findDisplay 3500)};
	_this setVariable["trunk_in_use",false,true];
	if(_this isKindOf "Box_IND_Grenades_F" OR _this isKindOf "B_supplyCrate_F") then {
	
		if(life_HC_isActive) then {
			[_this] remoteExecCall ["HC_fnc_updateHouseTrunk",HC_Life];
		} else {
			[_this] remoteExecCall ["TON_fnc_updateHouseTrunk",2];
		};
	};
};

if(EQUAL(LIFE_SETTINGS(getNumber,"save_veh_virtualItems"),1)) then {
	_vehicle spawn {
		waitUntil {isNull (findDisplay 3500)};
		_this setVariable["trunk_in_use",false,true];
		if((_this isKindOf "Car") || (_this isKindOf "Air") || (_this isKindOf "Ship")) then {
			[] call SOCK_fnc_updateRequest;
			
			if(life_HC_isActive) then {
				[_this,2] remoteExecCall ["HC_fnc_vehicleUpdate",HC_Life];
			} else {
				[_this,2] remoteExecCall ["TON_fnc_vehicleUpdate",2];
			};
		};
	};
};