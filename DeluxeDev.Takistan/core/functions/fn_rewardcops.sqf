/*
	Author: Cobra @ArmaLifeRoleplay
	www.armaliferp.co.uk
	**ONLY TO BE USED BY ALRP**
*/
params [
  ["_finalvalue",0,[0]]
];
if (_finalvalue isEqualTo 0) exitWith {};
if !(playerSide isEqualTo west) exitWith {};
bann = bann + _finalvalue; 
hint format["Your bank balance increased by $%1 as you were issued a bonus.",_finalvalue];



