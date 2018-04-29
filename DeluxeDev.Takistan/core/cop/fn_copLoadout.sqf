/*
	File: fn_copLoadout.sqf
	Author: Bryan "Tonic" Boardwine
	Edited: Itsyuka
	Edited further: Cobra
	
	Description:
	Loads the cops out with the default gear.
*/
private["_handle"];
_handle = [] spawn life_fnc_stripDownPlayer;
waitUntil {scriptDone _handle};

player addUniform "Redux_TMP";
player addVest "TSF_Vest";
player addBackpack "invisible_bergen";

/* WEAPONS AND AMMO */
player addWeapon "JM_Taser_26";
player addMagazine "JM_26_Cartridge";
player addMagazine "JM_26_Cartridge";
player addMagazine "JM_26_Cartridge";
player addMagazine "JM_26_Cartridge";
player addMagazine "JM_26_Cartridge";
player addMagazine "JM_26_Cartridge";
/* ITEMS */
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "ItemWatch";
player assignItem "ItemWatch";
player addItem "ItemGPS";
player assignItem "ItemGPS";

[] call life_fnc_saveGear;