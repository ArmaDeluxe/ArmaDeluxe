/*
        File: fn_seizeWeapon.sqf
        Author: Skalicon
	Edited By: Travis Boi
        
        Description:
	Sieze's Objects or Weapons on Ground
*/
_clear = nearestObjects [player,["weaponholder"],3];
_clear = _clear + nearestObjects [player,["groundWeaponHolder"],3];
_destroyed = 0;
for "_i" from 0 to count _clear - 1 
do
{
        _destroyed = _destroyed + 1;
        deleteVehicle (_clear select _i);
        uiSleep 0.056;
};
_destroyed = _destroyed - 1;
["<t size='3.2' color='#e57300'>You seized the items.</t>"] call life_fnc_alerttwo;