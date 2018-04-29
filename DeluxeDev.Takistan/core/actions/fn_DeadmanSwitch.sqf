/*
	File: fn_DeadmanSwitch.sqf
	Author: Cobra
	
	Description:
	Activates/deactivates a suicide vest dead man switch.
*/
private["_explosion"];
if(!(vest player in ["UMI_Bomb_Vest_Camo"])) exitWith {};

if (life_suicidedeadman == 1) exitWith {
life_suicidedeadman = 0; 
["<t size='3.2' color='#e57300'>Deadman switch disengaged.</t>"] call life_fnc_alerttwo;
};

life_suicidedeadman = 1; 
["<t size='3.2' color='#e57300'>Deadman switch engaged.</t>"] call life_fnc_alerttwo;

waitUntil {
!(vest player in ["UMI_Bomb_Vest_Camo"]) or !(alive player)
};
    if (life_suicidedeadman == 1) exitWith {
	life_suicidedeadman = 0; 
    [[1,format["TAKISTAN NEWS: A SUICIDE BOMB WAS JUST DETONATED!",_storename]],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;
    [[1,format["TAKISTAN NEWS: A SUICIDE BOMB WAS JUST DETONATED!",_storename]],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;
    [[1,format["TAKISTAN NEWS: A SUICIDE BOMB WAS JUST DETONATED!",_storename]],"life_fnc_broadcast",independent,false] spawn life_fnc_MP;
    [[1,format["TAKISTAN NEWS: A SUICIDE BOMB WAS JUST DETONATED!",_storename]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
	_explosion = "Bo_Mk82" createVehicle [0,0,9999];
    _explosion setPosASL (getPosASL player);
    _explosion setDamage 1;
    removeVest player;
    removeHeadgear player:
    removeGoggles player;
    removeVest player;
    removeBackpack player;
    removeUniform player;
    removeAllWeapons player:
    removeAllAssignedItems player;
    if(alive player) then {
	player setDamage 1;
	};
};
    [] call SOCK_fnc_updateRequest;