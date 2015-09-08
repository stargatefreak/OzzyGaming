/*
	File: fn_copLights.sqf
	Author: mindstorm, modified by Adanteh
	Link: http://forums.bistudio.com/showthread.php?157474-Offroad-Police-sirens-lights-and-underglow
	
	Description:
	Adds the light effect to cop vehicles, specifically the offroad.
*/
Private ["_vehicle","_lightRed","_lightBlue","_lightFrontLeft","_lightBackLeft","_lightFrontRight","_lightBackRight","_leftOn"];
_vehicle = _this select 0;
	
if(isNil "_vehicle" OR isNull _vehicle OR !(_vehicle getVariable "lights")) exitWith {};
_lightRed = [0.1, 0.1, 20]; // Is actually blue
_lightBlue = [0.1, 0.1, 20];

// Create left lights
_lightFrontLeft = "#lightpoint" createVehicle getpos _vehicle;   
_lightBackLeft = "#lightpoint" createVehicle getpos _vehicle;   
sleep 0.2;
_lightFrontLeft setLightColor _lightRed; 
_lightFrontLeft setLightBrightness 0.2;  
_lightFrontLeft setLightAmbient [0.1,0.1,1];

_lightFrontLeft setLightAttenuation [0.181, 0, 1000, 130]; 
_lightFrontLeft setLightIntensity 10;
_lightFrontLeft setLightFlareSize 0.38;
_lightFrontLeft setLightFlareMaxDistance 150;
_lightFrontLeft setLightUseFlare true;

_lightBackLeft setLightColor _lightRed; 
_lightBackLeft setLightBrightness 0.2;  
_lightBackLeft setLightAmbient [0.1,0.1,1];

_lightBackLeft setLightAttenuation [0.181, 0, 1000, 130]; 
_lightBackLeft setLightIntensity 10;
_lightBackLeft setLightFlareSize 0.38;
_lightBackLeft setLightFlareMaxDistance 150;
_lightBackLeft setLightUseFlare true;

 
// Create right lights
_lightFrontRight = "#lightpoint" createVehicle getpos _vehicle;   
_lightBackRight = "#lightpoint" createVehicle getpos _vehicle;   
sleep 0.2;
_lightFrontRight setLightColor _lightBlue; 
_lightFrontRight setLightBrightness 0.2;  
_lightFrontRight setLightAmbient [0.1,0.1,1];

_lightFrontRight setLightAttenuation [0.181, 0, 1000, 130]; 
_lightFrontRight setLightIntensity 10;
_lightFrontRight setLightFlareSize 0.38;
_lightFrontRight setLightFlareMaxDistance 150;
_lightFrontRight setLightUseFlare true;

_lightBackRight setLightColor _lightBlue; 
_lightBackRight setLightBrightness 0.2;  
_lightBackRight setLightAmbient [0.1,0.1,1];

_lightBackRight setLightAttenuation [0.181, 0, 1000, 130]; 
_lightBackRight setLightIntensity 10;
_lightBackRight setLightFlareSize 0.38;
_lightBackRight setLightFlareMaxDistance 150;
_lightBackRight setLightUseFlare true;

_lightFrontLeft setVelocity velocity _vehicle; 
_lightFrontRight setVelocity velocity _vehicle;  
_lightBackLeft setVelocity velocity _vehicle;
_lightBackRight setVelocity velocity _vehicle;  
// Position lights
switch (typeOf _vehicle) do
{
	case "B_MRAP_01_F":
	{
		_lightFrontLeft lightAttachObject [_vehicle, [-0.37,1.6,-0.8]];
		_lightFrontRight lightAttachObject [_vehicle, [0.37,1.6,-0.8]];
		_lightBackLeft lightAttachObject [_vehicle, [-0.37, -1.9, 0.7]];
		_lightBackRight lightAttachObject [_vehicle, [0.37, -1.9, 0.7]];
	};
	case "C_Offroad_01_F": {
		_lightFrontLeft lightAttachObject [_vehicle, [-0.32,2.6,-0.54]];
		_lightFrontRight lightAttachObject [_vehicle, [0.32,2.6,-0.54]];
		_lightBackLeft lightAttachObject [_vehicle, [-0.37, 0.0, 0.56]];
        _lightBackRight lightAttachObject [_vehicle, [0.37, 0.0, 0.56]];
	};
    case "C_Van_01_box_F": {
		_lightFrontLeft lightAttachObject [_vehicle, [-0.37, 0.2, 1.0]];
		_lightFrontRight lightAttachObject [_vehicle, [0.37, 0.2, 1.0]];
		_lightBackLeft lightAttachObject [_vehicle, [-0.7, -3.65, 1.25]];
        _lightBackRight lightAttachObject [_vehicle, [0.7, -3.65, 1.25]];
    };
    case "I_Truck_02_covered_F": {
		_lightFrontLeft lightAttachObject [_vehicle, [-0.6, 3.3, 0.6]];
		_lightFrontRight lightAttachObject [_vehicle, [0.6, 3.3, 0.6]];
		_lightBackLeft lightAttachObject [_vehicle, [-0.8, -3.6, -0.8]];
        _lightBackRight lightAttachObject [_vehicle, [0.8, -3.6, -0.8]];
    };
    case "C_Hatchback_01_sport_F": {
		_lightFrontLeft lightAttachObject [_vehicle, [-0.37,2.1,-0.6]];
		_lightFrontRight lightAttachObject [_vehicle, [0.37,2.1,-0.6]];
		_lightBackLeft lightAttachObject [_vehicle, [-0.37,-0.3,0.3]];
        _lightBackRight lightAttachObject [_vehicle, [0.37,-0.3,0.3]];
    };
    case "C_SUV_01_F": {
		_lightFrontLeft lightAttachObject [_vehicle, [-0.37,2.43,-0.55]];
		_lightFrontRight lightAttachObject [_vehicle, [0.37,2.43,-0.55]];
		//_lightBackLeft lightAttachObject [_vehicle, [-0.37,-1.2,0.45]];
        //_lightBackRight lightAttachObject [_vehicle, [0.37,-1.2,0.45]];
		_lightBackLeft lightAttachObject [_vehicle, [-0.5,-3.0,-0.25]];
        _lightBackRight lightAttachObject [_vehicle, [0.5,-3.0,-0.25]];
    };
};
  

//ARE YOU ALL HAPPY?!?!?!?!?!?!?!?!?%#?@WGD?TGD?BN?ZDHBFD?GA
_lightFrontLeft setLightDayLight true;
_lightBackLeft setLightDayLight true;
_lightFrontRight setLightDayLight true;
_lightBackRight setLightDayLight true;

_leftOn = true;  
while{ (alive _vehicle)} do  
{  
	if(!(_vehicle getVariable "lights")) exitWith {};
    _lightFrontLeft setVelocity velocity _vehicle; 
    _lightBackLeft setVelocity velocity _vehicle;
    _lightFrontRight setVelocity velocity _vehicle;  
    _lightBackRight setVelocity velocity _vehicle; 
	if(_leftOn) then  
	{  
		_leftOn = false;  
		_lightFrontRight setLightBrightness 0.0;  
		_lightBackRight setLightBrightness 0.0;  
		sleep 0.05;
		_lightFrontLeft setLightBrightness 6;  
		_lightBackLeft setLightBrightness 6;  
	}  
		else  
	{  
		_leftOn = true;  
		_lightFrontLeft setLightBrightness 0.0;  
		_lightBackLeft setLightBrightness 0.0;  
		sleep 0.05;
		_lightFrontRight setLightBrightness 6;  
		_lightBackRight setLightBrightness 6;  
	};  
	sleep (_this select 1);  
};  
deleteVehicle _lightFrontLeft;
deleteVehicle _lightBackLeft;
deleteVehicle _lightFrontRight;
deleteVehicle _lightBackRight;