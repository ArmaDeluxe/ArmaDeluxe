#include "..\..\script_macros.hpp"
/*
	File: fn_impoundAction.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Impounds the vehicle
*/
private["_vehicle","_type","_time","_price","_vehicleData","_upp","_ui","_progress","_pgText","_cP","_filters"];
_vehicle = param [0,ObjNull,[ObjNull]];
_filters = ["Car","Air","Ship","Tank"];
if(!((KINDOF_ARRAY(_vehicle,_filters)))) exitWith {};
if(player distance cursorTarget > 10) exitWith {};

_vehicleData = _vehicle GVAR ["vehicle_info_owners",[]];
if(EQUAL((count _vehicleData),0)) exitWith {deleteVehicle _vehicle}; //Bad vehicle.
life_action_inUse = true;
_vehicleName = FETCH_CONFIG2(getText,CONFIG_VEHICLES,(typeOf _vehicle),"displayName");
[0,"STR_NOTF_BeingImpounded",true,[SEL(SEL(_vehicleData,0),1),_vehicleName]] remoteExecCall ["life_fnc_broadcast",RCLIENT];

_upp = localize "STR_NOTF_Impounding";
//Setup our progress bar.
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = GVAR_UINS "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["%2 (1%1)...","%",_upp];
_progress progressSetPosition 0.01;
_cP = 0.01;

while{true} do {
	uiSleep 0.09;
	_speed = [life_currentExpPerks, "Perk6_2"] call mav_ttm_fnc_hasPerk;
	_memes = getPlayerUID player;
	_cP = _cP + 0.03;
	if (_speed) then { _cP = _cP + 0.05; };
	_progress progressSetPosition _cP;
	_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
	if(_cP >= 1) exitWith {};
	if(player distance _vehicle > 10) exitWith {};
	if(!alive player) exitWith {};
};

5 cutText ["","PLAIN"];

if(player distance _vehicle > 10) exitWith {hint localize "STR_NOTF_ImpoundingCancelled"; life_action_inUse = false;};
if(!alive player) exitWith {life_action_inUse = false;};

if(EQUAL(count crew _vehicle,0)) then {
	if(!(KINDOF_ARRAY(_vehicle,_filters))) exitWith {life_action_inUse = false;};
	_type = FETCH_CONFIG2(getText,CONFIG_VEHICLES,(typeOf _vehicle),"displayName");
	switch (true) do {
		case (_vehicle isKindOf "Car"): {_price = LIFE_SETTINGS(getNumber,"impound_car");};
		case (_vehicle isKindOf "Ship"): {_price = LIFE_SETTINGS(getNumber,"impound_boat");};
		case (_vehicle isKindOf "Air"): {_price = LIFE_SETTINGS(getNumber,"impound_air");};
		case (_vehicle isKindOf "Tank"): {_price = LIFE_SETTINGS(getNumber,"impound_tank");};
	};

	life_impound_inuse = true;

	if(life_HC_isActive) then {
		[_vehicle,true,player] remoteExec ["HC_fnc_vehicleStore",HC_Life];
	} else {
		[_vehicle,true,player] remoteExec ["TON_fnc_vehicleStore",RSERV];
	};

	waitUntil {!life_impound_inuse};
	_price1 = [life_currentExpPerks, "Perk6_1"] call mav_ttm_fnc_hasPerk;
	_price2 = [life_currentExpPerks, "Perk6_1_1"] call mav_ttm_fnc_hasPerk;
	_newprice = _price;
	if (_price1) then { _newprice = _price * 2; };
	if (_price2) then { _newprice = _price * 3; };
	if (_vehicle in life_vehicles) exitWith {hint "You impounded your own vehicle."; life_action_inUse = false;closeDialog 0;};
    hint format[localize "STR_NOTF_Impounded",_type,_newprice];
	ADD(BANK,_newprice);
	["miningbig"] spawn mav_ttm_fnc_addExp;;
} else {
	hint localize "STR_NOTF_ImpoundingCancelled";
};

life_action_inUse = false;
