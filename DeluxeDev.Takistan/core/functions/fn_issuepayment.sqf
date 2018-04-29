/*
	Author: Cobra
	www.rlgroleplay.com
*/
if (!alive player) exitWith {};
_double = [life_currentExpPerks, "Perk10_1"] call mav_ttm_fnc_hasPerk; 
if (_double) then {
["playingdouble"] spawn mav_ttm_fnc_addExp;
} else{
["playing"] spawn mav_ttm_fnc_addExp;
};
_paycheck = 0;
if (playerside == west) then {
	_paycheck = 100;
} else {
	_paycheck = 275;
};
bann = bann + _paycheck;