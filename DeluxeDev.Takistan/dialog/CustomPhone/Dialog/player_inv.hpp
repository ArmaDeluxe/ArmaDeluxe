/////////////////////////////////////////////////////////////////
/////////// Created by TomWalker ///////////
/////////////////////////////////////////////////////////////////
class playerSettings {
   idd = 10892;
   name = "playerSettings";
   movingenable = 1;
   enablesimulation = 1;
   class controlsBackground
   {
       class TR8_HomeScreen : Life_RscPicture
       {
           idc = 1001;
           text = "\TWalker\TW_PhoneHome.paa";
           x = 0.358854166666667 * safezoneW + safezoneX;
           y = 0.192794547224927 * safezoneH + safezoneY;
           w = 0.291666666666667 * safezoneW;
           h = 0.537487828627068 * safezoneH;
       };
       class Title : life_RscTitle
       {
           colorbackground[] = {0, 0, 0, 0};
           idc = -1;
           text = "";
           x = 0.1;
           y = 0.2;
           w = 0.8;
           h = (1 / 25);
       };
   };
   class controls
   {
       class ButtonSettings : Life_RscButtonInvisible
       {
           idc = -1;
           text = "";
           onbuttonclick = "[] call life_fnc_settingsMenu;";
           x = 0.438337 * safezoneW + safezoneX;
           y = 0.248125632911392 * safezoneH + safezoneY;
           w = 0.025877 * safezoneW;
           h = 0.0439812 * safezoneH;
       };
       class ButtonMyGang : Life_RscButtonInvisible
       {
           idc = 2011;
           text = "";
           onbuttonclick = "if(isNil ""life_action_gangInUse"") then {if(isNil {(group player) getVariable ""gang_owner""}) then {createDialog ""Life_Create_Gang_Diag"";} else {[] spawn life_fnc_gangMenu;};};";
           x = 0.541145833333333 * safezoneW + safezoneX;
           y = 0.324326580331061 * safezoneH + safezoneY;
           w = 0.025877 * safezoneW;
           h = 0.0439812 * safezoneH;
       };
       class ButtonGangList : Life_RscButtonInvisible
       {
           idc = 2012;
           text = "";
           onbuttonclick = "[] call life_fnc_wantedMenu;";
           x = 0.438337 * safezoneW + safezoneX;
           y = 0.410494906523856 * safezoneH + safezoneY;
           w = 0.025877 * safezoneW;
           h = 0.0439812000000001 * safezoneH;
       };
       class ButtonLicences : Life_RscButtonInvisible
       {
           idc = 1602;
           onbuttonclick = "[] call life_fnc_openLicensesMenu;";
           x = 0.541145833333333 * safezoneW + safezoneX;
           y = 0.248125632911392 * safezoneH + safezoneY;
           w = 0.025877 * safezoneW;
           h = 0.0439812 * safezoneH;
       };
       class ButtonMarket : Life_RscButtonInvisible
       {
           idc = 3025;
           onbuttonclick = "createDialog ""life_dynmarket_prices"";";
           x = 0.438337 * safezoneW + safezoneX;
           y = 0.324326580331061 * safezoneH + safezoneY;
           w = 0.025877 * safezoneW;
           h = 0.0439812 * safezoneH;
       };
       class ButtonKeys : Life_RscButtonInvisible
       {
           idc = 2013;
           text = "";
           onbuttonclick = "createDialog ""Life_key_management"";";
           x = 0.505438666666667 * safezoneW + safezoneX;
           y = 0.248125632911392 * safezoneH + safezoneY;
           w = 0.025877 * safezoneW;
           h = 0.0439812 * safezoneH;
       };
       class ButtonCell : Life_RscButtonInvisible
       {
           idc = 2014;
           onbuttonclick = "createDialog ""Life_cell_phone"";";
           x = 0.4728565 * safezoneW + safezoneX;
           y = 0.324326580331061 * safezoneH + safezoneY;
           w = 0.025877 * safezoneW;
           h = 0.0439812 * safezoneH;
       };
       class ButtonAdminMenu : Life_RscButtonInvisible
       {
           idc = 2021;
           onbuttonclick = "createDialog ""TTM_GUI_RscDisplayTalentOverview"";";
           x = 0.541145833333333 * safezoneW + safezoneX;
           y = 0.410494906523856 * safezoneH + safezoneY;
           w = 0.025877 * safezoneW;
           h = 0.0439811999999999 * safezoneH;
       };
       class ButtonSyncData : Life_RscButtonInvisible
       {
           idc = -1;
           text = "";
           onbuttonclick = "[] call SOCK_fnc_syncData;";
           x = 0.4728565 * safezoneW + safezoneX;
           y = 0.248125632911392 * safezoneH + safezoneY;
           w = 0.025877 * safezoneW;
           h = 0.0439812 * safezoneH;
       };
       class ButtonDanceMoves : Life_RscButtonInvisible
       {
           idc = -1;
           text = "";
           onbuttonclick = "createDialog ""life_moves_menu"";";
           x = 0.505438666666667 * safezoneW + safezoneX;
           y = 0.410494906523856 * safezoneH + safezoneY;
           w = 0.025877 * safezoneW;
           h = 0.0439812 * safezoneH;
       };
       class ButtonBanking : Life_RscButtonInvisible
       {
           idc = -1;
           text = "";
           onbuttonclick = "[] call life_fnc_openBankMenu;";
           x = 0.505438666666667 * safezoneW + safezoneX;
           y = 0.324326580331061 * safezoneH + safezoneY;
           w = 0.0294571666666667 * safezoneW;
           h = 0.0439812 * safezoneH;
       };
       class ButtonPlayerMenu : Life_RscButtonInvisible
       {
           idc = -1;
           onbuttonclick = "[]call life_fnc_openInvMenu;";
           x = 0.4728565 * safezoneW + safezoneX;
           y = 0.410494906523856 * safezoneH + safezoneY;
           w = 0.025877 * safezoneW;
           h = 0.0439812 * safezoneH;
       };
   };
};
/////////////////////////////////////////////////////////////////
////////////////////////// FILE END /////////////////////////////
/////////////////////////////////////////////////////////////////
