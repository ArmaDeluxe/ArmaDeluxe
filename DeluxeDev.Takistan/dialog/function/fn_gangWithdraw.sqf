#include "..\..\script_macros.hpp"
/*
The memes keep flowing
*/
if(BANK == 0) exitWith {
["<t size='3.2' color='#e57300'>You cannot withdraw money when you have no money in your bank!</t>"] call life_fnc_alerttwo;
closeDialog 1;
};
["<t size='3.2' color='#e57300'>You have withdrew all of the money out of your bank account!</t>"] call life_fnc_alerttwo;
_value = BANK;
ADD(CASH,_value);
SUB(BANK,_value);
[] call life_fnc_atmMenu;
[6] call SOCK_fnc_updatePartial; //Silent Sync
