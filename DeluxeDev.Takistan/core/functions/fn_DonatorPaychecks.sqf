
if (isNil "TFAR_fnc_isTeamSpeakPluginEnabled") exitwith {
	
	999999 cutText ["Task Force Radio is not running on your computer. Please re-sync and retry","BLACK FADED"];
	999999 cutFadeOut 99999999;

};



_TFenabled = [] call TFAR_fnc_isTeamSpeakPluginEnabled;

if (!(_TFenabled)) then {

	while {!([] call TFAR_fnc_isTeamSpeakPluginEnabled)} do {
		
		titleText ["Please enable Task Force Radio in your TS3 Plugins! || TS3 -> Settings -> Plugins", "BLACK"];
		uiSleep 2;
		
	};
};

A3L_TFEnabled = true;
A3L_onTsServer = "Redline Gaming - Takistan Life" == (call TFAR_fnc_getTeamSpeakServerName);
A3L_onChannel = "TaskForceRadio" == (call TFAR_fnc_getTeamSpeakChannelName);
titleText ["Task Force Radio loaded succesfully","BLACK IN"];

[] spawn {

	while {true} do {
	
				_isadmin = false;
				if (!(isNil "life_adminlevel")) then {
					_adminlvl = life_adminlevel call BIS_fnc_parseNumber;
					
					if (_adminlvl > 0) then {
						_isadmin = false;
					};
				};
				
				if (!(_isadmin)) then {
				
					_TFenabled = [] call TFAR_fnc_isTeamSpeakPluginEnabled;
					if ((!(_TFenabled)) && (A3L_TFEnabled)) then {
						titleText ["Please enable Task Force Radio in your TS3 Plugins! || TS3 -> Settings -> Plugins", "BLACK"];
						A3L_TFEnabled = false;
					};
					
					_onTsServer = "ArmaDeluxe" == (call TFAR_fnc_getTeamSpeakServerName);
					if (!(_onTsServer)) then {
						titleText ["Please join the ArmaDeluxe teamspeak server", "BLACK"];
						A3L_onTsServer = false;
					} else {
						if (!(A3L_onTsServer)) then {
							titleText ["TS server check completed. Welcome!","BLACK IN"];
							A3L_onTsServer = true;
						};
					};
					
					_onChannel = "TaskForceRadio" == (call TFAR_fnc_getTeamSpeakChannelName);
					if (!(_onChannel)) then {
						titleText ["Please reload the plugin to join the TFR channel || Settings -> Plugins -> Reload All", "BLACK"];
						A3L_onChannel = false;
					} else {
						if (!(A3L_onChannel)) then {
							titleText ["TS channel check completed. Welcome!","BLACK IN"];
							A3L_onChannel = true;
						};
					};
					
					
					if ((_TFenabled) && (!(A3L_TFEnabled))) then {
						titleText ["Plugin enabled, welcome back!","BLACK IN"];
						A3L_TFEnabled = true;
					};
				
				};
				
				uiSleep 2;	
			};

};