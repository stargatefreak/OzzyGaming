_type = _this select 0;
[] spawn {
	waitUntil {speedCamInterupt};
	switch(_type) do {
		case "beer":
		{
			[] spawn life_fnc_drinkbeer;
		};
		case "whiskey":
		{
			[] spawn life_fnc_drinkwhiskey;
		};
		case "moonshine":
		{
			[] spawn life_fnc_drinkmoonshine;
		};
	};
};