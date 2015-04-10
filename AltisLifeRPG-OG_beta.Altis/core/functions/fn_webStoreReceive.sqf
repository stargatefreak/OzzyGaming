/*
	File: fn_webStoreReceive
	Author: Aaron "StargateFreak"
	
	Description:
	System designed by Aaron to be used by associated OzzyGaming.com servers.
    You must ask permission before using my system.
    
    This system automatically gives money purchased on the website to be applied to the online
    players without having the need of logging out.
*/
private["_money","_antihack"];
_money = [_this, 0, 0, [0]] call BIS_fnc_param;
// _antihack = [_this, 0, 0, [0]] call BIS_fnc_param;
// if(_antihack != OG_storeAntiInject) exitWith {[3,"<t color='#EF9248' size='2'>OZZY-ANTIHACK</t><br/><t color='#A0E7FF'>%1 has been attempted to hack in money by injection",name player] call life_fnc_broadcast};
sleep (random 5);
if(_money == 0) exitWith {};
if(life_OGstore) exitwith {};
life_OGstore = true;
diag_log format["WebStore_receives $%1",_money];
life_ogWebStore = _money;
life_ogBank415 = life_ogBank415 + life_ogWebStore;
hint format["WEBSTORE MONEY RECEIVED FROM SERVER: %1",life_ogWebStore];
life_ogWebStore = 0;
["WebStorePurchase",[format["You have recieved $%1 from the WebStore.",[_money] call life_fnc_numberText]]] call bis_fnc_showNotification;
[3,["<t size='1'>Your WebStore purchase has arrived.<br/><br/>$%1 has been added to your account.<br/><br/>Thank you for your purchase</t>",
[_money] call life_fnc_numberText]] spawn life_fnc_broadcast;
sleep 5;
life_OGstore = false;