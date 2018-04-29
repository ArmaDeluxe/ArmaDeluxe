#include "..\..\script_macros.hpp"
/*
	File: fn_removeLicenses.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Used for stripping certain licenses off of civilians as punishment.
*/
private "_state";
_state = param [0,1,[0]];

switch (_state) do {
	//Death while being wanted
	case 0: {
		SVAR_MNS [LICENSE_VARNAME("rebel","civ"),false];
		SVAR_MNS [LICENSE_VARNAME("heroin","civ"),false];
		SVAR_MNS [LICENSE_VARNAME("marijuana","civ"),false];
		SVAR_MNS [LICENSE_VARNAME("cocaine","civ"),false];
	};

	//Jail licenses
	case 1: {
		SVAR_MNS [LICENSE_VARNAME("gun","civ"),false];
		SVAR_MNS [LICENSE_VARNAME("driver","civ"),false];
		SVAR_MNS [LICENSE_VARNAME("rebel","civ"),false];
		SVAR_MNS [LICENSE_VARNAME("advrebel","civ"),false];
	};

	//Remove motor vehicle licenses
	case 2: {
		if(GVAR_MNS LICENSE_VARNAME("driver","civ") OR GVAR_MNS LICENSE_VARNAME("pilot","civ") OR GVAR_MNS LICENSE_VARNAME("trucking","civ") OR GVAR_MNS LICENSE_VARNAME("boat","civ")) then {
			SVAR_MNS [LICENSE_VARNAME("pilot","civ"),false];
			//SVAR_MNS [LICENSE_VARNAME("driver","civ"),false];
			SVAR_MNS [LICENSE_VARNAME("trucking","civ"),false];
			SVAR_MNS [LICENSE_VARNAME("boat","civ"),false];
			hint localize "STR_Civ_LicenseRemove_1";
		};
	};
	
	case 3: { //Driver
	SVAR_MNS [LICENSE_VARNAME("driver","civ"),false];
	};
	
	case 4: { //Truck
	SVAR_MNS [LICENSE_VARNAME("trucking","civ"),false];
	};
	
	case 5: { //Pilot
	SVAR_MNS [LICENSE_VARNAME("pilot","civ"),false];
	};
	
	case 6: { //Pistol
	SVAR_MNS [LICENSE_VARNAME("gun","civ"),false];
	};
	
	case 7: { //Passport
	SVAR_MNS [LICENSE_VARNAME("passport","civ"),false];
	};
};
	/*Killing someone while owning a gun license
	case 3: {
		if(GVAR_MNS LICENSE_VARNAME("gun","civ")) then {
			SVAR_MNS [LICENSE_VARNAME("gun","civ"),false];
			hint localize "STR_Civ_LicenseRemove_2";
		};
	};*/

