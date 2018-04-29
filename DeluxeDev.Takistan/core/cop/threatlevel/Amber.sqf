#include "script_macros.hpp"
/*
	File: Amber.sqf
	Author: Cobra

	Description:
	Changes the state threat level to Amber.
*/
if((FETCH_CONST(life_coplevel)) < 5) exitWith {};
hint "Threat level has been changed. Thanks for using ReduxThreatLevelSystems";
closeDialog 0;
[[1,format["The threat level has been changed to AMBER by: %1",name player]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
[[0,format["The threat level has been changed to AMBER by: %1",name player]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
[[0,format["The threat level has been changed to AMBER by: %1", name player]],"life_fnc_broadcast",independent,false] spawn life_fnc_MP;
[[1,format["The threat level has been changed to AMBER by: %1", name player]],"life_fnc_broadcast",independent,false] spawn life_fnc_MP;
[[0,format["The threat level has been changed to AMBER by: %1", name player]],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;
[[1,format["The threat level has been changed to AMBER by: %1", name player]],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;
tax setVariable ["threatlevel", 2, true];;
