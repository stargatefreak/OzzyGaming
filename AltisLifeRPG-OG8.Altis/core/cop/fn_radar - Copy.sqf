/*
	File: fn_commRemove.sqf
	Author: Aaron
	
	Description:
	Comm Removal stuff
*/
if(playerSide != west) exitWith {};
Private ["player","_lightRed","_lightBlue","_lightleft","_lightleftfront","_lightright","_lightrightfront","_leftRed"];
player = _this select 0;
	
_lightRed = [20, 0.1, 0.1];

sleep 0.2;
_lightleft = "#lightpoint" createVehicle getpos player;
_lightleft setVelocity velocity player;
_lightleft setLightColor _lightRed; 
_lightleft setLightBrightness 0.2;  
_lightleft setLightAmbient [0.1,0.1,1];
_lightleft lightAttachObject [player, [-0.37, 0.0, 0.56]];
_lightleft setLightAttenuation [0.181, 0, 1000, 130]; 
_lightleft setLightIntensity 1;
_lightleft setLightFlareSize 0.1;
_lightleft setLightFlareMaxDistance 0.5;
_lightleft setLightUseFlare true;
_lightleft setLightDayLight true;

sleep 0.2;
_leftRed = true;  
while{ (alive _vehicle)} do  
{  
	if(!(_vehicle getVariable "lights")) exitWith {};
	if(_leftRed) then  
	{  
		_leftRed = false;  
		_lightleft setLightBrightness 6;    
		sleep 0.05;
	}  
		else  
	{  
		_leftRed = true;  
		_lightleft setLightBrightness 0.0;   
		sleep 0.05;
	};  
	sleep (_this select 1);  
}; 
deleteVehicle _lightleft;