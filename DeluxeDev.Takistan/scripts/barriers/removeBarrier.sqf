/*
	File: removeBarrier.sqf
	Author: Cobra
	
	Description:
	Deletes a barrier.
*/
_list = position player nearObjects ["RoadBarrier_F",1.5];
_chck = nearestObjects[getPos player,["RoadBarrier_F"],1.5] select 0;
_barrier = (_list select 0);
if(isNil "_chck") exitWith {
	["<t size='3.2' color='#e57300'>No barriers close to you to packup!</t>"] call life_fnc_alerttwo;
	};

deleteVehicle _barrier;
life_barriers = life_barriers - 1;
["<t size='3.2' color='#e57300'>You packed up a barrier!</t>"] call life_fnc_alerttwo;