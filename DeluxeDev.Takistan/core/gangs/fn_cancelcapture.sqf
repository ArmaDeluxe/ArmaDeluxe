/*
	Author: Jake @ www.rlgroleplay.com
	#fuckusg
	#fuckalrp
	**ONLY TO BE USED BY RLG**
*/
nigger_raiding = 0;
if (player distance getMarkerPos "Hideout1" < 30) then {
hideout1 setvariable ["capturing",false,true];
"GangCaptureDrug" setMarkerText "Weed Cartel - Not Captured";
} else {
hideout2 setvariable ["capturing",false,true];
"GangCaptureDrug2" setMarkerText "Cocaine Cartel - Not Captured";
};