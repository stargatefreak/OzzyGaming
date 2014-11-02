/*
	File: welcome.sqf
	Author: ZedBuster
    Link: opendayz.net/threads/dayz-welcome-message-credits-style.13071/
	Description:
	Creates an intro on the bottom-right hand corner of the screen.
*/
 
_onScreenTime = 5;
 
[] spawn life_fnc_IntroCam;
sleep 0.1; //Wait in seconds before the credits start after player is in-game
playSound "Intro"; // This calls the code inside of description.ext //
sleep 0.3; 
_role1 = "Welcome"; //In yellow
_role1names = ["Thank you for joining the OzzyGaming Altis Life Server."]; //In white
_role2 = "New Life Rule!";
_role2names = ["If you are killed you cannot join the engagement you were killed in. Cops though must wait at least 10 minutes before returning to the area."]; 
_role3 = "Use the Map!";
_role3names = ["Most of the basic laws, and controls are explained by selecting the M key, and choosing the options on the side of the map"]; 
_role4 = "Team-speak";
_role4names = ["Feel free to join our team-speak if necessary at tssyd1.vilayer.com:10007"]; 
_role5 = "Website";
_role5names = ["You can view our website at http://www.OzzyGaming.com"];
_role6 = "Police";
_role6names = ["Police officers MUST be on team-speak at all times."];
_role7 = "Civilians";
_role7names = ["As a Civilian, please do not provoke police officers."];
_role8 = "Rebels";
_role8names = ["Be sure to role-play every scenario."];
_role9 = "Killing";
_role9names = ["Death Messages are disabled but do save to a log file, if you act an ass you will be caught."];
_role10 = "UNIQUE Features";
_role10names = ["What makes our server better then the rest. Check out the list of things on the map under UNIQUE Features."];
_role11 = "Admins";
_role11names = ["You can contact any of the Admins on any query, Simply MSG an admin through your phone. Make sure you have battery power!"];
_role12 = "Golden Treasures!";
_role12names = ["Try your luck to find each of the crash sites and get the massive gold cargo. 13 locations on the ocean floor."];
_role13 = "Death Screen Quitting!";
_role13names = ["If you forcibly quit out of the server whilst in the death screen you will loose 25% of your bank."];
_role14 = "Enjoy!";
_role14names = ["Have fun in our server and please contact us if you require assistance"];
 
{
sleep 2;
_memberFunction = _x select 0;
_memberNames = _x select 1;
_finalText = format ["<t size='0.40' color='#f2cb0b' align='right'>%1<br /></t>", _memberFunction]; //Changes colours
_finalText = _finalText + "<t size='0.70' color='#FFFFFF' align='right'>";
{_finalText = _finalText + format ["%1<br />", _x]} forEach _memberNames;
_finalText = _finalText + "</t>";
_onScreenTime + (((count _memberNames) - 1) * 0.5);
[
_finalText,
[safezoneX + safezoneW - 0.8,0.50], //DEFAULT: 0.5,0.35
[safezoneY + safezoneH - 0.8,0.7], //DEFAULT: 0.8,0.7
_onScreenTime,
0.5
] spawn BIS_fnc_dynamicText;
sleep (_onScreenTime);
} forEach [
//The list below should have exactly the same amount of roles as the list above
[_role1, _role1names],
[_role2, _role2names],
[_role3, _role3names],
[_role4, _role4names],
[_role5, _role5names],
[_role6, _role6names],
[_role7, _role7names],
[_role8, _role8names],
[_role9, _role9names],
[_role10, _role10names],
[_role11, _role11names],
[_role12, _role12names],
[_role13, _role13names],
[_role14, _role14names]
];