#include "..\..\script_macros.hpp"
/*
	File: fn_blastingCharge.sqf
	Author: Bryan "Tonic" Boardwine
	Edits: Cobra

	Description:
	Blasting charge is used for the federal reserve vault and nothing  more.. Yet.
*/
private["_vault","_handle"];
_vault = param [0,ObjNull,[ObjNull]];

if(isNull _vault) exitWith {}; //Bad object
if(typeOf _vault != "Land_CargoBox_V1_F") exitWith {hint localize "STR_ISTR_Blast_VaultOnly"};
if(_vault GVAR ["chargeplaced",false]) exitWith {hint localize "STR_ISTR_Blast_AlreadyPlaced"};
if(_vault GVAR ["safe_open",false]) exitWith {hint localize "STR_ISTR_Blast_AlreadyOpen"};
if({side _x == west} count playableUnits < (LIFE_SETTINGS(getNumber,"cops_online_min"))) exitWith {
 	hint format [localize "STR_Civ_NotEnoughCops",(LIFE_SETTINGS(getNumber,"cops_online_min"))]
};
if(!([false,"blastingcharge",1] call life_fnc_handleInv)) exitWith {}; //Error?

_vault SVAR ["chargeplaced",true,true];
[[1,format["DISPATCH: BANK ROBBERY IN PROGRESS! ALL UNITS RESPOND!!!",_storename]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
[[0,format["DISPATCH: BANK ROBBERY IN PROGRESS! ALL UNITS RESPOND!!!",_storename]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
[[0,format["TAKISTAN NEWS: BANK ROBBERY IN PROGRESS. PLEASE STAY AWAY FROM THE BANK!",_storename]],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;
[[1,format["TAKISTAN NEWS: BANK ROBBERY IN PROGRESS. PLEASE STAY AWAY FROM THE BANK!",_storename]],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;
uiSleep 2;
[[0,format["TAKISTAN NEWS: BANK ROBBERY IN PROGRESS. PLEASE STAY AWAY FROM THE BANK!",_storename]],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;
[[1,format["TAKISTAN NEWS: BANK ROBBERY IN PROGRESS. PLEASE STAY AWAY FROM THE BANK!",_storename]],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;
hint localize "STR_ISTR_Blast_KeepOff";
_handle = [] spawn life_fnc_demoChargeTimer;
[] remoteExec ["life_fnc_demoChargeTimer",west];

waitUntil {scriptDone _handle};
uiSleep 0.9;
if(!(fed_bank getVariable["chargeplaced",false])) exitWith {hint localize "STR_ISTR_Blast_Disarmed"};

_bomb = "Bo_GBU12_LGB_MI10" createVehicle [getPosATL fed_bank select 0, getPosATL fed_bank select 1, (getPosATL fed_bank select 2)+0.5];
fed_bank SVAR ["chargeplaced",false,true];
fed_bank SVAR ["safe_open",true,true];

hint localize "STR_ISTR_Blast_Opened";
