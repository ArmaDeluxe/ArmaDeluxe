/*
	File: fn_timedCarBomb.sqf
	Author: Obamacare
	www.armaliferp.co.uk
*/
    private ["_uiSleep","_DankMeme","_IED"];
    _DankMeme = ctrltext 1400;
    _Characters = toArray (_DankMeme);
    _allowed = toArray("0123456789");
    _letters = false;
    {
        if (!(_x in _allowed)) exitWith {_letters = true;};
    } forEach _Characters;
    if (_letters) exitWith {hint 'You must only enter numbers into the timer.';};
    _uiSleep = parseNumber(_DankMeme);
    hint format["Timer set for %1 seconds.", _uiSleep];
    closedialog 0;
    if(vehicle player == player) exitwith {
    ["<t size='3.2' color='#e57300'>You must be inside of a vehicle to use this!</t>"] call life_fnc_alerttwo;
	};
    _IED = "IEDLandBig_Remote_Ammo" createvehicle getpos player;
    _IED attachTo [vehicle player, [0, 0, -1] ];
    uiSleep _uiSleep;
    _IED setdamage 1;