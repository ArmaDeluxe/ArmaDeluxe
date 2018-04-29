class CarBomb {
	name = "CarBomb";
	idd = 36691;
	class controlsBackground {
		class MainBG: Life_RscText
		{
			idc = 2200;
			x = 0.438125 * safezoneW + safezoneX;
			y = 0.401 * safezoneH + safezoneY;
			w = 0.144375 * safezoneW;
			h = 0.11 * safezoneH;
			colorBackground[] = {0.478,0.478,0.478,1};
		};
		class TitleBG: Life_RscText
		{
			idc = 2201;
			x = 0.438125 * safezoneW + safezoneX;
			y = 0.379 * safezoneH + safezoneY;
			w = 0.144375 * safezoneW;
			h = 0.022 * safezoneH;
			colorBackground[] = {0.361,0.361,0.361,1};
		};
	};
	class controls {
		class RscText_1000: Life_RscText
		{
			idc = 1000;
			text = "Set Timer (Seconds)"; //--- ToDo: Localize;
			x = 0.437501 * safezoneW + safezoneX;
			y = 0.363889 * safezoneH + safezoneY;
			w = 0.0928125 * safezoneW;
			h = 0.055 * safezoneH;
		};
		class Input: Life_RscEdit
		{
			idc = 1400;
			text = "";
			x = 0.448438 * safezoneW + safezoneX;
			y = 0.445 * safezoneH + safezoneY;
			w = 0.12375 * safezoneW;
			h = 0.022 * safezoneH;
			colorBackground[] = {-1,-1,-1,0.7};
		};
		class RscButtonMenu_2400: Life_RscButtonMenu
		{
			idc = 2400;
			text = "SET"; //--- ToDo: Localize;
			x = 0.494844 * safezoneW + safezoneX;
			y = 0.478 * safezoneH + safezoneY;
			w = 0.0309375 * safezoneW;
			h = 0.022 * safezoneH;
			onButtonClick = "[] spawn life_fnc_timedCarBomb;";
		};
		class RscText_1001: Life_RscText
		{
			idc = 1001;
			text = "Setup car bomb"; //--- ToDo: Localize;
			x = 0.445625 * safezoneW + safezoneX;
			y = 0.399611 * safezoneH + safezoneY;
			w = 0.0876563 * safezoneW;
			h = 0.055 * safezoneH;
		};
	};
};
