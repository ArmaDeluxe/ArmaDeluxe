// core/items/fn_engineBomb.sqf
private ["_veh","_eng","_exp"];
_veh = vehicle player;
["<t size='3.2' color='#e57300'>You installed the engine car bomb.</t>"] call life_fnc_alerttwo;
if (_veh == player) exitWith {};
if (!(alive player) or !(alive _veh) ) exitWith {};
 
 
while {(!(isEngineOn _veh))} do {
    uiSleep 1;
};
 
if (isEngineOn _veh) then {
    {
        if (!isNull _x or  !alive _x) then{
            _x setDamage 1;
        };
    } forEach (crew _veh);
    _veh setDamage 1;
    _exp = "DemoCharge_Remote_Ammo_Scripted" createVehicle [0,0,40];
    _exp setPosASL (getPosASL _veh);
    _exp setDamage 1;
};