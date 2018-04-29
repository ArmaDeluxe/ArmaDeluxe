TR8_playerByName = {
	_name = [_this,0,"",[""]] call BIS_fnc_param;
	_unit = objNull;
	{
		if(name _x == _name) then {_unit = _x;};
	} forEach playableUnits;
	_unit
};

TR8_playerByUID = {
	_pid = [_this,0,"",[""]] call BIS_fnc_param;
	_unit = objNull;
	{
		if(getPlayerUID _x == _pid) then {_unit = _x;};
	} forEach playableUnits;
	_unit
};

TR8_isPlayerUIDActive = {
	_pid = [_this,0,"",[""]] call BIS_fnc_param;
	_unit = [_pid] call TR8_playerByUID;
	_on = true;
	if(isNull _unit) then {_on = false;};
	_on
};

TR8_isPlayerNameActive = {
	_name = [_this,0,"",[""]] call BIS_fnc_param;
	_unit = [_name] call TR8_playerByName;
	_on = true;
	if(isNull _unit) then {_on = false;};
	_on
};

TR8_percentChance = {
	_percent = [_this,0,0,[0]] call BIS_fnc_param;
	_dice = random(100);
	_ret = false;
	if(_dice <= _percent) then {_ret = true;};
	_ret
};

TR8_closeAllDialogs = {
	while {dialog} do {
		closeDialog 0;
		uiSleep 0.1;
	};
};
