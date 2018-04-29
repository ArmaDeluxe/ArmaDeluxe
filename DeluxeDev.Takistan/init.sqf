tf_no_auto_long_range_radio = true;
tf_west_radio_code = "";
tf_east_radio_code = tf_west_radio_code;
tf_guer_radio_code = tf_west_radio_code;
tf_civ_radio_code = tf_west_radio_code;

StartProgress = false;
enableSaving[false,false];

life_versionInfo = "Takistan Redux";
[] execVM "KRON_Strings.sqf";
[] execVM "core\noMineMarkers.sqf";
[] execVM "scripts\removeFog.sqf";
[] execVM "scripts\removeWeather.sqf";
[] execVM "scripts\removeSnakes.sqf";
[] execVM "scripts\teargas.sqf";
if (isServer) then {
	[] spawn life_fnc_initgangzones;
};
StartProgress = true;
if(!isDedicated) exitWith{};
Tower2 setVariable ["eg_terror", false, true];
Checkpoint1 setVariable ["checkpoint_alarm", false, true];
"BIS_fnc_MP_packet" addPublicVariableEventHandler {_this call life_fnc_MPexec};
