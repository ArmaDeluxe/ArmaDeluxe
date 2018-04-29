#include "..\..\script_macros.hpp"
/*
The memes keep flowing
*/
if(CASH == 0) exitWith {
["<t size='3.2' color='#e57300'>You cannot deposit money when you have no cash!</t>"] call life_fnc_alerttwo;
closeDialog 1;
};
["<t size='3.2' color='#e57300'>You have deposited all of your cash!</t>"] call life_fnc_alerttwo;
_value = CASH;
ADD(BANK,_value);
SUB(CASH,_value);
[] call life_fnc_atmMenu;
[6] call SOCK_fnc_updatePartial; //Silent Sync
