/////////////////////////////////////////////////////////////////
/////////// Created by TomWalker ///////////
/////////////////////////////////////////////////////////////////
class Life_TR8_Banking {
   idd = 20055;
   name = "Life_TR8_Banking";
   movingenable = 0;
   enablesimulation = 1;
   class controlsBackground
   {
       class TR8_Banking: Life_RscPicture
       {
           idc = 1200;
           text = "\TWalker\TW_PhoneBank.paa";
           x = 0.358854166666667 * safezoneW + safezoneX;
           y = 0.192794547224927 * safezoneH + safezoneY;
           w = 0.291666666666667 * safezoneW;
           h = 0.537487828627068 * safezoneH;
       };
   };
   class controls
   {
       class Title : Life_RscTitle
       {
           colorbackground[] = {0, 0, 0, 0};
           idc = 3001;
           text = "";
           x = 0.1;
           y = 0.2;
           w = 0.6;
           h = (1 / 25);
       };
       class moneyEdit : Life_RscEdit
       {
           idc = 2018;
           text = "1";
           sizeex = 0.030;
           x = 0.450467333333333 * safezoneW + safezoneX;
           y = 0.489071222979552 * safezoneH + safezoneY;
           w = 0.0948451666666667 * safezoneW;
           h = 0.0219906 * safezoneH;
       };
       class moneyDrop : Life_RscButtonInvisible
       {
           idc = 2001;
           text = "";
           colorbackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
           onbuttonclick = "[] call life_fnc_giveMoney";
           sizeex = 0.025;
           x = 0.450467333333333 * safezoneW + safezoneX;
           y = 0.516334098344693 * safezoneH + safezoneY;
           w = 0.0948451666666667 * safezoneW;
           h = 0.0396542171372931 * safezoneH;
       };
       class NearPlayers : Life_RscCombo
       {
           idc = 2100;
           x = 0.4413105 * safezoneW + safezoneX;
           y = 0.456937798442064 * safezoneH + safezoneY;
           w = 0.112856166666667 * safezoneW;
           h = 0.0219906 * safezoneH;
       };
       class TR8_BankInfo : Life_RscText
       {
           idc = 1001;
           text = "285,914,723";
           x = 0.474123 * safezoneW + safezoneX;
           y = 0.331657021421616 * safezoneH + safezoneY;
           w = 0.0828063 * safezoneW;
           h = 0.0329859 * safezoneH;
       };
       class TR8_WalletInfo : Life_RscText
       {
           idc = 1002;
           text = "10,000";
           x = 0.474123 * safezoneW + safezoneX;
           y = 0.393701570593963 * safezoneH + safezoneY;
           w = 0.0828063 * safezoneW;
           h = 0.0329859 * safezoneH;
       };
       class TR8_BankName : Life_RscText
       {
           idc = 1000;
           style = 2;
           text = "ArmaLifeRP";
           x = 0.4413105 * safezoneW + safezoneX;
           y = 0.244394851022395 * safezoneH + safezoneY;
           w = 0.112856166666667 * safezoneW;
           h = 0.0185068042843236 * safezoneH;
           shadow = 0;
       };
   };
};
/////////////////////////////////////////////////////////////////
////////////////////////// FILE END /////////////////////////////
/////////////////////////////////////////////////////////////////
