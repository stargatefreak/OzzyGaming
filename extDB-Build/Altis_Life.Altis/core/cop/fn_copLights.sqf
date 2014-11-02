/*
	File: fn_copLights.sqf
	Author: mindstorm, modified by Adanteh
	Link: http://forums.bistudio.com/showthread.php?157474-Offroad-Police-sirens-lights-and-underglow
	
	Description:
	Adds the light effect to cop vehicles, specifically the offroad.
*/
Private ["_vehicle","_lightRed","_lightBlue","_lightleft","_lightleftfront","_lightright","_lightrightfront","_leftRed"];
_vehicle = _this select 0;
	
if(isNil "_vehicle" OR isNull _vehicle OR !(_vehicle getVariable "lights")) exitWith {};
_lightRed = [20, 0.1, 0.1];
_lightBlue = [0.1, 0.1, 20];

_lightleft = "#lightpoint" createVehicle getpos _vehicle;   
_lightleftfront = "#lightpoint" createVehicle getpos _vehicle;   
sleep 0.2;
_lightleft setLightColor _lightRed; 
_lightleft setLightBrightness 0.2;  
_lightleft setLightAmbient [0.1,0.1,1];
_lightleftfront setLightColor _lightRed; 
_lightleftfront setLightBrightness 0.2;  
_lightleftfront setLightAmbient [0.1,0.1,1];

switch (typeOf _vehicle) do
{
	case "C_Offroad_01_F":
	{
		_lightleft lightAttachObject [_vehicle, [-0.37, 0.0, 0.56]];
		_lightleftfront lightAttachObject [_vehicle, [-0.37,2.6,-0.61]];
	};
	
	case "B_MRAP_01_F":
	{
		_lightleft lightAttachObject [_vehicle, [-0.37, -1.9, 0.7]];
		_lightleftfront lightAttachObject [_vehicle, [-0.37,1.6,-0.8]];
	};
	
	case "C_SUV_01_F":
	{
		_lightleft lightAttachObject [_vehicle, [-0.37,-1.2,0.42]];
		_lightleftfront lightAttachObject [_vehicle, [-0.37,2.4,-0.61]];
	};
	
	case "C_Hatchback_01_sport_F":
	{
		_lightleft lightAttachObject [_vehicle, [-0.37,-0.3,0.3]];
		_lightleftfront lightAttachObject [_vehicle, [-0.37,2.1,-0.6]];
	};
};

_lightleft setLightAttenuation [0.181, 0, 1000, 130]; 
_lightleft setLightIntensity 10;
_lightleft setLightFlareSize 0.38;
_lightleft setLightFlareMaxDistance 150;
_lightleft setLightUseFlare true;
_lightleftfront setLightAttenuation [0.181, 0, 1000, 130]; 
_lightleftfront setLightIntensity 10;
_lightleftfront setLightFlareSize 0.38;
_lightleftfront setLightFlareMaxDistance 150;
_lightleftfront setLightUseFlare true;

_lightright = "#lightpoint" createVehicle getpos _vehicle;   
_lightrightfront = "#lightpoint" createVehicle getpos _vehicle;   
sleep 0.2;
_lightright setLightColor _lightBlue; 
_lightright setLightBrightness 0.2;  
_lightright setLightAmbient [0.1,0.1,1]; 
_lightrightfront setLightColor _lightBlue; 
_lightrightfront setLightBrightness 0.2;  
_lightrightfront setLightAmbient [0.1,0.1,1]; 

switch (typeOf _vehicle) do
{
	case "C_Offroad_01_F":
	{
		_lightright lightAttachObject [_vehicle, [0.37, 0.0, 0.56]];
		_lightrightfront lightAttachObject [_vehicle, [0.37,2.6,-0.61]];
	};
	
	case "B_MRAP_01_F":
	{
		_lightright lightAttachObject [_vehicle, [0.37, -1.9, 0.7]];
		_lightrightfront lightAttachObject [_vehicle, [0.37,1.6,-0.8]];
	};
	
	case "C_SUV_01_F":
	{
		_lightright lightAttachObject [_vehicle, [0.37,-1.2,0.42]];
		_lightrightfront lightAttachObject [_vehicle, [0.37,2.4,-0.61]];
	};
	
	case "C_Hatchback_01_sport_F":
	{
		_lightright lightAttachObject [_vehicle, [0.37,-0.3,0.3]];
		_lightrightfront lightAttachObject [_vehicle, [0.37,2.1,-0.6]];
	};
};
  
_lightright setLightAttenuation [0.181, 0, 1000, 130]; 
_lightright setLightIntensity 10;
_lightright setLightFlareSize 0.38;
_lightright setLightFlareMaxDistance 150;
_lightright setLightUseFlare true;
_lightrightfront setLightAttenuation [0.181, 0, 1000, 130]; 
_lightrightfront setLightIntensity 10;
_lightrightfront setLightFlareSize 0.38;
_lightrightfront setLightFlareMaxDistance 150;
_lightrightfront setLightUseFlare true;

//ARE YOU ALL HAPPY?!?!?!?!?!?!?!?!?%#?@WGD?TGD?BN?ZDHBFD?GA
_lightleft setLightDayLight true;
_lightleftfront setLightDayLight true;
_lightright setLightDayLight true;
_lightrightfront setLightDayLight true;

_leftRed = true;  
while{ (alive _vehicle)} do  
{  
	if(!(_vehicle getVariable "lights")) exitWith {};
	if(_leftRed) then  
	{  
		_leftRed = false;  
		_lightright setLightBrightness 0.0;  
		_lightrightfront setLightBrightness 6;  
		sleep 0.05;
		_lightleft setLightBrightness 6;  
		_lightleftfront setLightBrightness 0.0;  
	}  
		else  
	{  
		_leftRed = true;  
		_lightleft setLightBrightness 0.0;  
		_lightleftfront setLightBrightness 6;  
		sleep 0.05;
		_lightright setLightBrightness 6; 
		_lightrightfront setLightBrightness 0.0;  
	};  
	sleep (_this select 1);  
};  
deleteVehicle _lightleft;
deleteVehicle _lightleftfront;
deleteVehicle _lightright;
deleteVehicle _lightrightfront;