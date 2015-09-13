[] spawn {
	private["_restartEnabled","_time"];
	_restartEnabled = [_this,0,true,[false]] call BIS_fnc_param;
	_time = [_this,1,60,[0]] call BIS_fnc_param;
	
	
	
	OG_restartMessage = "<t size='3' color='#FF0000' align='center'>_________<br/>SERVER RESTART<br/>_________<br/><br/></ t><t size='2' color='#FFD700' align='center'>%1 Minutes until server restart<br/><br/></ t><t size='0.9' color='#B0C4DE' align='right'>Proudly brought to you by %2 from </br><t size='1.1' color='#FF0000' align='right'>Ozzy<t color='#FFFFFF'>Gam<t color='#4444FF'>ing<t color='#FFFFFF'>.com";
	OG_previousTime = _time;
	OG_restartTime = OG_previousTime;
	while {true} do {
		[[3,format[OG_restartMessage,OG_restartTime,name player]],"life_fnc_broadcast",player,false] spawn life_fnc_MP;
		OG_previousTime = OG_restartTime;
		if(OG_restartTime == 0) exitWith {};
		OG_restartTime = OG_restartTime - 1;
		sleep 60;
	};
};