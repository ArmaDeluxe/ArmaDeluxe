#include "..\..\script_macros.hpp"
/*
	File: fn_revived.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	THANK YOU JESUS I WAS SAVED!
*/
private["_medic","_dir","_reviveCost"];
_medic = param [0,"Unknown Medic",[""]];
diag_log rlg_dead_gear;
player setUnitLoadout rlg_dead_gear;
rlg_dead_gear = [];
_reviveCost = LIFE_SETTINGS(getNumber,"revive_fee");

//[life_save_gear] spawn life_fnc_loadDeadGear;
life_corpse SVAR ["realname",nil,true]; //Should correct the double name sinking into the ground.
[life_corpse] remoteExecCall ["life_fnc_corpse",RANY];

_dir = getDir life_corpse;
hint format[localize "STR_Medic_RevivePay",_medic,[_reviveCost] call life_fnc_numberText];

closeDialog 0;
life_deathCamera cameraEffect ["TERMINATE","BACK"];
camDestroy life_deathCamera;

//Take fee for services.
if(BANK > _reviveCost) then {
	SUB(BANK,_reviveCost);
} else {
	BANK = 0;
};

//Bring me back to life.
player setDir _dir;
player setPosASL (visiblePositionASL life_corpse);
life_corpse SVAR ["Revive",nil,TRUE];
life_corpse SVAR ["name",nil,TRUE];
[life_corpse] remoteExecCall ["life_fnc_corpse",RANY];
deleteVehicle life_corpse;

life_is_alive = true;

player SVAR ["Revive",nil,TRUE];
player SVAR ["name",nil,TRUE];
player SVAR ["Reviving",nil,TRUE];
[] call life_fnc_hudUpdate; //Request update of hud.
// Hud init
_file = compile preprocessFile "scripts\clientHud.sqf";
[] spawn _file;
[] call SOCK_fnc_updateRequest;

//Check combat level and reduce recoil by that amount..
//Best recoil skill (Lowest arma recoil)
1 cutText ["", "BLACK IN", 15];
if (_combat1) exitWith {
player setUnitRecoilCoefficient 0.95;
};

if (_combat2) exitWith {
player setUnitRecoilCoefficient 0.9;
};