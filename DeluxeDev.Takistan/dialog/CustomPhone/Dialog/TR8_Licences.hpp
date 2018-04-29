/////////////////////////////////////////////////////////////////
/////////// Created by TomWalker ///////////
/////////////////////////////////////////////////////////////////
class Life_TR8_Licences {
   idd = 20058;
   name = "Life_TR8_Licences";
   movingenable = 0;
   enablesimulation = 1;
   class controlsBackground
   {
       class TR8_Licences : Life_RscPicture
       {
           idc = 1001;
           text = "\TWalker\TW_PhoneLic.paa";
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
       class TR8_Licence_List : Life_RscStructuredText
       {
           idc = 1500;
           background[] = {0,0,0,0};
           x = 0.440031666666667 * safezoneW + safezoneX;
           y = 0.306056373904576 * safezoneH + safezoneY;
           w = 0.114655833333333 * safezoneW;
           h = 0.348276634858812 * safezoneH;
       };
   };
};
/////////////////////////////////////////////////////////////////
////////////////////////// FILE END /////////////////////////////
/////////////////////////////////////////////////////////////////
