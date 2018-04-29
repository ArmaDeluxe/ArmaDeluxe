While{true} do 
{
    "dynamicBlur" ppEffectEnable true;
    "dynamicBlur" ppEffectAdjust [0]; 
    "dynamicBlur" ppEffectCommit 15; 
    resetCamShake;
    20 fadeSound 1;  	


    waituntil{
    ((nearestObject [getpos player, "SmokeShellOrange"]) distance player < 10)
    and
    (getpos (nearestObject [getpos player, "SmokeShellOrange"]) select 2 < 0.5)
    };

    if (goggles player != "Mask_M50") then
    {
        ["<t size='3.2' color='#e57300'>You have been irritated by tear gas!</t>"] call life_fnc_alerttwo;
		"dynamicBlur" ppEffectEnable true; 
		"colorCorrections" ppEffectAdjust [1, 1, 0, [0.0, 0.0, 0.0, 0.0], [0.6, 0.6, 1.8, 0.7],  [0.199, 0.587, 0.114, 0.0]];  
        "dynamicBlur" ppEffectCommit 6; 
        enableCamShake true;    
        addCamShake [10, 45, 10];   
        5 fadeSound 0.1;    

    };
    
    uiSleep 5;
};