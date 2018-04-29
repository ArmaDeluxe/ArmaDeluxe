/*
	File: welcomeNotification.sqf
	Author: www.rlgroleplay.com

*/
class life_server_rules
{
	idd = 999999;
	scriptName = "life_server_rules";	
	onLoad = "";
	onUnload = "[""onUnload"",_this,""RLG_Welcome"",'GUI'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')";
	class controlsBackground
	{
		class TileGroup: Life_RscControlsGroupNoScrollbars
		{
			idc = 115099;
			x = "safezoneX";
			y = "safezoneY";
			w = "safezoneW";
			h = "safezoneH";
			disableCustomColors = 1;
			class Controls
			{
				class TileFrame: Life_RscFrame
				{
					idc = 114999;
					x = 0;
					y = 0;
					w = "safezoneW";
					h = "safezoneH";
					colortext[] = {0,0,0,1};
				};
			};
		};

		class TitleBackground: Life_RscText
		{
			colorBackground[] = {0, 0, 0, 0.7};
			idc = 1080;
			x = "1 * 					(			((safezoneW / safezoneH) min 1.2) / 40) + 		(safezoneX + (safezoneW - 					((safezoneW / safezoneH) min 1.2))/2)";
			y = "1 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) + 		(safezoneY + (safezoneH - 					(			((safezoneW / safezoneH) min 1.2) / 1.2))/2)";
			w = "38 * 					(			((safezoneW / safezoneH) min 1.2) / 40)";
			h = "1 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
		};
		
		class RightBackground: Life_RscText
		{
			colorBackground[] = {0,0,0,0.7};
			idc = 1081;
			x = "1 * 					(			((safezoneW / safezoneH) min 1.2) / 40) + 		(safezoneX + (safezoneW - 					((safezoneW / safezoneH) min 1.2))/2)";
			y = "2.1 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) + 		(safezoneY + (safezoneH - 					(			((safezoneW / safezoneH) min 1.2) / 1.2))/2)";
			w = "38 * 					(			((safezoneW / safezoneH) min 1.2) / 40)";
			h = "20.8 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
		};
	};
	class controls
	{
		class Title: Life_RscTitle
		{
			style = 0;
			idc = 1000;
			text = "Server Info";
			x = "1 * 					(			((safezoneW / safezoneH) min 1.2) / 40) + 		(safezoneX + (safezoneW - 					((safezoneW / safezoneH) min 1.2))/2)";
			y = "1 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) + 		(safezoneY + (safezoneH - 					(			((safezoneW / safezoneH) min 1.2) / 1.2))/2)";
			w = "38 * 					(			((safezoneW / safezoneH) min 1.2) / 40)";
			h = "1 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			colorBackground[] = {0, 0, 0, 0};
		};
		class ButtonContinue: Life_RscButtonMenu
		{
			text = "OKAY, MOVE ON";
			onButtonClick = "[] call life_fnc_hudSetup;(findDisplay 2300) displayRemoveEventHandler ['KeyDown', noesckey]; closeDialog 0;";
			x = "32.75 * 					(			((safezoneW / safezoneH) min 1.2) / 40) + 		(safezoneX + (safezoneW - 					((safezoneW / safezoneH) min 1.2))/2)";
			y = "23 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) + 		(safezoneY + (safezoneH - 					(			((safezoneW / safezoneH) min 1.2) / 1.2))/2)";
			w = "6.25 * 					(			((safezoneW / safezoneH) min 1.2) / 40)";
			h = "1 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			colorText[] = {1,1,1,1};
			colorBackground[] = {0.024,0.69,0.133,1};
			colorBackgroundActive[] = {0.024,0.69,0.133,1};
		};
		class MainControlsGroup: Life_RscControlsGroupNoScrollbars
		{
			idc = 2300;
			x = "1 * 					(			((safezoneW / safezoneH) min 1.2) / 40) + 		(safezoneX + (safezoneW - 					((safezoneW / safezoneH) min 1.2))/2)";
			y = "2.1 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) + 		(safezoneY + (safezoneH - 					(			((safezoneW / safezoneH) min 1.2) / 1.2))/2)";
			w = "38 * 					(			((safezoneW / safezoneH) min 1.2) / 40)";
			h = "20.8 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			class controls
			{
				class WelcomeStructuredText1: Life_RscStructuredText
				{
					idc = 1100;
					x = "0.5 * 					(			((safezoneW / safezoneH) min 1.2) / 40)";
					y = "0.2 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
					w = "37 * 					(			((safezoneW / safezoneH) min 1.2) / 40)";
					h = "20.0 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
				};
			};
		};
	};
};