/*
	Strip search

	fn_stripSearch.sqf
	Pydrex
*/
private["_hgItems","_holder","_items","_pwItems","_safeItems","_swItems","_weps"];
if(!(player getVariable "restrained")) exitWith {}; 

0 cutText["You was patted down.","PLAIN"];

_safeItems = ["FirstAidKit"];
_weps = [];
_all = [];

_pwItems = primaryWeaponItems player;
_swItems = secondaryWeaponItems player;
_hgitems = handGunItems player;
_assItems = assignedItems player;
_invItems = items player;
_weapons = weapons player;

{
	_temp = _x;
	{
		if(!(_x in _weapons) && !(_x in _safeItems)) then
		{
			_all pushBack _x;

		};
	}forEach _temp;

} forEach [_assItems,_invItems];

_mags = magazinesAmmoFull player;
{player removeMagazine _x} foreach (magazines player);

if(primaryWeapon player != "") then
{
	_weps pushBack (primaryWeapon player);
	player removeWeapon (primaryWeapon player);

};

if(secondaryWeapon player != "") then
{
	_weps pushBack (secondaryWeapon player);
	player removeWeapon (secondaryWeapon player);

};

if(handgunWeapon player != "") then
{
	_weps pushBack (handgunWeapon player);
	player removeWeapon (handgunWeapon player);
};

{
	_items = _x;
	{
		player unassignItem _x;
		player removeItem _x;
	}forEach _items;

}forEach [_hgItems, _pwItems, _swItems, _all];

{
	if (!(_x in _safeItems)) then
	{
		player removeWeapon _x;
		_weps pushBack _x;
	};

}forEach (weapons player);


 _holder = createVehicle [ "GroundWeaponHolder", getPosATL player, [], 0, "CAN_COLLIDE" ];

{
	_holder addWeaponCargoGlobal [_x,1];
}forEach _weps;

{
	_holder addMagazineCargoGlobal [_x select 0,1];
}forEach _mags;

{
	_items = _x;
	{
		_holder addItemCargoGlobal [_x,1];
	}forEach _items;
}forEach [_hgItems, _pwItems, _swItems, _all];

player say3D "Patdown";
_uniform = uniform player;
_vest = vest player;
_backpack = backPack player;
_goggles = goggles player;
_headgear = headgear player;
uiSleep 0.25;
removeBackpackglobal player;
removeVest player;
removeUniform player;
removeGoggles player;
removeHeadgear player;
if (_uniform != "") then {
_holder addWeaponCargoGlobal [_uniform,1];
};
if (_vest != "") then {
_holder addWeaponCargoGlobal [_vest,1];
};
if (_backpack != "") then {
_holder addBackPackCargoGlobal [_backpack,1];
};
if (_goggles != "") then {
_holder addItemCargoGlobal [_goggles,1];
};
if (_headgear != "") then {
_holder additemCargoGlobal [_headgear,1];
};
[3] spawn SOCK_fnc_updatePartial;
