private["_unit"];
_unit = cursorTarget;
if(isNull _unit) exitWith {}; //Not valid
if(player == _unit) exitWith {}; //Not valid
if(!isPlayer _unit) exitWith {}; //Not valid
if((_unit getVariable "tied")) exitWith {}; //Already tied
if((life_action_inUse) || (player getVariable "tied") || (player getVariable "restrained")) exitWith { ["<t size='3.2' color='#e57300'>You can't do that!</t>"] call life_fnc_alerttwo;}; 
if (animationState _unit != 'Incapacitated' && animationState _unit != 'AmovPercMstpSsurWnonDnon') exitWith {["<t size='3.2' color='#e57300'>You can't do that!</t>"] call life_fnc_alerttwo;}; //Person is not knocked out
_ziptie = [life_currentExpPerks, "Perk4_3"] call mav_ttm_fnc_hasPerk; 
if(life_inv_ziptie < 1 && !_ziptie) exitWith {["<t size='3.2' color='#e57300'>You need to buy zipties to do that!</t>"] call life_fnc_alerttwo;};
life_action_inUse = true;
["<t size='3.2' color='#e57300'>Tieing Up Person..</t>"] call life_fnc_alerttwo;
[[player, "tieup",125],"life_fnc_playSound",true,false] spawn life_fnc_MP; 
_randycunt = 7;
_num = 1;
_myposy = getPos player;
while {_randycunt > _num} do {
_randycunt = _randycunt - 1;
player switchMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
uiSleep 1;
};
if( _unit distance _myposy > 5 ) then { 
	["<t size='3.2' color='#e57300'>Target too far away!</t>"] call life_fnc_alerttwo;
} else {
	_unit setVariable["tied",true,true];
	[[player], "life_fnc_tieing", _unit, false] spawn life_fnc_MP;
};
life_action_inUse = false;
