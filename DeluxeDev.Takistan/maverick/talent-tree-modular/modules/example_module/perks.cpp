class Perk1 {
	displayName = "Vehicle Perks";
	color[] = {1,0,0,1};
	requiredPerkPoints = 1;
	requiredLevel = 1;
	requiredPerk = "";
	subtitle = "Learn the art of vehicles.";
	description = "Unlock access to the vehicle perk tree by purchasing this for 1 perk point.";
};

class Perk1_1 {
	displayName = "Junior Mechanic";
	requiredPerkPoints = 2;
	requiredLevel = 1;
	requiredPerk = "Perk1";
	subtitle = "Repair cars a little quicker!";
	description = "For 2 perk points you can unlock the junior mechanic perk which allows you to repair cars a little quicker than normal.";
};

class Perk1_2 {
	displayName = "Standard Mechanic";
	requiredPerkPoints = 4;
	requiredLevel = 2;
	requiredPerk = "Perk1_1";
	subtitle = "Repair cars even quicker!";
	description = "For 4 perk points you can unlock the standard mechanic perk which allows you to repair cars even quicker!";
};

class Perk1_3 {
	displayName = "Senior Mechanic";
	requiredPerkPoints = 9;
	requiredLevel = 4;
	requiredPerk = "Perk1_2";
	subtitle = "Repair cars lightning quick!";
	description = "For 9 perk points you can unlock the senior mechanic perk which allows you to repair vehicles super quickly.";
};

class Perk1_4 {
	displayName = "Expert Mechanic";
	requiredPerkPoints = 8;
	requiredLevel = 7;
	requiredPerk = "Perk1_3";
	subtitle = "Repair cars at unbelievable speeds!";
	description = "For 8 perk points you can unlock the expert mechanic perk which allows you to repair vehicles at the fastest rate.";
};

class Perk2 {
	displayName = "Medic Perks";
	color[] = {0.75,0.04,0.19,1};
	requiredPerkPoints = 1;
	requiredLevel = 1;
	requiredPerk = "";
	limitToSides[] = {"WEST","CIV"};
	subtitle = "Learn the tricks of the medical trade.";
	description = "Unlock access to the medic perk tree by purchasing this for 1 perk point.";
};

class Perk2_1 {
	displayName = "Experienced Healer";
	requiredPerkPoints = 3;
	requiredLevel = 2;
	requiredPerk = "Perk2";
	subtitle = "Bandages heal 5% more!";
	description = "For 3 perk points you can unlock the experienced healer perk which makes bandages heal 5% more health (Heals until 85HP)";
};

class Perk2_1_1 {
	displayName = "Remarkable Healer";
	requiredPerkPoints = 6;
	requiredLevel = 4;
	requiredPerk = "Perk2_1";
	subtitle = "Bandages heal 10% more!";
	description = "For 6 perk points you can unlock the remarkable healer perk which makes bandages heal 10% more health (Heals until 90HP)";
};

class Perk2_1_1_1 {
	displayName = "Expert Healer";
	requiredPerkPoints = 10;
	requiredLevel = 6;
	requiredPerk = "Perk2_1_1";
	subtitle = "Bandages heal fully!";
	description = "For 10 perk points you can unlock the expert healer perk which makes bandages heal you to 100% HP.";
};

class Perk2_1_2 {
	displayName = "CPR Training";
	requiredPerkPoints = 2;
	requiredLevel = 2;
	requiredPerk = "Perk2";
	subtitle = "10% more likely to CPR someone!";
	description = "For 2 perk points you can learn to be 10% more likely to succesfully CPR downed players!";
};

class Perk2_1_3 {
	displayName = "Advanced CPR Training";
	requiredPerkPoints = 5;
	requiredLevel = 3;
	requiredPerk = "Perk2_1_2";
	subtitle = "20% more likely to CPR someone!";
	description = "For 5 perk points you can learn to be 20% more likely to succesfully CPR downed players!";
};

class Perk2_1_4 {
	displayName = "Exceptional CPR Training";
	requiredPerkPoints = 7;
	requiredLevel = 4;
	requiredPerk = "Perk2_1_3";
	subtitle = "50% more likely to CPR someone!";
	description = "For 7 perk points you can learn to be 50% more likely to succesfully CPR downed players!";
};

class Perk2_1_5 {
	displayName = "Expert CPR Training";
	requiredPerkPoints = 10;
	requiredLevel = 6;
	requiredPerk = "Perk2_1_4";
	subtitle = "CPR every time!";
	description = "For 10 perk points you can learn to be 100% succesful when using a CPR kit!";
};

class Perk2_1_6 {
	displayName = "Phenomenal CPR Training";
	requiredPerkPoints = 11;
	requiredLevel = 17;
	requiredPerk = "Perk2_1_5";
	subtitle = "CPR without a kit!";
	description = "For 13 perk points you can learn to perform CPR without a kit!";
};

class Perk8 {
	displayName = "Trained Medic";
	requiredPerkPoints = 7;
	requiredLevel = 4;
	requiredPerk = "Perk2";
	subtitle = "Ignore CPR limits!";
	description = "For 7 perk points you can learn to revive even when there are 3 medics on duty.";
};

class Perk9 {
	displayName = "Quicker Respawn";
	requiredPerkPoints = 6;
	requiredLevel = 3;
	requiredPerk = "Perk2";
	subtitle = "Shorter respawn time!";
	description = "For 6 perk points you can lower your respawn timer.";
};
//////////////////////////////////////////////////////////////////////////////////////////////////
class Perk3 {
	displayName = "Combat Perks";
	color[] = {0.17,0.97,0,1};
	requiredPerkPoints = 4;
	requiredLevel = 1;
	requiredPerk = "";
	limitToSides[] = {"WEST","CIV"};
	subtitle = "Become the expert at combat.";
	description = "Unlock access to the combat perk tree by purchasing this for 4 perk points.";
};

class Perk3_2 {
	displayName = "Caffeine Junky";
	requiredPerkPoints = 5;
	requiredLevel = 3;
	requiredPerk = "Perk3";
	subtitle = "Make redgull more effective!";
	description = "For 5 perk points you can make redgull much more effective and double how long it lasts.";
};

class Perk3_1 {
	displayName = "5% Lower Recoil";
	requiredPerkPoints = 12;
	requiredLevel = 8;
	requiredPerk = "Perk3";
	subtitle = "Lower your recoil by 5%!";
	description = "For 12 perk points you can improve your handling of recoil so you are 5% less affected by it.";
	initScript = "maverick\talent-tree-modular\modules\example_module\recoil.sqf"; 
};

class Perk3_1_1 {
	displayName = "10% Lower Recoil";
	requiredPerkPoints = 17;
	requiredLevel = 11;
	requiredPerk = "Perk3_1";
	subtitle = "Lower your recoil by 10%!";
	description = "For 17 perk points you can improve your handling of recoil so you are 10% less affected by it.";
	initScript = "maverick\talent-tree-modular\modules\example_module\recoil.sqf"; 
};
//////////////////////////////////////////////
class Perk4 {
	displayName = "Criminal Perks";
	color[] = {0.34,0.05,0.42,1};
	requiredPerkPoints = 4;
	requiredLevel = 2;
	requiredPerk = "";
	limitToSides[] = {"CIV"};
	subtitle = "Become a criminal mastermind.";
	description = "Unlock access to the criminal perk tree by purchasing this for 4 perk points.";
};

class Perk4_12 {
	displayName = "Marijuana Expert";
	requiredPerkPoints = 4;
	requiredLevel = 4;
	requiredPerk = "Perk4";
	subtitle = "Grow marijuana faster!";
	description = "For 4 perk points you can learn to grow marijuana at double the speed.";
};

class Perk4_7 {
	displayName = "Intimidating";
	requiredPerkPoints = 5;
	requiredLevel = 6;
	requiredPerk = "Perk4";
	subtitle = "Higher payout from robbing gas stations!";
	description = "For 5 perk points you can increase the payout from robbing gas stations by 20%.";
};

class Perk4_3 {
	displayName = "Skilled Restrainer";
	requiredPerkPoints = 3;
	requiredLevel = 4;
	requiredPerk = "Perk4";
	subtitle = "Restrain without zipties!";
	description = "For 3 perk points you can learn how to restrain people without needing to use zipties.";
};

class Perk4_4 {
	displayName = "Learning Lockpicker";
	requiredPerkPoints = 2;
	requiredLevel = 2;
	requiredPerk = "Perk4";
	subtitle = "15% more likely to succesfully lockpick!";
	description = "For 2 perk points you can improve your lockpicking skill and become 15% likely to succesfully lockpick.";
};

class Perk4_4_1 {
	displayName = "Locksmith";
	requiredPerkPoints = 3;
	requiredLevel = 3;
	requiredPerk = "Perk4_4";
	subtitle = "25% more likely to succesfully lockpick!";
	description = "For 3 perk points you can improve your lockpicking skill and become 25% likely to succesfully lockpick.";
};

class Perk4_4_1_1 {
	displayName = "Unbreakable";
	requiredPerkPoints = 3;
	requiredLevel = 4;
	requiredPerk = "Perk4_4_1";
	subtitle = "50% more likely to succesfully lockpick!";
	description = "For 3 perk points you can improve your lockpicking skill and become 25% likely to succesfully lockpick.";
};

///////////////////////////////////////////////////class Perk4_11 {
///////////////////////////////////////////////////	displayName = "Rebel Vehicles";
///////////////////////////////////////////////////	requiredPerkPoints = 4;
///////////////////////////////////////////////////	requiredLevel = 6;
///////////////////////////////////////////////////	requiredPerk = "Perk4";
///////////////////////////////////////////////////	subtitle = "Access rebel vehicles!";
///////////////////////////////////////////////////	description = "For 4 perk points you can gain the ability to purchase advanced rebel vehicles.";
///////////////////////////////////////////////////};

//class Perk4_9 {
	//displayName = "Group Owner";
	//requiredPerkPoints = 5;
//	requiredLevel = 6;
//	requiredPerk = "Perk4";
	//subtitle = "Create groups!";
//	description = "For 5 perk points you can gain the ability to create groups.";
//};
///////////////////////////////////////////////////
class Perk5 {
	displayName = "Financial Perks";
	color[] = {0,0.56,0.5,1};
	requiredPerkPoints = 4;
	requiredLevel = 2;
	requiredPerk = "";
	subtitle = "Maximize your financial income.";
	description = "Unlock access to the financial perk tree by purchasing this for 4 perk points.";
};

class Perk5_2 {
	displayName = "Cheaper Vehicles";
	requiredPerkPoints = 3;
	requiredLevel = 2;
	requiredPerk = "Perk5";
	subtitle = "Reduce the cost of all new vehicles!";
	description = "For 3 perk points you can lower the price of all new vehicles by 5%.";
};
//////////////////////////////////////////////////////////
class Perk_7 {
	displayName = "Mining Perks";
	color[] = {0.957,0.49,0.259,1};
	requiredPerkPoints = 3;
	requiredLevel = 3;
	requiredPerk = "";
	limitToSides[] = {"CIV"};
	subtitle = "Improve your mining skills.";
	description = "Unlock access to the mining perk tree by purchasing this for 3 perk points.";
};

class Perk7_1 {
	displayName = "Qualified Miner";
	requiredPerkPoints = 3;
	requiredLevel = 2;
	requiredPerk = "Perk_7";
	subtitle = "Mine at a faster speed!";
	description = "For 3 perk points you can mine 10% quicker than usual!";
};

class Perk7_1_1 {
	displayName = "Accomplished Miner";
	requiredPerkPoints = 3;
	requiredLevel = 3;
	requiredPerk = "Perk7_1";
	subtitle = "Mine at a super fast speed!";
	description = "For 3 perk points you can mine 15% quicker than usual!";
};

class Perk7_2 {
	displayName = "Greater XP from Mining";
	requiredPerkPoints = 5;
	requiredLevel = 3;
	requiredPerk = "Perk_7";
	subtitle = "Gain more XP everytime you mine!";
	description = "For 5 perk points you can gain more XP everytime you mine!";
};
/////////////////////////////////////////////////////////////////
class Perk10 {
	displayName = "General Perks";
	requiredPerkPoints = 2;
	requiredLevel = 1;
	requiredPerk = "";
	subtitle = "Improve your general skills.";
	description = "Unlock access to the general perk tree by purchasing this for 2 perk points.";
};
class Perk10_2 {
	displayName = "2x Processing EXP";
	requiredPerkPoints = 9;
	requiredLevel = 3;
	requiredPerk = "Perk10";
	subtitle = "Double the XP you get from processing!!";
	description = "For 6 perk points you can double the amount of XP you get from processing items.";
};
class Perk10_3 {
	displayName = "3x Procesing EXP";
	requiredPerkPoints = 9;
	requiredLevel = 5;
	requiredPerk = "Perk10_2";
	subtitle = "Triple the XP you get from processing!";
	description = "For 8 perk points you can triple the amount of XP you get from processing items.";
};
class Perk6 {
	displayName = "Police Perks";
	requiredPerkPoints = 3;
	requiredLevel = 1;
	requiredPerk = "";
	limitToSides[] = {"WEST"};
	subtitle = "Improve your policing skills.";
	description = "Unlock access to the police perk tree by purchasing this for 3 perk points.";
};

class Perk6_1 {
	displayName = "Double Impound Reward";
	requiredPerkPoints = 2;
	requiredLevel = 1;
	requiredPerk = "Perk6";
	subtitle = "Double the reward for impounding vehicles!";
	description = "For 2 perk points you can double the amount you get from impounding vehicles!";
};

class Perk6_1_1 {
	displayName = "Triple Impound Reward";
	requiredPerkPoints = 4;
	requiredLevel = 2;
	requiredPerk = "Perk6_1";
	subtitle = "Triple the reward for impounding vehicles!";
	description = "For 4 perk points you can triple the amount you get from impounding vehicles!";
};

class Perk6_2 {
	displayName = "Faster Impound Speed";
	requiredPerkPoints = 5;
	requiredLevel = 2;
	requiredPerk = "Perk6";
	subtitle = "Increase your impound speed!";
	description = "For 5 perk points you can increase the speed you impound vehicles.";
};