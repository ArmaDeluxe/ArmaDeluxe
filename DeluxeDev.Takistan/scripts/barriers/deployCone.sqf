/*
	File: deployCone.sqf
	Author: Cobra
	
	Description:
	Deploys a cone.
*/
if(vehicle player != player) exitWith {
	["<t size='3.2' color='#e57300'>You cannot do that while inside of a vehicle!</t>"] call life_fnc_alerttwo;
	};
if(life_cones == 12) exitWith {
["<t size='3.2' color='#e57300'>You already have the maximum amount of cones deployed!</t>"] call life_fnc_alerttwo;
};


_pos = position player;
_cone = "RoadCone_F" createVehicle ([0,0,0]);
_dir = getDir player;
_cone setpos _pos;
_cone setDir _dir;
_cone allowDamage false;
_cone enableSimulation false;
life_cones = life_cones + 1;
["<t size='3.2' color='#e57300'>You placed a cone.</t>"] call life_fnc_alerttwo;