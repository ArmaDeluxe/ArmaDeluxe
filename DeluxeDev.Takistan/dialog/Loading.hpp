/* #Vywymi
$[
	1.063,
	["RRLoad",[[0,0,1,1],0.025,0.04,"GUI_GRID"],0,0,0],
	[1200,"",[1,"\rr_textures\loading\RRLoad_17.paa",["0.443281 * safezoneW + safezoneX","0.401 * safezoneH + safezoneY","0.113437 * safezoneW","0.198 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]]
]
*/

class RscPicture
{
	deletable = 0;
	fade = 0;
	access = 0;
	type = 0;
	idc = -1;
	style = 48;
	colorBackground[] = 
	{
		0,
		0,
		0,
		0
	};
	colorText[] = 
	{
		1,
		1,
		1,
		1
	};
	font = "TahomaB";
	sizeEx = 0;
	lineSpacing = 0;
	text = "";
	fixedWidth = 0;
	shadow = 0;
	x = 0;
	y = 0;
	w = 0.2;
	h = 0.15;
	tooltipColorText[] = 
	{
		1,
		1,
		1,
		1
	};
	tooltipColorBox[] = 
	{
		1,
		1,
		1,
		1
	};
	tooltipColorShade[] = 
	{
		0,
		0,
		0,
		0.65
	};
};

class MB_Loading
{
	fadein = 0;
	fadeout = 0;
	duration = 15000;
	idd = 1010;
	movingEnable = 0;
	enableSimulation = 0;
	onLoad = "uiNamespace setVariable ['MB_Loading', _this select 0]";
	onUnload = "uiNamespace setVariable ['MB_Loading', displayNull]";	

	class controls {

		class RscPicture_1200: RscPicture
		{
			idc = 1200;
			text = "\rr_textures\loading\RRLoad_0.paa";
			x = 0.443281 * safezoneW + safezoneX;
			y = 0.401 * safezoneH + safezoneY;
			w = 0.113437 * safezoneW;
			h = 0.198 * safezoneH;
		};
	};
};