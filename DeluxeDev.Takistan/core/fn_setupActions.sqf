#include "..\script_macros.hpp"
/*
	File: fn_setupActions.sqf
	
	Description:
	Master addAction file handler for all client-based actions.
*/
switch (playerSide) do
{
	case independent:
	{
		//Untie person
		life_actions pushBack (player addAction["<t color = '#f4a84e'>Untie Person</t>",life_fnc_untie,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 4 && isPlayer cursorTarget && (cursorTarget getVariable ["tied", false]) && (!life_action_inUse) ']);
		//Heal Person
		life_actions = life_actions + [player addAction["Heal Self",life_fnc_healself,"",0,false,false,"",' (damage player) > 0 ']];
		//Heal Self
		life_actions = life_actions + [player addAction["Heal Person",life_fnc_healperson,"",0,false,false,"",' !isNull cursorTarget && player distance cursorTarget < 2.5 && isPlayer cursorTarget && (damage cursorTarget) > 0 ']];
	};
	case civilian:
	{
		//Drop fishing net
		life_actions = [player addAction[localize "STR_pAct_DropFishingNet",life_fnc_dropFishingNet,"",0,false,false,"",'
		(surfaceisWater (getPos vehicle player)) && (vehicle player isKindOf "Ship") && life_carryWeight < life_maxWeight && speed (vehicle player) < 2 && speed (vehicle player) > -1 && !life_net_dropped ']];

		//DEADMAN SWITCH
		life_actions = life_actions + [player addAction["<t color='#FF0000'>Deadman Switch</t>",life_fnc_DeadmanSwitch,"",0,false,false,"", '(vest player in ["UMI_Bomb_Vest_Camo"]) && alive player && playerSide == civilian && !life_istazed']];
		
		//Heal Person
		life_actions = life_actions + [player addAction["Heal Self",life_fnc_healself,"",0,false,false,"",' (damage player) > 0.2 && (life_inv_bandage > 0) ']];
		
		//Heal Self
		life_actions = life_actions + [player addAction["Heal Person",life_fnc_healperson,"",0,false,false,"",' !isNull cursorTarget && player distance cursorTarget < 2.5 && isPlayer cursorTarget && (damage cursorTarget) > 0.2 && (life_inv_bandage > 0) ']];
	};
	case west: {
		//Untie person
		life_actions pushBack (player addAction["<t color = '#f4a84e'>Untie Person</t>",life_fnc_untie,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 4 && isPlayer cursorTarget && (cursorTarget getVariable ["tied", false]) && (!life_action_inUse) ']);
		//Heal Person
		life_actions = life_actions + [player addAction["Heal Self",life_fnc_healself,"",0,false,false,"",' (damage player) > 0.2 && (life_inv_bandage > 0) ']];
		//Heal Self
		life_actions = life_actions + [player addAction["Heal Person",life_fnc_healperson,"",0,false,false,"",' !isNull cursorTarget && player distance cursorTarget < 2.5 && isPlayer cursorTarget && (damage cursorTarget) > 0.2 && (life_inv_bandage > 0) ']];
	};
};
