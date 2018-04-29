/*
	File: removeCone.sqf
	Author: Cobra
	
	Description:
	Deletes a cone.
*/
_list = position player nearObjects ["RoadCone_F", 1];
_cone = (_list select 0);
_chck = nearestObjects[getPos player,["RoadCone_F"],1] select 0;
if(isNil "_chck") exitWith {
["<t size='3.2' color='#e57300'>No cones close to you to packup!</t>"] call life_fnc_alerttwo;
};

deleteVehicle _cone;
life_cones = life_cones - 1;
["<t size='3.2' color='#e57300'>You packed up a cone!</t>"] call life_fnc_alerttwo;