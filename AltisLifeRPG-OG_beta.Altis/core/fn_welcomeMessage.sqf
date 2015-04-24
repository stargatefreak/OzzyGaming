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
switch(playerSide) do {
	case west: {
		playSound "police";
	};
	case independent: {
		playSound "ems";
	};
	case civilian: {
		playSound "civilian";
	};
};
sleep 0.3; 
_role1 = "Welcome"; //In yellow
_role1names = ["Thank you for joining the OzzyGaming Altis Life Server."]; //In white
_role2 = "New Life Rule!";
_role2names = ["If you are killed you cannot join the engagement you were killed in. Cops must wait at least 10 minutes before returning to the area."]; 
_role3 = "Use the Map!";
_role3names = ["Most of the basic laws, and controls are explained by selecting the M key, and choosing the options on the side of the map"]; 
_role4 = "Team-speak";
_role4names = ["Feel free to join our team-speak at ts3.ozzygaming.com. Police and Medics MUST be on teamspeak and in their relevant channels."]; 
_role5 = "Website";
_role5names = ["You can view our website at http://www.OzzyGaming.com"];
_role6 = "Civilians";
_role6names = ["As a Civilian, please do not provoke police officers."];
_role7 = "Rebels";
_role7names = ["Be sure to role-play every scenario. Being a rebel is not an excuse to shoot stuff!"];
_role8 = "Killing";
_role8names = ["Death Messages are saved to a log file, along with many other things. Don't be a dick!"];
_role9 = "UNIQUE Features";
_role9names = ["What makes our server better then the rest. Check out the list of things on the map under UNIQUE Features."];
_role10 = "Admins";
_role10names = ["You can contact any of the Admins on any query, Simply MSG an admin through your phone. You can also contact us on Teamspeak."];
_role11 = "Golden Treasures!";
_role11names = ["Try your luck to find each of the crash sites and get the massive gold cargo. 13 locations on the ocean floor."];
_role12 = "Death Screen Quitting!";
_role12names = ["If you forcibly quit out of the server whilst in the death screen you will loose 25% of your bank."];
_role13 = "Questions?";
_role13names = ["Be sure to contact us if you have any questions!"];
_role14 = "Enjoy!";
_role14names = ["Have fun in our server and please be considerate of the other players :)"];
 
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