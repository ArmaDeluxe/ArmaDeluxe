if(playerSide == west) exitWith {
cutText ["You cannot drink while on duty. You have been reported for your misconduct.","PLAIN",2];
[[1,format["%1 was just seen trying to consume alcohol while on duty. Luckily a civilian saw them and stopped them in their tracks.",name player]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
}; 
if(life_drunk == 1) exitWith {
"chromAbberation" ppEffectEnable true;
"radialBlur" ppEffectEnable true;
"colorCorrections" ppEffectEnable true;
enableCamShake true;
player say2d "drink";
hint parseText format["<t color='#FA4F4F'><t size='1.2'>Maybe you've drank too much??"];
uiSleep 4;
closeDialog 0;
titleCut ["", "BLACK FADED", 999];
player playMoveNow "Incapacitated";
uiSleep 15;
removeUniform player;
titlecut [" ","BLACK IN",3]; 
"chromAberration" ppEffectAdjust[0,random 0.15, false];
"chromAberration" ppEffectCommit 1;   
"radialBlur" ppEffectAdjust  [random 0.1,random 0.1,0.3,0.3];
"radialBlur" ppEffectCommit 1;
"colorCorrections" ppEffectAdjust[ 0.44, 0.76, 0.7, [0.1, -0.57, 0, 0.05],[1.8, 1.3, 0.3, 0.7],[0.2, 0.59, 0.11, 0]];
"colorCorrections" ppEffectCommit 1;
addcamShake[random 4, 2, random 4];
life_drunk = 0;
player playMoveNow "amovppnemstpsraswrfldnon";
uiSleep 10;
//Deactivate drunk effects
"chromAberration" ppEffectAdjust [0,0,true];
"chromAberration" ppEffectCommit 5;
"colorCorrections" ppEffectAdjust[ 1, 1, 0, [0, 0, 0, 0],[1.8, 1.8, 0.3, 0.7],[0.2, 0.59, 0.11, 0]];
"colorCorrections" ppEffectCommit 5;
"radialBlur" ppEffectAdjust  [0,0,0,0];
"radialBlur" ppEffectCommit 5;
hint "You seem to have sobered up now.";
}; 

//If person isn't very drunk yet, increase there drunk level.
//Also only runs if the player is not a cop.
"chromAbberation" ppEffectEnable true;
"radialBlur" ppEffectEnable true;
"colorCorrections" ppEffectEnable true;
enableCamShake true;
life_drunk = life_drunk + 0.5;
hint "You pour a nice glass of Whiskey. Let's get smashed!";
player say2d "drink";
uiSleep 4;
closeDialog 0;
"chromAberration" ppEffectAdjust[0,random 0.15, false];
"chromAberration" ppEffectCommit 1;   
"radialBlur" ppEffectAdjust  [random 0.1,random 0.1,0.3,0.3];
"radialBlur" ppEffectCommit 1;
"colorCorrections" ppEffectAdjust[ 0.44, 0.76, 0.7, [0.1, -0.57, 0, 0.05],[1.8, 1.3, 0.3, 0.7],[0.2, 0.59, 0.11, 0]];
"colorCorrections" ppEffectCommit 1;
addcamShake[random 4, 2, random 4];
uiSleep 15;
//Deactivate drunk effects
"chromAberration" ppEffectAdjust [0,0,true];
"chromAberration" ppEffectCommit 5;
"colorCorrections" ppEffectAdjust[ 1, 1, 0, [0, 0, 0, 0],[1.8, 1.8, 0.3, 0.7],[0.2, 0.59, 0.11, 0]];
"colorCorrections" ppEffectCommit 5;
"radialBlur" ppEffectAdjust  [0,0,0,0];
"radialBlur" ppEffectCommit 5;