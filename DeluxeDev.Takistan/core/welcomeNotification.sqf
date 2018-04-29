private["_display","_rules"];
createDialog "life_server_rules";
disableSerialization;
_display = findDisplay 999999;
noesckey = (findDisplay 999999) displayAddEventHandler ["KeyDown", "if ((_this select 1) == 1) then { true }"];
_rules = _display displayCtrl 1100;
 
_rules ctrlSetStructuredText parseText format["
<t size='1.1'>Welcome %1 to <t color='#007BFF'>Takistan Redux</t><br/>
<br/>
<t size='0.8px'>Our Website: <t color='#007BFF'>http://www.takistanredux.com</t></t><br/>
<br/>
<br/>
<t size='0.8px'>Takistan Redux Life is a Serious RP Server so before you play, make sure to go read our rules on our <t color='#007BFF'>Website</t></t><br/>
<br/>
<t size='0.8px'>- You will not exploit, duplicate, abuse, glitch or hack any mechanism on the server.</t>
<br/>
<br/>
<t size='0.8px'>- You will report any bug or glitch to a developer or staff member.</t>
<br/>
<br/>
<t size='0.8px'>- You understand you must follow the server rules at all times while on the server.</t>
<br/>
<br/>
<t size='0.8px'>- You understand you must not try not to ruin any other players experience while in-game.</t>
<br/>
<br/>
<t size='0.8px'>Have a good day,</t>
<br/>
<br/>
<t size='0.8px' color='#007BFF'>The Takistan Redux Team</t>
<br/>
<br/>",name player];