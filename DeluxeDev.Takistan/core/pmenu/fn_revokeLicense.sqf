/*
	File: fn_revokeLicense.sqf
	Original Author: Michael Francis (Didn't really make this, I rewrote most of it)
	Fixed by: Cobra the meme master
	
	Description:
	Allows cops to revoke individual licenses
*/
private["_display","_curTarget","_Btn1","_Btn2","_Btn3","_Btn4","_Btn5"];
createDialog "revokeLicense_Menu";
disableSerialization;
_curTarget = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _curTarget) exitWith {hint "Wrong target!"; closeDialog 0;}; //Bad target
if(!isPlayer _curTarget && side _curTarget == civilian) exitWith {hint "Cannot perform this action!"; closeDialog 0;}; //Bad side check?

_display = findDisplay 41000;
_Btn1 = _display displayCtrl 41002;
_Btn2 = _display displayCtrl 41003;
_Btn3 = _display displayCtrl 41004;
_Btn4 = _display displayCtrl 41005;
_Btn5 = _display DisplayCtrl 41006;
life_pInact_curTarget = _curTarget;

//Driver License
_Btn1 buttonSetAction "[[3],""life_fnc_removeLicenses"",life_pInact_curTarget,FALSE] spawn life_fnc_MP; closeDialog 1;";

//Truck License
_Btn2 buttonSetAction "[[4],""life_fnc_removeLicenses"",life_pInact_curTarget,FALSE] spawn life_fnc_MP; closeDialog 1;";

//Pilot License
_Btn3 buttonSetAction "[[5],""life_fnc_removeLicenses"",life_pInact_curTarget,FALSE] spawn life_fnc_MP; closeDialog 1;";

//Pistol License
_Btn4 buttonSetAction "[[6],""life_fnc_removeLicenses"",life_pInact_curTarget,FALSE] spawn life_fnc_MP; closeDialog 1;";

//Passport
_Btn5 buttonSetAction "[[7],""life_fnc_removeLicenses"",life_pInact_curTarget,FALSE] spawn life_fnc_MP; closeDialog 1;";