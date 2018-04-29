/*
	Author: Matthew "ParallelGames"
	
	Description:
	Terror Attack setup
*/

if (Tower2 getVariable "eg_terror") exitWith {
	Tower2 setVariable ["eg_terror", false, true]; 
	tax setVariable ["threatlevel", 3, true];;
	["<t size='3.2' color='#e57300'>The terror threat has been cleared.</t>"] call life_fnc_alerttwo;
	rasman1 animate ["stop", 0];
	rasman1_1 animate ["stop", 0];
	rasman1_2 animate ["stop", 0];
	rasman1_3 animate ["stop", 0];
	rasman1_4 animate ["stop", 0];
	rasman1_5 animate ["stop", 0];
};
	
Tower2 setVariable ["eg_terror", true, true];
["<t size='3.2' color='#e57300'>Terror has been declared.</t>"] call life_fnc_alerttwo;
tax setVariable ["threatlevel", 4, true];;
rasman1 animate ["stop", 1];
rasman1_1 animate ["stop", 1];
rasman1_2 animate ["stop", 1];
rasman1_3 animate ["stop", 1];
rasman1_4 animate ["stop", 1];
rasman1_5 animate ["stop", 1];
while {Tower2 getVariable "eg_terror"} do {
	[[Tower1, "red",5000],"life_fnc_playSound",true,false] spawn life_fnc_MP;
	[[Tower2, "red",5000],"life_fnc_playSound",true,false] spawn life_fnc_MP;
	[[Tower3, "red",5000],"life_fnc_playSound",true,false] spawn life_fnc_MP;
	[[Tower4, "red",5000],"life_fnc_playSound",true,false] spawn life_fnc_MP;
	[[Tower5, "red",5000],"life_fnc_playSound",true,false] spawn life_fnc_MP;
	[[Tower6, "red",5000],"life_fnc_playSound",true,false] spawn life_fnc_MP;
	[[Tower7, "red",5000],"life_fnc_playSound",true,false] spawn life_fnc_MP;
	[[Tower9, "red",5000],"life_fnc_playSound",true,false] spawn life_fnc_MP;
	[[Tower10, "red",5000],"life_fnc_playSound",true,false] spawn life_fnc_MP;
	[[Tower11, "red",5000],"life_fnc_playSound",true,false] spawn life_fnc_MP;
	[[Tower12, "red",5000],"life_fnc_playSound",true,false] spawn life_fnc_MP;
	[[Tower13, "red",5000],"life_fnc_playSound",true,false] spawn life_fnc_MP;
	uiSleep 20;
	[[Tower1, "AirRaidSirenAlert",5000],"life_fnc_playSound",true,false] spawn life_fnc_MP;
	[[Tower2, "AirRaidSirenAlert",5000],"life_fnc_playSound",true,false] spawn life_fnc_MP;
	[[Tower3, "AirRaidSirenAlert",5000],"life_fnc_playSound",true,false] spawn life_fnc_MP;
	[[Tower4, "AirRaidSirenAlert",5000],"life_fnc_playSound",true,false] spawn life_fnc_MP;
	[[Tower5, "AirRaidSirenAlert",5000],"life_fnc_playSound",true,false] spawn life_fnc_MP;
	[[Tower6, "AirRaidSirenAlert",5000],"life_fnc_playSound",true,false] spawn life_fnc_MP;
	[[Tower7, "AirRaidSirenAlert",5000],"life_fnc_playSound",true,false] spawn life_fnc_MP;
	[[Tower9, "AirRaidSirenAlert",5000],"life_fnc_playSound",true,false] spawn life_fnc_MP;
	[[Tower10, "AirRaidSirenAlert",5000],"life_fnc_playSound",true,false] spawn life_fnc_MP;
	[[Tower11, "AirRaidSirenAlert",5000],"life_fnc_playSound",true,false] spawn life_fnc_MP;
	[[Tower12, "AirRaidSirenAlert",5000],"life_fnc_playSound",true,false] spawn life_fnc_MP;
	[[Tower13, "AirRaidSirenAlert",5000],"life_fnc_playSound",true,false] spawn life_fnc_MP;
	uiSleep 30;
};