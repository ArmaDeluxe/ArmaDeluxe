/////////////////////////////////////////////////////////////////
/////////// Created by TomWalker ///////////
/////////////////////////////////////////////////////////////////
class Life_key_management {
   idd = 2700;
   name = "Life_key_management";
   movingenable = 0;
   enablesimulation = 1;
   onload = "[] spawn life_fnc_keyMenu;";
   class controlsBackground
   {
       class TR8_KeysMenu : Life_RscPicture
       {
           idc = 1001;
           text = "\TWalker\TW_PhoneKey.paa";
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
           idc = -1;
           text = "";
           x = 0.1;
           y = 0.2;
           w = 0.6;
           h = (1 / 25);
       };
       class KeyChainList : Life_RscListBox
       {
           idc = 2701;
           text = "";
           sizeex = 0.035;
           x = 0.441001 * safezoneW + safezoneX;
           y = 0.308627088607595 * safezoneH + safezoneY;
           w = 0.1136865 * safezoneW;
           h = 0.247361226874391 * safezoneH;
       };
       class NearPlayers : Life_RscCombo
       {
           idc = 2702;
           x = 0.441001 * safezoneW + safezoneX;
           y = 0.573948036027264 * safezoneH + safezoneY;
           w = 0.1136865 * safezoneW;
           h = 0.0229360925024343 * safezoneH;
       };
       class DropKey : Life_RscButtonInvisible
       {
           idc = -1;
           onbuttonclick = "[] call life_fnc_keyDrop";
           x = 0.449880833333333 * safezoneW + safezoneX;
           y = 0.658529345666991 * safezoneH + safezoneY;
           w = 0.0954316666666666 * safezoneW;
           h = 0.0405943154819864 * safezoneH;
       };
       class GiveKey : Life_RscButtonInvisible
       {
           idc = 2703;
           colorbackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
           onbuttonclick = "[] call life_fnc_keyGive";
           x = 0.449880833333333 * safezoneW + safezoneX;
           y = 0.611791273612463 * safezoneH + safezoneY;
           w = 0.0954316666666666 * safezoneW;
           h = 0.0386468958130478 * safezoneH;
       };
   };
};
/////////////////////////////////////////////////////////////////
////////////////////////// FILE END /////////////////////////////
/////////////////////////////////////////////////////////////////
