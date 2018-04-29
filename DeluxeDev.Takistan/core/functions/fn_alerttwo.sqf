/*
  File: fn_alert.sqf
  Desc: Main alert system called instead of ArmA's hint function
  Author: Matthew "ParallelGames"
  Last update: 30/04/16 by Matthew
  All rights reserved it's a breach of copyright law & intellectual property to use this framework without direct written permission from Matthew
*/

private ["_text"];

disableSerialization;

_text = _this select 0; 

("ANclientAlert" call BIS_fnc_rscLayer) cutRsc ["an_alert","PLAIN"];
_alert = uiNamespace getVariable "an_alert";
_control = _alert displayCtrl 1100;
_control ctrlSetStructuredText parseText _text; 
