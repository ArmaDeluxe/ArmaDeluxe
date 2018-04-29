_combat1 = [life_currentExpPerks, "Perk3_1"] call mav_ttm_fnc_hasPerk; 
_combat2 = [life_currentExpPerks, "Perk3_1_1"] call mav_ttm_fnc_hasPerk; 

//Check combat level and reduce recoil by that amount..
//Best recoil skill (Lowest arma recoil)
if (_combat1) exitWith {
player setUnitRecoilCoefficient 0.95;
};

if (_combat2) exitWith {
player setUnitRecoilCoefficient 0.9;
};












