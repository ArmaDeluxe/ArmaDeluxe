//Fixed by mr evil himself (Cobra the cunt)
//this is a nice meme

class revokeLicense_Menu
{
	idd = 41000;
	movingEnable = 0;
	enableSimulation = 1;
	
	class controlsBackground {
		class RscTitleBackground:life_RscText 
		{
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
			idc = -1;
			x = 0.35;
			y = 0.2;
			w = 0.3;
			h = (1 / 25);
		};
		
		class MainBackground : life_RscText
		{
			idc = -1;
			colorBackground[] = {0,0,0,0.7};
			x = 0.35;
			y = 0.2 + (11 / 250);
			w = 0.3;
			h = 0.6 - (22 / 250);
		};
		
		class Title : life_RscTitle
		{
			colorBackground[] = {0,0,0,0};
			idc = 41001;
			text = "Revoke Licenses";
			x = 0.35;
			y = 0.2;
			w = 0.3;
			h = (1 / 25);
		};
	};
	
	class controls {

		class ButtonClose : life_RscButtonMenu 
		{
			idc = -1;
			text = "Close";
			onButtonClick = "closeDialog 0;";
			x = 0.35;
			y = 0.8 - (1 / 25);
			w = (6.25 / 40);
			h = (1 / 25);
		};

		class ButtonOne : life_RscButtonMenu
		{
			idc = 41002;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
			text = "Driver License";
			sizeEx = 0.025;
			x = 0.35 + 0.03;
			y = 0.2 + 0.07;
			w = 0.24;
			h = 0.038;
		};
		
		class ButtonTwo : life_RscButtonMenu
		{
			idc = 41003;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
			text = "Truck License";
			sizeEx = 0.025;
			x = 0.35 + 0.03;
			y = 0.2 + 0.12;
			w = 0.24;
			h = 0.038;
		};
		
		class ButtonThree : life_RscButtonMenu
		{
			idc = 41004;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
			text = "Pilot License";
			sizeEx = 0.025;
			x = 0.35 + 0.03;
			y = 0.2 + 0.17;
			w = 0.24;
			h = 0.038;
		};
		
		class ButtonFour : life_RscButtonMenu
		{
			idc = 41005;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
			text = "Pistol License";
			sizeEx = 0.025;
			x = 0.35 + 0.03;
			y = 0.2 + 0.22;
			w = 0.24;
			h = 0.038;
		};

		class ButtonFive : life_RscButtonMenu
		{
			idc = 41006;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
			text = "Passport";
			sizeEx = 0.025;
			x = 0.35 + 0.03;
			y = 0.2 + 0.27;
			w = 0.24;
			h = 0.038;
		};
	};
};