/*

	Main configuration for non-persistent market system
	Will need triggers to hook into vanilla pricing methods

*/

////////////MAIN CONFIG

life_market_resources = [

	//Schema: SHORTNAME, DEFAULT-Worth, MIN-Worth, MAX-Worth, CHANGES IN ACTION [SALE Multiplied by 1, Purchase multiplied by -1]
	//["gold", 1500, 450, 2300, 8, 5],
		
	["oilp", 1960, 155, 2940, 3, 1, 
		[ 
			["diamondc",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["goldbarp",1],
			["euranium",1],
			["gold",1],
			["glass",1] 
		] 
	],
	
	["iron_r", 1100, 85, 1650, 3, 1,  
		[ 
			["diamondc",1],
			["oilp",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["goldbarp",1],
			["euranium",1],
			["gold",1],
			["glass",1] 
		] 
	],
	
	["gold", 12000, 1000, 25000, 5, 2,  
		[ 
			["diamondc",1],
			["copper_r",1],
			["iron_r",1],
			["goldbarp",1],
			["euranium",1]
		] 
	],
	
	["diamondc", 3000, 100, 4500, 5, 2, 
		[ 
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["goldbarp",1],
			["gold",1],
			["euranium",1],
			["glass",1] 
		] 
	],
	
	["copper_r", 500, 5, 750, 2, 1, 
		[ 
			["diamondc",1],
			["oilp",1],
			["iron_r",1],
			["salt_r",1],
			["cement",1],
			["goldbarp",1],
			["gold",1],
			["euranium",1],
			["glass",1] 
		] 
	],
	
	["euranium", 3500, 500, 5000, 4, 1, 
		[ 
			["diamondc",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["goldbarp",1],
			["oilp",1],
			["gold",1],
			["glass",1]
		] 
	],
	
	["goldbarp", 25000, 10000, 30000, 5, 1, 
		[ 
			["diamondc",1],
			["oilp",1],
			["iron_r",1],
			["salt_r",1],
			["cement",1],
			["euranium",1],
			["copper_r",1],
			["glass",1] 
		] 
	],
	
	["goldbar", 30000, 10000, 40000, 7, 1,
		[
			["gold",1]
		]
	],
	
	["salt_r", 900, 66, 1350, 2, 1, 
		[ 
			["diamondc",1],
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["cement",1],
			["goldbarp",1],
			["euranium",1],
			["glass",1] 
		] 
	],
	
	["glass", 1200, 90, 1800, 2, 1, 
		[ 
			["diamondc",1],
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["goldbarp",1],
			["euranium",1],
			["cement",1]
		] 
	],
	
	["cement", 900, 55, 1350, 2, 1, 
		[ 
			["diamondc",1],
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["goldbarp",1],
			["gold",1],
			["euranium",1],
			["glass",1]
		] 
	],
	
	["turtle", 12000, 1000, 15000, 20, 18,  
		[ 
			["marijuana",1],
			["cocainep",1],
			["heroinp",1]
		] 
	],
	
	["marijuana", 4600, 260, 6900, 7, 5,   
		[ 
			["turtle",1],
			["cocainep",1],
			["moonshine",1],
			["heroinp",1]
		] 
	],
	
	["cocainep", 5000, 320, 9300, 11, 8,   
		[ 
			["marijuana",1],
			["turtle",1],
			["moonshine",1],
			["heroinp",1]
		] 
	],
	
	["moonshine", 3000, 160, 6000, 10, 7,   
		[
			["marijuana",1],
			["turtle",1],
			["cocainep",1],
			["heroinp",1]
		]
	],
	
	["bottledshine", 5000, 320, 8000, 10, 7,   
		[
			["bottledwhiskey",1],
			["bottledbeer",1]
		]
	],
	
	["bottledwhiskey", 4000, 220, 8000, 10, 7,   
		[
			["bottledshine",1],
			["bottledbeer",1]
		]
	],
	
	["bottledbeer", 4000, 210, 6000, 10, 7,   
		[
			["bottledwhiskey",1],
			["bottledshine",1]
		]
	],
	
	["heroinp", 4000, 279, 10200, 12, 9,   
		[ 
			["marijuana",1],
			["cocainep",1],
			["turtle",1],
			["moonshine",1]
		] 
	]
];
publicVariable "life_market_resources";

////////////GENERATED CONFIG
//life_market_changes = []; //[SHORTNAME,SELL,BUY]
life_market_shortnames = []; //shortnames if in market
//life_market_clampprices = []; //[SHORTNAME,MIN,MAX]

{
	life_market_shortnames set [count life_market_shortnames, _x select 0];
	//life_market_clampprices set [count life_market_clampprices, [_x select 0, _x select 2, _x select 3] ];
	//life_market_changes set [count life_market_changes, [_x select 0, _x select 4, _x select 5] ];
}
foreach life_market_resources;

publicVariable "life_market_shortnames";
//publicVariable "life_market_clampprices";

////////////SYNC PRICES WITH SERVER IF EMPTY
//if(isNil("life_market_prices")) then
//{
	life_market_prices = []; //[SHORTNAME,CURRENTPRICE,DIRECTIONGLOBAL,DIRECTIONLOCAL]
	{
	
		life_market_prices set [count life_market_prices, [_x select 0, _x select 1, 0, 0] ];
	}
	foreach life_market_resources;
	
	publicVariable "life_market_prices";
	
	systemChat "Market Prices Generated!";
//};