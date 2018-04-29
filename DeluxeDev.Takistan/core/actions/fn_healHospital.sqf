/*
	File: fn_healHospital.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Doesn't matter, will be revised later.
*/
["<t size='3.2' color='#e57300'>Stay still, you are being healed..</t>"] call life_fnc_alerttwo;

uiSleep 8;

if(player distance (_this select 0) > 5) exitWith {
	["<t size='3.2' color='#e57300'>You need to be within 5m while the doctor is healing you.</t>"] call life_fnc_alerttwo;
};
["<t size='3.2' color='#e57300'>The doctor has patched you up.</t>"] call life_fnc_alerttwo;
player setDamage 0;
