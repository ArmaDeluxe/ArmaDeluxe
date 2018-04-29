/////////////////////////////////////////////////////////////////
/////////// Created by TomWalker ///////////
/////////////////////////////////////////////////////////////////
class life_moves_menu {
   idd = 2900;
   name = "life_moves_menu";
   movingenable = 0;
   enablesimulation = 1;
   onload = "[] spawn life_fnc_movesMenu;";
   class controlsBackground
   {
       class TR8_Dance : Life_RscPicture
       {
           idc = 1001;
           text = "\TWalker\TW_PhoneMoves.paa";
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
           idc = 2901;
           text = "";
           x = 0.1;
           y = 0.2;
           w = 0.6;
           h = (1 / 25);
       };
       class movesList : Life_RscListBox
       {
           idc = 2902;
           text = "";
           sizeex = 0.035;
           x = 0.442088333333333 * safezoneW + safezoneX;
           y = 0.282403146056475 * safezoneH + safezoneY;
           w = 0.112078333333333 * safezoneW;
           h = 0.252163553067186 * safezoneH;
       };
       class performMove : Life_RscButtonInvisible
       {
           idc = -1;
           text = "";
           onbuttonclick = "_move= lbData[2902,lbCurSel (2902)];_move = call compile format[""%1"", _move]; player playMove _move; closeDialog 0;";
           x = 0.449874166666667 * safezoneW + safezoneX;
           y = 0.58761258519961 * safezoneH + safezoneY;
           w = 0.0959591666666666 * safezoneW;
           h = 0.0394565481986368 * safezoneH;
       };
   };
};
/////////////////////////////////////////////////////////////////
////////////////////////// FILE END /////////////////////////////
/////////////////////////////////////////////////////////////////
