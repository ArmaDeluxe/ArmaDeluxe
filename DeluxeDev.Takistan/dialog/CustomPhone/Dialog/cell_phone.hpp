/////////////////////////////////////////////////////////////////
/////////// Created by TomWalker ///////////
/////////////////////////////////////////////////////////////////
class Life_cell_phone {
   idd = 3000;
   name = "Life_cell_phone";
   movingenable = 0;
   enablesimulation = 1;
   onload = "[] spawn life_fnc_cellphone";
   class controlsBackground
   {
       class TR8_CellPhone : Life_RscPicture
       {
           idc = 1001;
           text = "\TWalker\TW_PhoneSMS.paa";
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
       class textEdit : Life_RscEdit
       {
           idc = 3003;
           text = "";
           sizeex = 0.040;
           x = 0.441039 * safezoneW + safezoneX;
           y = 0.35502505744888 * safezoneH + safezoneY;
           w = 0.114690166666667 * safezoneW;
           h = 0.122092761441091 * safezoneH;
       };
       class TextMsgButton : Life_RscButtonInvisible
       {
           idc = 3015;
           text = "";
           colorbackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
           onbuttonclick = "[] call TON_fnc_cell_textmsg";
           x = 0.448859166666667 * safezoneW + safezoneX;
           y = 0.497242927945472 * safezoneH + safezoneY;
           w = 0.097495 * safezoneW;
           h = 0.0412186105160662 * safezoneH;
       };
       class PlayerList : Life_RscCombo
       {
           idc = 3004;
           x = 0.441039 * safezoneW + safezoneX;
           y = 0.284886661148978 * safezoneH + safezoneY;
           w = 0.114690166666667 * safezoneW;
           h = 0.0276741957156767 * safezoneH;
       };
       class TextCopButton : Life_RscButtonInvisible
       {
           idc = 3016;
           text = "";
           colorbackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
           onbuttonclick = "[] call TON_fnc_cell_textcop";
           x = 0.448859166666667 * safezoneW + safezoneX;
           y = 0.549823259006816 * safezoneH + safezoneY;
           w = 0.097495 * safezoneW;
           h = 0.0412186105160662 * safezoneH;
       };
       class AdminMsgAllButton : Life_RscButtonInvisible
       {
           idc = 3021;
           text = "";
           colorbackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
           onbuttonclick = "[] call TON_fnc_cell_adminmsgall";
           x = 0.448859166666667 * safezoneW + safezoneX;
           y = 0.651089081791626 * safezoneH + safezoneY;
           w = 0.097495 * safezoneW;
           h = 0.0431660301850048 * safezoneH;
       };
       class EMSRequest : Life_RscButtonInvisible
       {
           idc = 3022;
           text = "";
           colorbackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
           onbuttonclick = "[] call TON_fnc_cell_emsrequest";
           x = 0.448859166666667 * safezoneW + safezoneX;
           y = 0.600456170399221 * safezoneH + safezoneY;
           w = 0.097495 * safezoneW;
           h = 0.0421923203505355 * safezoneH;
       };
   };
};
/////////////////////////////////////////////////////////////////
////////////////////////// FILE END /////////////////////////////
/////////////////////////////////////////////////////////////////
