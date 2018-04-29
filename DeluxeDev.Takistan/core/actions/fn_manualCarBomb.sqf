/*
	File: fn_manualCarBomb.sqf
	Author: Obamacare
	www.armaliferp.co.uk
*/
  
  if(vehicle player == player) exitwith {[true,"manualcarbomb",1] call life_fnc_handleInv; 
  ["<t size='3.2' color='#e57300'>You need to be inside of a vehicle to use the car bomb.</t>"] call life_fnc_alerttwo;
  };
   if (player getVariable ["restrained",false]) exitWith {[true,"manualcarbomb",1] call life_fnc_handleInv; 
   ["<t size='3.2' color='#e57300'>You cannot do that.</t>"] call life_fnc_alerttwo;
   };
   if (player getVariable ["tied",false]) exitWith {[true,"manualcarbomb",1] call life_fnc_handleInv; 
  ["<t size='3.2' color='#e57300'>You cannot do that.</t>"] call life_fnc_alerttwo;
   };
   if(life_carbomb == 1) exitWith {[true,"manualcarbomb",1] call life_fnc_handleInv; 
   ["<t size='3.2' color='#e57300'>You can only use one car bomb at a time.</t>"] call life_fnc_alerttwo;
   };
   life_carbomb = 1;
  _IED = "IEDLandBig_Remote_Ammo" createvehicle getpos player;
  _IED attachto [vehicle player, [0, 0, -1]];
  IEDS = IEDS + [_IED];
   player addaction["Detonate Car Bomb", {{_x setdamage 1;} foreach IEDS; removeallActions player; life_carbomb = 0;}];