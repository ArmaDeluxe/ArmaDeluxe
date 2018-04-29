/*
	Author: Jake @ www.rlgroleplay.com
	#fuckusg
	#fuckalrp
	**ONLY TO BE USED BY RLG**
*/
if (player distance getMarkerPos "Hideout1" < 30) then {
["<t size='3.2' color='#04EE4A'>Capture complete.</t>"] call life_fnc_alerttwo;
"GangCaptureDrug" setMarkerText "Weed Cartel - Captured";
if (playerside == civilian) then {
hideout1 setFlagTexture "\A3\Data_F\Flags\Flag_CSAT_CO.paa";
hideout1 setvariable ["copcaptured",false,true];
} else {
hideout1 setFlagTexture "\A3\Data_F\Flags\Flag_us_CO.paa";
[[1,format["TAKISTAN NEWS: TMP have captured the Weed Cartel."]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
[[1,format["TAKISTAN NEWS: TMP have captured the Weed Cartel."]],"life_fnc_broadcast",independent,false] spawn life_fnc_MP;
[[1,format["TAKISTAN NEWS: TMP have captured the Weed Cartel."]],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;
_markerloc = getMarkerPos "Hideout1";
 _marker = createMarker ["GangCaptureDrugName", _markerloc];  
"GangCaptureDrugName" setMarkerColor "ColorBlue";   
"GangCaptureDrugName" setMarkerText "TMP Controlled Zone";
"GangCaptureDrugName" setMarkerType "mil_flag"; 
hideout1 setvariable ["copcaptured",true,true];
};
} else {
["<t size='3.2' color='#04EE4A'>Capture complete.</t>"] call life_fnc_alerttwo;
"GangCaptureDrug2" setMarkerText "Cocaine Cartel - Captured";
if (playerside == civilian) then {
hideout2 setFlagTexture "\A3\Data_F\Flags\Flag_CSAT_CO.paa";
hideout2 setvariable ["copcaptured",false,true];
} else {
hideout2 setFlagTexture "\A3\Data_F\Flags\Flag_us_CO.paa";
[[1,format["TAKISTAN NEWS: TMP have captured the Cocaine Cartel."]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
[[1,format["TAKISTAN NEWS: TMP have captured the Cocaine Cartel."]],"life_fnc_broadcast",independent,false] spawn life_fnc_MP;
[[1,format["TAKISTAN NEWS: TMP have captured the Cocaine Cartel."]],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;
_markerloc = getMarkerPos "Hideout2";
 _marker = createMarker ["GangCaptureDrugName2", _markerloc];  
"GangCaptureDrugName2" setMarkerColor "ColorBlue";   
"GangCaptureDrugName2" setMarkerText "TMP Controlled Zone";
"GangCaptureDrugName2" setMarkerType "mil_flag"; 
hideout2 setvariable ["copcaptured",true,true];
};
};




