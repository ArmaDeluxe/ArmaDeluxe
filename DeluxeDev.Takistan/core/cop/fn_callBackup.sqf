//Pre-Checks
if(playerSide != west) exitWith {}; 
if(!([false,"panicbutton",1] call life_fnc_handleInv)) exitWith {}; 
//Stops people pressing the key binding while being took hostage.
if((player getVariable "restrained")) exitWith {}; 
if((player getVariable "tied")) exitWith {};
["<t size='3.2' color='#e57300'>You have pressed your panic button.</t>"] call life_fnc_alerttwo;
_dicks = position player; 
[_dicks] remoteExec ["life_fnc_panicmarkers",west];
[true,"panicbutton",1] call life_fnc_handleInv;
[[1,format["DISPATCH: PANIC BUTTON USED BY %1",name player]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
[[1,format["DISPATCH: PANIC BUTTON USED BY %1",name player]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
[[1,format["DISPATCH: PANIC BUTTON USED BY %1",name player]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
[[0,format["DISPATCH: PANIC BUTTON USED BY %1",name player]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
[[0,format["DISPATCH: PANIC BUTTON USED BY %1",name player]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
[[0,format["DISPATCH: PANIC BUTTON USED BY %1",name player]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;