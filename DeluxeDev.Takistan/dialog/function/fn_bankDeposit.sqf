#include "..\..\script_macros.hpp"
/*
	File: fn_bankDeposit.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Figure it out.
*/
private "_value";
_value = parseNumber(ctrlText 2702);

//Series of stupid checks
if(CASH == 0) exitWith {
["<t size='3.2' color='#e57300'>You cannot deposit money when you have no cash!</t>"] call life_fnc_alerttwo;

closeDialog 1;
};
if(_value > 999999) exitWith {hint "You cannot deposit more than $999,999 at a time!";};
if(_value < 0) exitWith {};
if(!([str(_value)] call life_fnc_isnumeric)) exitWith {hint localize "STR_ATM_notnumeric"};
if(_value > CASH) exitWith {hint localize "STR_ATM_NotEnoughCash"};

CASH = CASH - _value;
BANK = BANK + _value;

hint format[localize "STR_ATM_DepositSuccess",[_value] call life_fnc_numberText];
[] call life_fnc_atmMenu;
[6] call SOCK_fnc_updatePartial;
