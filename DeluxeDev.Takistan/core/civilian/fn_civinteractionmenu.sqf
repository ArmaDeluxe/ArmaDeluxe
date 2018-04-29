/*
	File: fn_copInteractionMenu.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Replaces the mass addactions for various cop actions towards another player.
*/
#define Btn1 37450
#define Btn2 37451
#define Btn3 37452
#define Btn4 37453
#define Btn5 37454
#define Btn6 37455
#define Btn7 37456
#define Btn8 37457
#define Btn9 37458
#define Btn10 37459
#define Btn10 37460
#define Title 37401

private["_display","_curTarget","_Btn1","_Btn2","_Btn3","_Btn4","_Btn5","_Btn6","_Btn7","_Btn8","_Btn9","_Btn10"];
if(!dialog) then {
	createDialog "pInteraction_Menu";
};
disableSerialization;
_curTarget = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _curTarget) exitWith {closeDialog 0;}; //Bad target
	
if(!isPlayer _curTarget) exitWith {closeDialog 0;}; //Bad side check?
_display = findDisplay 37400;
_Btn1 = _display displayCtrl Btn1;
_Btn2 = _display displayCtrl Btn2;
_Btn3 = _display displayCtrl Btn3;
_Btn4 = _display displayCtrl Btn4;
_Btn5 = _display displayCtrl Btn5;
_Btn6 = _display displayCtrl Btn6;
_Btn7 = _display displayCtrl Btn7;
_Btn8 = _display displayCtrl Btn8;
_Btn9 = _display displayCtrl Btn9;
_Btn10 = _display displayCtrl Btn10;
_Btn8 ctrlShow false;
_Btn9 ctrlShow false;
_Btn10 ctrlShow false;

life_pInact_curTarget = _curTarget;

_Btn1 ctrlSetText localize "STR_pInAct_Unrestrain2";
_Btn1 buttonSetAction "[] spawn life_fnc_tieingAction; closeDialog 0;";

//Set Unrestrain Button
_Btn2 ctrlSetText localize "STR_pInAct_Unrestrain";
_Btn2 buttonSetAction "[] call life_fnc_untie; closeDialog 0;";

//Set Escort Button
if((_curTarget getVariable["Escorting",false])) then {
	_Btn3 ctrlSetText localize "STR_pInAct_StopEscort";
	_Btn3 buttonSetAction "[life_pInact_curTarget] call life_fnc_civstopescort; [life_pInact_curTarget] call life_fnc_civInteractionMenu;";
} else {
	_Btn3 ctrlSetText localize "STR_pInAct_Escort";
	_Btn3 buttonSetAction "[life_pInact_curTarget] call life_fnc_civescort;closeDialog 0;";
};

_Btn4 ctrlSetText localize "STR_pInAct_PutInCar";
_Btn4 buttonSetAction "[life_pInact_curTarget] call life_fnc_throwcar; closeDialog 0;";

_Btn5 ctrlSetText localize "STR_pInAct_RemoveWeapons2";
_Btn5 buttonSetAction "[[],""life_fnc_removeWeaponActionCiv"",life_pInact_curTarget,false] spawn life_fnc_mp; closeDialog 0;";

_Btn6 ctrlSetText "Rob";
_Btn6 buttonSetAction "[] call life_fnc_robAction; closeDialog 0;";

_Btn7 ctrlSetText "Destroy Radio/GPS";
_Btn7 buttonSetAction "[] spawn life_fnc_destroyComms; closeDialog 0;";

