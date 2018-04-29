/*
	File: deployBarrier.sqf
	Author: Cobra
	
	Description:
	Deploys a barrier.
*/
if(vehicle player != player) exitWith {
["<t size='3.2' color='#e57300'>You cannot do that while inside of a vehicle!</t>"] call life_fnc_alerttwo;
};
if(life_barriers == 6) exitWith {
["<t size='3.2' color='#e57300'>You already have the maximum amount of barriers deployed!</t>"] call life_fnc_alerttwo;
};

_pos = position player;
_barrier = "RoadBarrier_F" createVehicle ([0,0,0]);
_dir = getDir player;
_barrier setpos _pos;
_barrier setDir _dir;
_barrier allowDamage false;
_barrier enableSimulation false;
life_barriers = life_barriers + 1;
["<t size='3.2' color='#e57300'>You placed a barrier.</t>"] call life_fnc_alerttwo;