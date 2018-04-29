/////////////////////////////////////////////////////////////////
/////////// Created by TomWalker ///////////
/////////////////////////////////////////////////////////////////
class playerMenu {
   idd = 20057;
   name = "playerMenu";
   movingenable = 1;
   enablesimulation = 1;
   class controlsBackground
   {
       class TR8_PlayerInv : Life_RscPicture
       {
           idc = 1001;
           text = "\TWalker\TW_PhoneInven.paa";
           x = 0.358854166666667 * safezoneW + safezoneX;
           y = 0.192794547224927 * safezoneH + safezoneY;
           w = 0.291666666666667 * safezoneW;
           h = 0.537487828627068 * safezoneH;
       };
   };
   class controls
   {
       class TR8_use : Life_RscButtonInvisible
       {
           idc = 1600;
           onbuttonclick = "[] call life_fnc_useItem;";
           x = 0.44731 * safezoneW + safezoneX;
           y = 0.594647522882181 * safezoneH + safezoneY;
           w = 0.099565 * safezoneW;
           h = 0.0314479006815969 * safezoneH;
       };
       class TR8_remove : Life_RscButtonInvisible
       {
           idc = 1601;
           onbuttonclick = "[] call life_fnc_removeItem;";
           x = 0.44731 * safezoneW + safezoneX;
           y = 0.672544309639727 * safezoneH + safezoneY;
           w = 0.099565 * safezoneW;
           h = 0.0324216105160662 * safezoneH;
       };
       class TR8_give : Life_RscButtonInvisible
       {
           idc = 1602;
           onbuttonclick = "[] call life_fnc_giveItem;";
           x = 0.44731 * safezoneW + safezoneX;
           y = 0.634066465433301 * safezoneH + safezoneY;
           w = 0.099565 * safezoneW;
           h = 0.0329247711781889 * safezoneH;
       };
       class TR8_nearPlayers : Life_RscCombo
       {
           idc = 2100;
           x = 0.44731 * safezoneW + safezoneX;
           y = 0.557143388510224 * safezoneH + safezoneY;
           w = 0.099565 * safezoneW;
           h = 0.0219906 * safezoneH;
       };
       class TR8_items : Life_RscListbox
       {
           idc = 1500;
           x = 0.441046666666667 * safezoneW + safezoneX;
           y = 0.30699747224927 * safezoneH + safezoneY;
           w = 0.11312 * safezoneW;
           h = 0.206147610516066 * safezoneH;
       };
       class TR8_quantity : Life_RscEdit
       {
           idc = 3004;
           text = "1";
           sizeex = 0.030;
           x = 0.44731 * safezoneW + safezoneX;
           y = 0.527932093476144 * safezoneH + safezoneY;
           w = 0.099565 * safezoneW;
           h = 0.0219906 * safezoneH;
       };
   };
};
/////////////////////////////////////////////////////////////////
////////////////////////// FILE END /////////////////////////////
/////////////////////////////////////////////////////////////////
