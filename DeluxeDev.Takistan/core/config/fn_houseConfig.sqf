/*
	File: fn_houseConfig.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for buyable houses?
*/
private["_house"];
_house = [_this,0,"",[""]] call BIS_fnc_param;
if(_house == "") exitWith {[]};

switch (true) do {
    case (_house in ["Land_House_L_1_EP1", "Land_House_L_3_EP1", "Land_House_L_4_EP1", "Land_House_L_6_EP1", "Land_House_L_7_EP1", "Land_House_L_8_EP1", "Land_House_L_9_EP1"]):{
            [155000, 3]
        };
    case (_house in ["Land_House_K_1_EP1", "Land_House_K_3_EP1", "Land_House_K_5_EP1", "Land_House_K_6_EP1", "Land_House_K_7_EP1", "Land_House_K_8_EP1"]):{
            [120000, 4]
        };
    case (_house in ["Land_House_C_1_EP1", "Land_House_C_1_v2_EP1", "Land_House_C_2_EP1", "Land_House_C_3_EP1", "Land_House_C_4_EP1", "Land_House_C_5_EP1"]):{
            [120000, 4]
        };
    default {
        []
    };
};