waitUntil {!isNull player && player == player};
if(player diarySubjectExists "rules")exitwith{};

player createDiarySubject ["changelog","Changelog"];
player createDiarySubject ["aboutog","About OzzyGaming"];
player createDiarySubject ["generalinfo","General Info"];
player createDiarySubject ["support","Help and Support"];
player createDiarySubject ["controls","Controls"];
player createDiarySubject ["serverrules","Server Rules"];
player createDiarySubject ["laws","General Laws"];
player createDiarySubject ["fines","Fines and Punishments"];
player createDiarySubject ["policerules","Police Rules"];
player createDiarySubject ["medicrules","Medic Rules"];
player createDiarySubject ["PMC","Private Military Coperation Rules"];
player createDiarySubject ["gangrules","Gang and Rebel Rules"];
player createDiarySubject ["ozzyfeatures","Unique OG Features"];
/*  Example
	player createDiaryRecord ["", //Subject Name
        [
            "", //Subsection Title
                "
                My Text
                <br /><br />
                "
        ]
    ];
*/

    /* ABOUT OZZYGAMING (aboutog) */
    player createDiaryRecord ["aboutog",
        [
            "About Us",
                "
Ozzygaming is an Australian based gaming community which aims to provide a friendly and fun athmosphere for all players. We do this by providing servers and utilities for our members and visitors to enjoy, along with ensuring that we have a strong and responsible administration team to keep our servers running smoothly.<br /><br />
If you have any questions or queries, or need any assistance, feel free to approach our friendly administration team. You can find ways to contact them in the 'Help and Support' &gt; 'Contacting an Admin' section.
<br /><br />
                "
        ]
    ];
    
    player createDiaryRecord ["aboutog",
        [
            "Our Website",
                "
Our website can be found here: http://www.ozzygaming.com<br />
Feel free to sign up! We look forward to seeing you there.
<br /><br />
                "
        ]
    ];
    
    player createDiaryRecord ["aboutog",
        [
            "Teamspeak",
                "
We encourage all players to join our teamspeak!<br />
Please note that police are required to be on teamspeak at all times.<br /><br />
TS Address: ts3.OzzyGaming.com
<br /><br />
                "
        ]
    ];
    /* END ABOUT OZZYGAMING */
    
    
    
    /* GENERAL INFO (generalinfo) */
    player createDiaryRecord ["generalinfo",
        [
            "Becoming Whitelisted (Cop/Medic)",
                "
In order to become whitelisted as either a police officer or medic, you need to first play on our servers for a little and show that you are capable of performing the desired role in a responsible way.<br />
After you have been playing as the desired role for approximately 4 hours, you may submit an application to become whitelisted.<br /><br />

The applications can be found on our website.<br />
Once whitelisted, you will be eligable for gaining ranks within the police force or medical team.<br /><br />

The higher rank you are within the police, the more items you have available to you.
<br /><br />
                "
        ]
    ];
    
    player createDiaryRecord ["generalinfo",
        [
            "Roleplaying",
                "
Roleplaying is where a person assumes the role of a character in a fictional world or setting, and acts out the actions of that character as if the person was that character.<br />
General information about roleplay can be found here: http://en.wikipedia.org/wiki/Role-playing
<br /><br />
                "
        ]
    ];
    
    player createDiaryRecord ["generalinfo",
        [
            "Player Stats",
                "
The top icon is your hunger. This can be replenished with food from the Market, the Fish Market, or activities such as fishing or harvesting peaches/apples.<br /><br />

The next icon down is your thirst. This can be replenished with drinks from the Market.<br /><br />

The next icon is your health. This can be replenished with a medical first aid kit, or at hosptials<br /><br />

The fourth icon is your cell phone battery. Spare batteries are available at the Market. If this runs out, you will not be able to use your phone.
<br /><br />
                "
        ]
    ];
    
    player createDiaryRecord ["generalinfo",
        [
            "Using the phone",
                "
To use the phone, bring up your player menu using Y, then press on the button labelled 'Cell Phone'<br /><br />

Here you can type out a message to send, and then do one of the following:<br />
- Press 'Request EMS' to send the message and a medical request to any online medics<br />
- Press 'Text Police' to send the message to all online police<br />
- Press 'Text Admins' to send the message to all online administrators and moderators<br />
- Select a players name using the dropdown, and press 'Text Message' to send the message to a particular player
<br /><br />
                "
        ]
    ];

    player createDiaryRecord ["generalinfo",
        [
            "Calling a Medic",
                "
Please be aware, when you request EMS, it may take a while as the medic may be up to 15KM+ away, which takes a while even in a helicopter.
<br /><br />
                "
        ]
    ];

    player createDiaryRecord ["generalinfo",
        [
            "Speeding and Drunk Driving",
                "
Please note that there are several speed cameras placed around major cities and on some highways.<br />
When you are caught by a camera, you will see a white flash which indicates that a speed camera has triggered on your car.<br /><br />

The first few offences will take some money from your account.<br />
The following offences will add you to the wanted list as well as taking the fine from your account.<br /><br />

Police now also have the ability to breath test. This means that you can now be caught for drink driving.
<br /><br />
                "
        ]
    ];
    
    player createDiaryRecord ["generalinfo",
        [
            "Types of shop",
                "
Civilian:<br />
DMV - Sells most main licences<br />
Market - Sells virtual items (such as food)<br />
General Store - Sells physical items (such as GPS')<br />
Clothing Store - Sells clothing and backbacks<br />
Fish Market - Buys and Sells fish<br />
Diving Shop - Sells diving equipment<br />
Gun Store - Sells legal weapons<br />
Car Shop - Sells cars<br />
Truck Shop - Sells Trucks<br />
Boat Shop - Sells boats and SDVs<br />
Rebel Outpost - Sells rebel items and licence<br />
VIP Shop - Sells items to VIPs<br /><br />

Kavala has a superstore at Kavala Square which has vendors for each of the main stores (Market, Clothing and General stores)<br /><br />

Police and Medics have shops for their faction specific items.<br />
Police shops can be found at the various police stations and HQs<br />
Medic shops can be found at the various hospitals<br />
<br /><br />
                "
        ]
    ];
    
    player createDiaryRecord ["generalinfo",
        [
            "Legal Activities",
                "
Delivery missions<br />
Apple harvesting<br />
Peach harvesting<br />
Fishing<br />
Iron Mining/Processing<br />
Copper Mining/Processing<br />
Oil Drilling/Processing<br />
Sand Collection/Glass Processing<br />
Rock Mining/Cement Processing<br />
Diamond Mining/Processing<br />
Alcohol Brewing<br />
Treasure hunting
<br /><br />
                "
        ]
    ];
    
    player createDiaryRecord ["generalinfo",
        [
            "Illegal Activities",
                "
Turtle Poaching<br />
Cocaine Harvesting/Processing<br />
Heroin Harvesting/Processing<br />
Cannabis Harvesting/Processing<br />
Marijuana Harvesting/Processing<br />
Moonshine Distilling<br />
Uranium Mining/Processing<br />
Organ Harvesting<br />
Truck Delivery Missions (Illegal version)<br />
Robbing gas stations/stores
<br /><br />
                "
        ]
    ];
    
    player createDiaryRecord ["generalinfo",
        [
            "Sirens",
                "
Just a small note about using sirens.<br />
When activated, they loop through a sound file. If you turn the siren off in the middle of a loop, it will continue to play until the loop has finished, then it will stop.
<br /><br />
                "
        ]
    ];
    /* END GENERAL INFO */
    
    
    
    /* HELP AND SUPPORT (support) */
    player createDiaryRecord ["support",
        [
            "Contacting an Admin",
                "
You must follow this process when requesting to talk to an admin needing an admin.<br /><br />

First: Request Admin via text message if admin fails to respond proceed to teamspeak Waiting room <br />

Second: Wait for admin respond in Waiting room, if no one responds wait 5 mins and send a TEXT based teamspeak message to a staff member preferred helpdesk to begin with <br />

Third: If no response is given, you may poke a staff member however DO NOT poke admins when they are in a private channel <br />

Fourth: If in urgent cases of the server being under threat please poke the highest ranking staff member online at the time on teamspeak <br />




If the previous two methods fail, you may submit a support ticket on the website.<br />
Support Page: http://ozzygaming.com/support
<br /><br />
                "
        ]
    ];
    
    player createDiaryRecord ["support",
        [
            "FAQ",
                "
Q: Help! I'm missing my items!<br />
A: If you are missing items, please try disconnecting and reconnecting. If the issue persists, contact an administrator.
<br /><br />

Q: My vehicle is broken and I don't have a repair kit... Help!<br />
A: If you can't get a civilian to help out, you can ask one of the medics. If they are free, they may be able to assist as many carry repair kits. You can also ask the police, but they are commonly busy with other issues.
                "
        ]
    ];
    /* END HELP AND SUPPORT */
    
    
    
    /* CONTROLS (controls) */
    player createDiaryRecord ["controls",
        [
            "General Controls",
                "
Y - Open player menu<br />
U - Lock/Unlock vehicles and houses<br />
T - Vehicle Trunk / House Inventory<br />
Left Windows - Main interaction key (pickup money/cases, interact with vehicles/players, etc)<br />
Left Shift + G - Surrender (hands up)<br />
Left Shift + H - Holsters a handgun. Handguns will not be saved whilst holstered<br />
Left Ctrl + H - Unholsters a handgun <br /><br />
                "
        ]
    ];
    
    player createDiaryRecord ["controls",
        [
            "Police/Medic Only",
                "
Police and Medic:<br />
F - Toggle Siren<br />
Left Shift + L - Toggle Emergency Lights<br /><br />

Police only:<br />
Left Shift + R - Restrain<br />
K - EMP console (whilst in police MH-6 Hummingbird)<br />
O - Open/Shut boomgate
<br /><br />
                "
        ]
    ];
    
    player createDiaryRecord ["controls",
        [
            "Civilian Only",
                "
Left Shift + R - Knock out/stun<br />
Left Shift + B - Restrain (requires zipties)<br />
<br /><br />
                "
        ]
    ];
    /* END CONTROLS */
    
    
    
    /* SERVER RULES (serverrules) */
    player createDiaryRecord ["serverrules",
        [
            "Conduct and Behaviour",
                "
The following are general rules that you must abide by. Failure to do so may result in administrative action being taken against you.<br />
- If an administrator/moderator instructs you to do/not to do something in an administrative role, you must comply<br />
- This is a roleplay server and roleplay mission. Roleplay!<br />
- While roleplay abuse is acceptable, please be respectful and do not abuse players outside of RP.<br />
- If a member or staff teleports in front of you DO NOT, DO NOT KILL THEM!!!!!!<br /><br />
                "
        ]
    ];
    
    player createDiaryRecord ["serverrules",
        [
            "Misc Rules",
                "
- Do not buy a house with a merchant/shop in it.
<br /><br />
                "
        ]
    ];
    
    player createDiaryRecord ["serverrules",
        [
            "New Life Rule",
                "
The new life rule applies to police and civilians.<br />
Failure to follow the new life rule will result in admin action being taken<br />
- If all members of a group in an engagement die, the engagement is over for that group<br />
- Civilians and police cannot return and re-engage for 10 minutes after their death<br />
- Civilians and police may only return once after death during a single rp event or engagement<br />
- If you die by VDM/RDM, you may ask an admin for permission to return immediately<br />
- Manually respawning does not count as a death, and it is not a new life.<br />
- You cannot kill yourself to avoid roleplay.<br /><br />

After you die and respawn, your character is a new person. This means that any crimes committed before your death do not apply to your new character. However, this also means that you have no knowledge of events that happened to your old character.<br />
For example, if John Doe kills you, when you respawn you do not know that John Doe killed you.<br /><br /><br />

There are exceptions to the new life rule. They are as follows:<br /><br />

Federal Reserve Robbery:<br />
- The federal reserve robbery has two distinct stages: the robbery of the reserve, and the transport/selling of the gold<br />
- Police and Civilians cannot return at any time to the stage where they died. Eg. If you die in the robbery stage, you cannot return to the federal reserve itself, you must wait for the next stage to start before rejoining.<br /><br />

<br />
Medics and new life:<br />
- Medics may return to the area after dieing with no delay, however the new life, new memories rule applies to them<br />
- Medics returning to the area of their death should comply by the medic rules for dangerous areas if applicable
<br /><br />
                "
        ]
    ];
    
    player createDiaryRecord ["serverrules",
        [
            "Communications and TS",
                "
Please note that there are a few rules regarding communication channels that are enforced.<br />
Breaking these rules may result in administrative action.<br />
- No voice comms in side-chat (server auto-kicks)<br />
- Spamming chat is not permitted.<br />
- Civs cannot be in police TS channels. Likewise, police cannot be in civ TS channels.<br />
- If a player cannot hear you, you must use text chat to communicate.<br />
- The cop Request is for the sole purpose of requesting the police or communicating with the police during hostage events. Any other use after warning is a kick-able offence<br />
- The Admin Request feature is for the sole purpose of requesting Staff assistance if one does not reply please look at Help and Support tab and look at Contacting a Staff Member <br />
- If you are captured in a RP situation, and are told that you have no comms, this means that for the purposes of roleplay, your capturers have removed your phone etc, so you cannot communicate with other players. If you are found sending messages or communicating with other players (other then by direct chat), you may face disciplinary action.
<br /><br />
                "
        ]
    ];
    
    player createDiaryRecord ["serverrules",
        [
            "Safe Zones",
                "
The following areas are safe zones:<br />
- Kavala square and surroundings<br />
- VIP Shops<br />
- Rebel Outposts <br />
- Any shop (excluding  when robbery is under-way)(please Consult Robbery of a store rules in next tab for specific rules to this action)<br />
-Any Garage (within 50 Meters of)<br />
- Selected marked areas around the map<br /><br />

You are not permitted to commence violent RP within safe zones.<br />
Entering an area after initiating Violent rp is a breach of safe zone laws as you are brining a violent conflict into the area <br />
This means no shooting, robberies, kidnapping, etcetera.
<br /><br />
                "
        ]
    ];
    player createDiaryRecord ["serverrules",
		[
			"Robbery of a store",
		"	
			- When robbing stores inside kavala, you may not use lethal force on police... If you want to complain, don't rob stores in kavala... <br />
			- If you wish a civilian to leave a store you are robbing, you must give any civilians who enter the store a text warning to leave, and at least 60 seconds to comply before taking any futher action <br />
			- Please check the map. If an innocent civilian is inside a store during a robbery, and the police enter, that civilian may be restrained and charged with being an accessory to robbery. <br />
			- Players may not kill the robber when given the demand to leave the store for the reason of being threatened to leave the store. Any other reasons to kill the robber fall under usual roleplay rules. <br />
		"	
		]
	];
	
	player createDiaryRecord ["serverrules",
	[
		"Hostage Taking",
		"
	- You may only request a maximum of 500k per hostage. Exceptions apply to police officers that are Chief (3 stars) and higher you may request 1 million maximum for these key players <br />
	- You must give a considerable amount of time from the initial point of contact with the police. minimum 10mins before you may execute your hostage. <br /><br />
			"
		]
	];
	
	
    player createDiaryRecord ["serverrules",
        [
            "VDM/VRDM and RDM",
                "
RDM stands for Random DeathMatching.<br />
Regardless of Roleplay Situation <br />
RDM is the killing of another player for a non-roleplay reason.<br /><br />

A few things to note about RDMing:<br />
- Declaring a rebellion is not cause to kill players/police<br />
- In order to engage in a firefight with police, you must RP the situation. You cannot just turn around and start shooting, you must at least provide a warning.<br />
- You Can not kill a police officer for just pulling you over, You must have a justifiable reason such as you will be sent to jail or You are carrying contraband. ETC (failure to comply with this may result in a ban)<br />
- If you are killed in the crossfire of a firefight, it is not RDM.<br />
- Shooting players without giving reasonable time to respond to warnings is considered RDM.<br />
- Killing players in self defence may not be considered RDM (admin discretion if contested)<br />
- Declaring KOS for no given reason is not permitted (as there is no reason to be attacking police in the first place, Stating that you are a rebel is not acceptable either!) <br />
- Excessively speeding inside kavala and killing a civilian near the super-center IRRELEVENT of lag, de-sync. Is considered VDM <br />

VDM or VRDM stands for Vehicle (Random) DeathMatching.<br />
VDM/VRDM is identical to RDM, except using a vehicle as a battering ram to kill players.<br />
See the relevant vehicle/aviation/boating sections for further details.
<br /><br />
                "
        ]
    ];
    
    player createDiaryRecord ["serverrules",
        [
            "Vehicles",
                "
The following actions are considered foul play and are not permitted at any time.<br />
Breaking these rules may result in admin punishment.<br /><br />
- Jumping in a vehicle wihtout giving adequate time for the player to lock the vehicle (or if player is unable to lock vehicle due to server lag). <br />
- Purposefully running into players. (This is considered VDM)<br />
- Purposefully running into the path of vehicles so that they kill you<br />
- Ramming other vehicles to cause an explosion<br />
- Stealing a vehicle in order to destroy it or damage it.<br />
- Attempting to destroy a vehicle. (You should aim to only disable)<br />
- Rebel Vehicles are at no time permitted inside Kavala as this is an attempt to provoke police into a hostile RP (you are not aloud to initiate hostile RP inside Kavala).<br /> 
- Exception of Rebel off-road but you are still susceptible to police procedures under rebel vehicle.<br />
- When experience high levels of de-sync you are to stay 50 meters away from other vehicles and give wide births if overtaking or pursuing.<br />
                "
        ]
    ];
    
    player createDiaryRecord ["serverrules",
        [
            "Aviation",
                "
The following actions are considered foul play and are not permitted at any time.<br />
Breaking these rules may result in admin punishment.<br /><br />
- Ramming anything with a helicopter<br />
- Repeat low-level flight over Kavala (excluding landing)<br />
- Stealing helicopters without warning and without giving the owner enough time to lock the vehicle (4 seconds after disembark)<br />
- Hovering over a player without reason to harass them with the arma effects (blurry vision, dust, etc)<br />
- Shooting down a helicopter without giving the pilot warning and having an RP reason to engage
<br /><br />
                "
        ]
    ];
    
    player createDiaryRecord ["serverrules",
        [
            "Boating",
                "
The following actions are considered foul play and are not permitted at any time.<br />
Breaking these rules may result in admin punishment.<br /><br />
- Repeatedly pushing other peoples boats without permission<br />
- Pushing a boat with the aim of hurting or killing someone. (This falls under VDM)<br />
- Purposefully running over a player (This falls under VDM)
<br /><br />
                "
        ]
    ];
    
    player createDiaryRecord ["serverrules",
        [
            "Police Interaction",
                "
While most interactions with police fall under roleplay, there are a few which are prohibited.<br />
If you are caught doing any of the following, you may find yourself facing admin punishment.<br /><br />
- Following police for extended periods in order to provide their position<br />
- Killing police for no RP reason (or a false RP reason)<br />
- Consistently harassing or blocking police<br /><br />

Please also note that civilians can not be 'undercover police'.<br />
However, civilians can occasionally provide information to police (informant).
<br /><br />
                "
        ]
    ];
    
    player createDiaryRecord ["serverrules",
        [
            "Medic Independence",
                "
Medics are there to provide medical services to civilians and police.<br /><br />

Medics will not have weapons or take sides against any group<br />
They are an independent faction.<br /><br />

This also means that medics are immune to most aggressive RP situations.<br />
Medics cannot be shot at, kidnapped, robbed, have their vehicles stolen, etcetera.<br /><br />

The exception to this is for example you shoot someone as part of RP, and a medic comes along to revive.<br />
You can tell the medic not to revive the person (in an RP context), and thus the medic should technically back off, as there is a danger to their life, which takes priority in treatment.
<br /><br />
                "
        ]
    ];
    
    player createDiaryRecord ["serverrules",
        [
            "Admin Punishments",
                "
If you are caught breaking server rules or otherwise disrupting the operation of the server, you may be issued with various administration punishments. These include (but are not limited to):<br />
- Warning and monitoring<br />
- Removal of items/money from player<br />
- Wiping of player stats<br />
- Kick from server<br />
- Temporary ban from server<br />
- Permanent ban from server<br />
<br /><br />
                "
        ]
    ];
    
    player createDiaryRecord ["serverrules",
        [
            "Bannable Exploits",
                "
The following exploits will result in server ban:<br /><br />

1. Getting out of jail via any method other than waiting for the timer, paying bail or escaping via helicopter.<br/>
2. Killing yourself to get out of a roleplay situation. Getting out of being tazed, restrained, arrested, jail, etc. If the log shows you got arrested, then you died, you will be banned. Do not pay bail and kill yourself for an easy ride home. Walk you lazy turd.<br/>
3. Duping items and/or money. If someone sends you an unobtainable amount of money, report to an admin immediately and transfer the money to the admin. If no admin is online or on teamspeak, submit a support ticket.<br/>
4. Using hacked items. If a hacker spawns an item, and you use it, you may be banned for the use of the item.<br/>
5. Abusing bugs or game mechanics for gain. Is there a replicating gun somewhere? Report it and leave it alone. If an admin catches you abusing the glitch, you may be banned.<br/>
6. Abusing Vehicle glitches in order to over-expand virtual trunk.
<br /><br />
                "
        ]
    ];
    
    player createDiaryRecord ["serverrules",
        [
            "Bannable Actions",
                "
If you are caught doing any of the following, you will probably find yourself with a permanent ban:<br />
- Hacking<br />
- Using exploits<br />
- Being kicked 3 times or more<br />
- Abusing admins or other players (outside of roleplay)<br />
- Cheating in any form
- Using Ghosthawks Mini-guns <br />
<br /><br />
                "
        ]
    ];
    /* END SERVER RULES */
    
    
    
    /* ALTIS LAWS (laws) */
    player createDiaryRecord ["laws",
        [
            "Speed Limits",
                "
There are two types of road:<br />
Minor: Dirt roads, single-lane roads<br />
Major: sealed/paved roads of at least 2 lanes<br /><br />

Speed limits within city boundaries are as such:<br />
Minor roads: 50km/h<br />
Major roads: 60km/h<br /><br />

Speed limits outside cities are as such:<br />
Minor roads: 80km/h<br />
Major roads: 110km/h
<br /><br />
                "
        ]
    ];
    
    player createDiaryRecord ["laws",
        [
            "Vehicles / Road Laws",
                "
- Drive on the left-hand side of the road<br />
- As per standard Australian road laws <br />
- Vehicles may be parked in parking areas/lots or other such reasonable locations<br />
- Vehicles that are broken, parked illegally, or look abandoned may be impounded by police<br />
- Lights must be on at night time
<br /><br />
                "
        ]
    ];
    
    player createDiaryRecord ["laws",
        [
            "Aviation Laws",
                "
- Helicopters may not land within city limits without authorisation from the ranking police officer online. Exceptions are below:<br />
- - Athira: <br />
- - Pyrgos: <br />
- - Sofia: <br /><br />

- Hospitals may be used UNLESS there is a medic online.<br />
- If there is a medic online, authorisation is required to use the hospital helipads<br /><br />

- Helicopters may not land on roads<br />
- Police can restrict landing in certain areas during martial law<br />
- Helicopters must maintain at least 150m altitude over a city unless landing/taking off<br />
- Helicopters may not hover over cities. (police excepted during operations)<br /><br />

Please note that medical helicopters may land where required in order to administer medical assistance. However medics should attempt to abide by these laws as much as practical.
<br /><br />
                "
        ]
    ];
    
    player createDiaryRecord ["laws",
        [
            "Illegal Items",
                "
The following is a list of illegal items, any civilian found in possession of these items will be procecuted.<br /><br />

- Turtle<br/>
- Cocaine<br/>
- Heroin<br/>
- Cannabis<br/>
- Marijuana<br/>
- Uranium<br />
- Organs <br />
- Federal reserve bars <br />
<br /><br />
                "
        ]
    ];
    
    player createDiaryRecord ["laws",
        [
            "Illegal Weapons",
                "
Any civilian in possession of the following weapons can be immediately arrested by police for possession of an illegal firearm: <br /><br />

- All Primary Weaponry is illegal
<br /><br />
                "
        ]
    ];
    
    player createDiaryRecord ["laws",
        [
            "Illegal Vehicles",
                "
The following vehicles are illegal, and any civilian found in possession of or inside of may be charged:<br /><br />

- Any vehicle with a police skin<br />
- Any vehicle with a rebel skin<br />
<br /><br />
                "
        ]
    ];
    /* END ALTIS LAWS */
    
    
    
    /* FINES AND PUNISHMENTS (fines) */
    player createDiaryRecord ["fines",
        [
            "Traffic and Vehicle Infringements",
                "
If the total cost of the ticket exceeds $100,000, send the person to jail<br /><br />
If multiple offences committed within 30mins (irrelevant of deaths) fines are doubled per case and jail on third offence <br /><br />
The following is a list of fines for various traffic and vehicle based offences.<br />
Speeds may be checked by holding L and pointing your tazer at the vehicle (this can be done inside the vehicle)<br />
Please note that this list may not be complete.<br />
Please see the relevant police rules section for the procedure for ticketing and arresting<br /><br />

Speeding inside city limits (You must use either Speedar Radar or Wanted list under speeding offences) <br />
$2,500<br /><br />

Speeding outside city limits (You must use either Speedar Radar or Wanted list under speeding offences) <br />
$1,500<br /><br />

Reckless Driving<br />
$5,000<br /><br />

Driving without licence<br />
$1000 + vehicle impound<br /><br />

Driving go-karts outside of go-kart track<br />
$7500<br />
Vehicle impound<br /><br />

Parking illegally<br />
$1,250<br />

Attempted Grand Theft Auto<br />
$10,000<br /><br />

Grand Theft Auto (Vehicle theft)<br />
$17,500<br /><br />

Selling of Stolen Vehicle (Chop Shop)<br />
$20,000 <br /><br />

Driving under the influence (alcohol/drugs)<br />
$12,500 <br /><br />

Failure to Stop at Police Checkpoint <br />
$10,000<br /><br />

Evading Police (VIA Vehicle)<br />
$10,000<br /><br />

<br /><br />
                "
        ]
    ];
    
    player createDiaryRecord ["fines",
        [
            "Aviation and Infringements",
                "
The following is a list of fines for various aviation and boating based offences.<br />
Please note that this list may not be complete.<br />
Please see the relevant police rules section for the procedure for ticketing and arresting<br /><br />

Landing inside city limits in a helicopter<br />
$25,000 + vehicle impound<br /><br />

Loitering in Kavala airspace in a helicopter<br />
2 warnings then $50,000 fine + vehicle impound
<br /><br />
                "
        ]
    ];
    
    player createDiaryRecord ["fines",
        [
            "Rebel Activities",
                "
The following is a list of fines for various rebel based offences.<br />
Please note that this list may not be complete.<br />
Please see the relevant police rules section for the procedure for ticketing and arresting<br /><br />

Possession of a rebel vehicle<br />
$25,000 + vehicle impound<br /><br />

Driving/ Flying Rebel vehicle inside major cities (Kavala, Athria, Sophia and Pyrgos)<br />
$35,000 + Jail <br /><br />

Assault on town<br />
$100,000 + jail<br /><br />

Kidnapping<br />
$75,000 + jail<br /><br />

Robbery of Federal Reserve<br />
$200,000 + jail<br /><br />

Assisting federal reserve robbery<br />
$150,000 + jail<br /><br />

Organ harvesting<br />
$65,000 + jail <br />
2nd Offence Firing Squad <br /><br />
<br /><br />
                "
        ]
    ];
    
    player createDiaryRecord ["fines",
        [
            "Illicit items/Activities",
                "
The following is a list of fines for various illicit items and activities.<br />
Please note that this list may not be complete.<br />
Please see the relevant police rules section for the procedure for ticketing and arresting<br /><br />

Possession of illicit weapons<br />
$12,500 + weapon confiscated<br /><br />

Possession of illicit items<br />
$ half of seized value<br /><br />

Intent to Sell illicit items (i.e Value of seized contraband over 25k classifies as intent to sell) <br />
$25,000 + Jail <br /><br />

Possession of legal weapons without licence<br />
$2,500 + weapon confiscated<br /><br />

Drug trafficking (drug dealer identifies you)<br />
$5000 + vehicle/person search                
<br /><br />
                "
        ]
    ];
    
    player createDiaryRecord ["fines",
        [
            "Serious Offences",
                "
The following is a list of fines for various serious offences.<br />
Please note that this list may not be complete.<br />
Please see the relevant police rules section for the procedure for ticketing and arresting<br /><br />

Death Threat <br />
$12,500 <br /><br />

Attempted murder<br />
$20,000 + jail<br /><br />

Murder<br />
$40,000 + jail
<br /><br />

                "
        ]
    ];
    
    player createDiaryRecord ["fines",
        [
            "Other Fines",
                "
The following is a list of fines for various other offences.<br />
Please note that this list may not be complete.<br />
Please see the relevant police rules section for the procedure for ticketing and arresting<br /><br />


Failure to comply with move along order <br />
$1,000 <br /><br />

Verbal Abuse (per word of abuse)<br />
$2,500 <br /><br />

Trespassing on government land<br />
$5,000<br /><br />

Trespassing on private property (inside players home)<br />
$1,500<br /><br />

Obstruction of justice<br />
$5,500<br /><br />

Assaulting a Person (Knocking out)<br />
$9,500 + jail<br /><br />

Trolling police/attention seeking (2nd Offence Jail) <br />
$7,500<br /><br />

Discharge of weapon in public area<br />
$12,000 + Confiscation of weapon<br /><br />

Robbery of Player<br />
$8000 + jail<br /><br />

Robbery of Store/Gas Station<br />
$17,500
<br /><br />

Resisting Arrest <br />
$12,500 <br /><br /> 
<br />
                "
        ]
    ];
    /* END FINES AND PUNISHMENTS */
    
    
    
    /* POLICE RULES (policerules) */
    player createDiaryRecord ["policerules",
        [
            "Requirements",
                "
In order to play as a police officer on our server, you need to fulfil a couple of requirements:<br /><br />

- Be on our teamspeak server in one of the police channels<br />
- Be willing to listen to officers of a higher rank<br />
- Have common sense and a level head
<br /><br />
                "
        ]
    ];
    
    player createDiaryRecord ["policerules",
        [
            "Command Structure",
             			 "
Police Minister <br />
Commissioner <br/>
Deputy Commissioner<br/>
Chief (3 star)<br/>
Deputy Chief (2 star)<br/>
Inspector<br/>
Commander <br />
Captain<br/>
Lieutenant <br/>
Second Lieutenant<br />
Supervisor <br />
Senior Sergeant <br/>
Sergeant <br/>
Senior Constable<br/>
Constable<br/>
Cadet
<br /><br />

- When taking command of a situation a formal declaration must be made, do not take command of situations that has a commander that is in control of said situation : This entails 'I am taking command', 'I am highest ranking officer on-line I am taking control' (something of this nature) <br />
- If you cannot cope with a situation do not be afraid to request assistance or break down your units into groups of twos to better control your units<br /><br />

                "
        ]
    ];
    
    player createDiaryRecord ["policerules",
        [
            "Arresting, Ticketing Procedure and Checks",
                "
You may arrest someone if they pose a danger to yourself or others.<br /><br />

- You may not arrest someone if you have given them a ticket and they have paid it<br />
- You must tell the suspect why they are being arrested (you MUST type the reason and fines out in chat)<br />
- If multiple offences committed within 30mins (irrelevant of deaths) fines are doubled per case and jail on third offence <br />
- If the person has illegal firearms visible, you may arrest and ticket them per normal procedure.<br />
- If player becomes reluctant and argumentative report to senior and request assistance <br /><br />


You should ticket the civilian if they break a law, but do not pose a threat to anyone.<br /><br />

- Tickets should follow the guidelines set out in the Fines and Punishments section<br />
- A person has 3 chances to pay the ticket, failure to pay the third time should result in them being sent to jail<br />
- If the total cost of the ticket exceeds $100,000, send the person to jail<br /><br /><br />

- Police reserve the right to pull-over and check licenses and breathalyser any player <br />
- Any player refusing to show license may be fined under driving without a licensee, obstruction of police and forcefully taken to the nearest police station for formal identification <br /><br />

- Cops are not required to offer legal assistance (lawyers). The highest rank officer may permit a court case (but is not required)<br /><br /> 




One thing to note about offences:<br />
You can only charge the player for offences that you know they have committed.<br />
If someone was shooting at you, and you don't know who, then you find a person with a gun, 
you can not charge them with assaulting police (or similar), as you do not know for certain it was them who was shooting at you. 
You must only prosecute for offences that your character knows they have done.<br /><br />

If in doubt, ask a senior officer or admin.<br />
Regardless, be sure you can justify and explain your decision if required.
<br /><br />
                "
        ]
    ];
    
    player createDiaryRecord ["policerules",
        [
            "Marital Law",
                "
Marital law can be declared only by an officer of Captain or above, with approval from an admin.<br />
It is an extreme measure taken by police in order to restore control.<br /><br />

- Marital law covers the whole of Altis<br />
- A server-wide announcement must be made<br />
- Martial law may only last 30 minutes maximum<br />
- Police may order everyone to leave a town or area<br />
- Police may search players and vehicles without permission or reasonable suspicion<br />
- Any landing zones may be restricted by police for the duration of the marital law
<br /><br />
                "
        ]
    ];
    
    player createDiaryRecord ["policerules",
        [
            "Lethal Force",
                "
Lethal force must not be used except in the following circumstances:<br />
- Federal Reserve Robbery<br />
- Protection of your life or the life of others<br />
- Dealing with suspects known to be armed and dangerous<br /><br />

Lethal force must be authorised by an inspector or higher.<br /><br />

Remember: Even if lethal force is authorised, if possible, you should attempt to take suspects alive.
<br /><br />
                "
        ]
    ];

    player createDiaryRecord ["policerules",
        [
            "Raids and Illegal Areas",
                "
Police are not permitted in any illegal areas at any time unless one of the following conditions are met:<br />
Raids is a strike on a specific illegal area without having prior reason<br /><br />

- If people inside an illegal area fire at police, police are permitted to enter<br />
- If police are chasing someone, and they enter an illegal area, police are permitted to continue the chase<br />
- Police may go to the drug dealers to question them, but must not remain at the dealer after doing so<br />
- Police may enter an illegal area if a raid has been called (see below on raids)<br /><br />

Police may drive/fly past illegal areas, however can not 'camp' the illegal area in order to wait for players to enter/exit.<br />
If police may remain within 600meters of an illegal area for more than 6 mins after an event has finished or during normal patrol<br />

Illegal areas include: Drug fields, Drug processing plants, Drug dealers, Gang hideouts, and Rebel zones/outposts.<br /><br />

Raiding is the act of a police force moving into an area with the purpose of stopping suspected illegal activity.<br />
In order to raid an area/ house, there must be at least 4 officers involved, with the senior officer being at least a  1st Lieutenant.<br />
No raid declaration is required. <br />
The following points must be adhered to when raiding:<br /><br />

- Any civilian within the raid area may be restrained and searched without consent. However they must be released if nothing is found<br />
- Lethal force is authorised if any civilian is seen with illegal weapons out<br />
- After the area has been secured and searched, all officers must leave the area<br />
- An area must not be raided within 20 minutes of being raided.
<br /><br />
                "
        ]
    ];

    player createDiaryRecord ["policerules",
        [
            "Checkpoints and Roadblocks",
                "
Police are able to setup roadblocks around Altis, and are encouraged to do so when numbers permit.<br /><br />

In order to setup a roadblock, the following conditions must be met.<br />
- There must be at least 2 officers attending the roadblock<br />
- A checkpoint must be at least 600 meters from an illegal area<br />
- Checkpoints must be setup on a road. Any size road is acceptable.<br />
- Checkpoints do not need to be marked or announced.<br /><br />

Procedure for checkpoints:<br />
- Ask the driver to stop and turn off the engine<br />
- Ask the driver if any occupants of the vehicle have any vehicles<br />
- Ask the driver and passengers to exit the vehicle (one by one if you wish). If they have weapons, tell them to lower them.<br />
- Check for licences<br />
- Ask if they will permit a search of them and their vehicle<br />
- - If they permit a search, you may restrain and search<br />
- - If they do not permit a search, that does not mean you have reasonable suspicion.<br />
- After you finish, they should be allowed to re-enter their car and proceed on their way
<br /><br />
                "
        ]
    ];
   /* 
    player createDiaryRecord ["policerules",
        [
            "Use of EMP (MH-6)",
                "
The police MH-6 Hummingbird helicopter is equipped with an EMP system to allow the disabling of vehicles.<br />
However, there are a few requirements and restrictions when using the EMP system.<br /><br />

- In order to EMP a vehicle, there must be at least 2 police vehicles in pursuit with lights and sirens<br />
- An EMP warning must always be given before EMPing<br />
- EMP can never be used on airborne helicopters<br />
- EMP can be used on landed stationary helicopters or vehicles if there is two officers engaged<br /><br />

In order to use EMP, either the pilot or the co-pilot needs to press K to bring up the EMP console<br />
- First press scan within 50m of a vehicle to add it to the list<br />
- Then, select the vehicle and you can either warn or EMP<br /><br />

Successfully EMPing a vehicle will disable the engine, setting it to a red state.
<br /><br />
                "
        ]
    ];
*/
    player createDiaryRecord ["policerules",
        [
            "SWAT Skins and the Ghost Hawk and Panther",
                "
-  Please note that the ONLY time you can use vehicles with SWAT skins or the Ghost Hawk helicopter is when SWAT is called.<br /><br />

- Panther may only be used for Federal reserve robberies or cases of extreme hostility (Police are extremely outnumbered etc., Use of vehicle extraction)<br /> 

YOU CANNOT USE ANY VEHICLE WEAPONRY 
<br /><br />
                "
        ]
    ];

    player createDiaryRecord ["policerules",
        [
            "Vehicles/Weapons",
                "
- Vehicles and Weapons can be provided to lower ranking police officers during official events only.<br /><br />

- Weapons and Vehicles can be provided with authorisation from an Inspector or higher during these events. (or highest ranking officer) <br /> <br />

- All Weapons must be returned or destroyed after these events <br />

- 


<br /><br />
                "
        ]
    ];
    
    player createDiaryRecord ["policerules",
        [
            "Federal Reserve",
                "
When the federal reserve is being robbed, all police must immediately cease all operations and head towards the police air HQ near the Federal Reserve.<br />
The highest ranking officer will take charge and organise an effective response to the robbery.<br /><br />

Lethal force is automatically authorised within the federal reserve during a robbery.<br />
Deputy chief and above may issue items such as lethal firearms to officers who cannot purchase them themselves.<br /><br />

Police are expected to be assembled and ready to assault the federal reserve within 5 minutes of the first alert.
<br /><br />
                "
        ]
    ];
    
    player createDiaryRecord ["policerules",
        [
            "Crisis Negotiation",
                "
- Crisis Negotiation must be handled by a trained officer. If one is not available, the person with the next highest rank must handle the situation.<br/>
- Must communicate with team at all times to make them aware of the situation (except for when coms have been removed)<br/>
- You must always attempt negotiation before engaging where possible<br/>
- Method and style of approach is up to the discretion of the Negotiator/ operational commander<br/>
- Must follow established procedure (i.e training procedures)<br/>
- During hostage situations negotiator is the only person allowed to give engagement orders (except for coms removal)
<br /><br />
                "
        ]
    ];
	player createDiaryRecord ["policerules",
		[
			"Classification of Probable cause",
				"
- Probable cause is the justification of searching a player or vehicle without consent of the owner. This can only be done when there is evidence to believe that the suspect is undergoing or has been involved 
with an illegal act <br /><br />
- Such reasons for probable cause is evidence that the suspect was involved with something in the following category or finable offences (as by OzzyGaming fines), 
Serious offences, Illicit/ Illegal activities and Rebel Activities. This also applies to Theft (in any form and including robbery) Discharging of weapon in public, Resisting Arrest. <br /><br />
-YOU CANNOT SEARCH A PLAYER JUST FOR HAVING REBEL CLOTHING!<br /><br />
			"
        ]
    ];
    
/*  player createDiaryRecord ["policerules",
        [
            "Other",
                "
Nothing here yet... :)
<br /><br />
                "
        ]
    ];*/
    /* END POLICE RULES */
    
    
    
    /* MEDIC RULES (medicrules) */
    player createDiaryRecord ["medicrules",
        [
            "Requirements and Rules",
                "
Medics should be on teamspeak at all times to assist with communications.<br /><br />

- Medics are not to have weapons<br />
- Medics must request permission from senior police before entering combat zones<br />
- Medics must follow instructions from senior medics, and must follow police instructions<br /><br />

- Public slot medics are not to enter combat zones<br />
- Whitelisted medics enter at their own risk (after getting approval)
<br /><br />
                "
        ]
    ];
    /* END MEDIC RULES */
    /* PMC RULES */
    player createDiaryRecord ["PMC", 
	[
		"PMC GENERAL INFORMATION",
	"
	- PMCs (Private Military Corporations) are militarised companies that provide armed security services. The services and expertise offered by PMCs are typically similar to those of governmental 
	security, military or police forces, most often on a smaller scale. While PMCs can provide service to governments, they can also be employed privately to provide bodyguards for key individuals
	or protection of company premises, especially in hostile territories. Generally, PMCs do not instigate hostile action in foreign territories but have been known to accept such contracts. PMCs 
	only accept people whom have experience in various military forces from around the globe, most of the contractors that are currently employed by PMCs are ex-special services or of the same 
	class. Anyone who is good at war doesn’t fight for their country anymore.<br /><br />
	- PMC is an entity, not a singular figure. It houses it’s own corporations that act independently of one another nor are they forced into any allegiance. <br />
	- Becoming a member of PMC does NOT require a player to surrender his/her rank or position in any other roleplay group such as the police or medic. <br />
	"
		]
	];
	
	Player createDiaryRecord ["PMC",
		[
			"STAFF OVERSEERS",
				"
				- Kaelan - PMC Coordinator <br />
				- Miller <br />
				"
	
		]
	];
	
	Player createDiaryRecord["PMC",
		[
			" NUMBER OF CORPORATIONS",
			"
			- As of initialisation, PMC will have a limit of three corporations. This is to encourage growth and competition amongst to avoid excessive numbers of small groups cluttering the server. <br />
			"
		]
	];
		
	Player createDiaryRecord["PMC",
			[
			"APPLICATION",
			"		
			- The founder of a corporation must apply for authorization via direct communication with the PMC Coordinator. <br />
			- Players wishing to join PMC must go through to application processes. <br />
			- Application to become eligible to join a corporation. <br />
			- Application to join chosen corporation. <br />
			"
			]
		];
		
	Player createDiaryRecord["PMC",
		[
		"PMC GENERAL RULES",
	"
	- Server rules apply at all times. <br />
	- Every situation is to be roleplayed to full extent. No shortcuts are to be taken that disregard the fundamentals of roleplay. <br />
	- Minimum of 5 players before a corporation can become operational. <br />
	- Accepting contracts as an unofficial corporation is a breach of server rules. <br />
	- When on a PMC contract, a leading member must inform the PMC Coordinator of it’s status, if he/she is not available then contact any other staff member. <br />
	- PMC is neutral. They are able to accept contracts from either faction; Police or Civilian. <br />
	- Any issues related to PMC are to be reported to the PMC Coordinator. <br />
	- While on a contract, Corporations are not restricted from engaging one another. Sufficient roleplay is still required however. <br /><br />
	"
	]
	];
	
	Player createDiaryRecord["PMC",
		[
		"CONTRACTS",
		"
		- If a contract appears to breach server rules, it is to be declined. <br />
		- In the hierarchy of a corporation, the Major and Colonel are the only members with authorisation to accept contracts.<br />
		- It is within your right, as a corporation, to decline contracts for whatever grounds.<br />
		- Payment must be agreed upon before the contract can be initiated.<br />
		- Once a contract has been accepted, the corporation MUST fulfil the specified task unless all members involved have died.<br />
		- Once a contract has been accepted, at no point is a corporation to change their allegiance for a higher price.<br />
		- Once a contract has been accepted, it must be reported back to the PMC Coordinator.<br />
		- Corporations may conduct more than contract at a time, provided they can provide sufficient manpower for the jobs at hand.<br />
		- Contractors are not to disclose information about their employment status to anyone but their client and target.<br />
		- Contractors are required to inform their targets or opposition of their employment status before RP can initiate.<br />
		- All warnings must be descriptive and efficiently outline the goal of the contract.<br />
		- After a contract is complete, members must disengage themselves from PMC duties and return to general civilian roleplay status.<br />
		- If not on a contract, members are to remove their weaponry from public view as much as possible.<br /><br />
		"
		]
	];
		
	Player createDiaryRecord["PMC",
		[
		"Police Contracts",
		"
		- While on a police contract, contractors are to be pardoned for all crimes committed while employed by the Altis Police Department.*<br />
       - While employed by the Altis Police Department, it is the senior officer's duty to inform all units of the current contract that is held with a certain Corporation.<br />
       - If a rebel is captured, it is the officers’ responsibility to process him/her.<br />
       - While conducting a police contract, PMC members are not to enter the police teamspeak channels but rely on information given directly to the highest ranking member or through text messages.<br />
         *Contractors are not exempt from crimes they commit, while still on the contract, that breaches the specifications of their employment.<br />
		"
		
		]
		];
	Player createDiaryRecord["PMC",
	[
	"Rates",
	"
		- Standard fee for complexity of task.<br />
       - Equipment fee.<br />
       - *Optional* Amount per variable; kills, amount of time etc. <br />
	"
	]
	];
		
	Player createDiaryRecord["PMC",
		[
		"DRESS CODE",
		"
		- Each Corporation is required to have a set uniform, a combination of what is available in civilian stores, that easily identifies a players employment of said corporation.<br />
		- The Corporations' uniform is required to be worn by it's contractors at all times in which they are on PMC duties.<br />
		- When on a police contract, contractors must not wear clothing that inhibits an officer's ability to identify them. (No balaclavas, bandannas etc.)<br />
		- When on a rebel contract, there are no restrictions to dress code.<br />
		- While not on PMC duties, members must store their uniform and revert to rebel/civilian dress.<br />
		"
	]
	];
		
	Player createDiaryRecord["PMC",
	[
	"RULES OF ENGAGEMENT",
	"
		- You may open fire on a target you identify as the enemy unless they are compliant and have surrendered their weapon(s).<br />
		- You have the right to protect yourself and/or the person(s) whom you are required to protect with appropriate force.<br />
		- Whether acting in self defence or assaulting, you are to avoid indiscriminate use of firepower and must use the minimum amount of force necessary to achieve your goals.<br />
		- Explosives are only to be used appropriately, there is to be minimal destruction of urban environments. <br /><br />
		- Minimum Force, in order of severity, includes:<br />
				1. Open display of weaponry.<br />
				2. Verbal and text warnings.<br />
				3. Physical intimidation.<br />
				4. The firing of weapons and use of explosives.<br /><br />
	"
	]
	];
	Player createDiaryRecord["PMC",
	[
	"RANKING",
	"
		-All Corporations are to adhere to the following ranking system.*<br /><br />
 
		-The Ranks are as follows, in ascending order:<br />
		1. Pleb - Recently inducted. No limit.<br />
		2. Trooper - Passed basic training and a trusted member. No limit.<br />
		3. Specialist - Allows access to special designations within the corporation such as LMG, Sniper, Spotter etc. No limit.<br />
		4. Corporal - Leader of small squads. No limit.<br />
		5. Sergeant - 2IC to the Captain. Limit of 5.<br />
		6. Captain - Assumes command of all junior members. Limit of 3.<br />
		7. Major - 2IC to the commander of the Corporation. Limit of 1.<br />
		8. Colonel - Leader of the singular Corporation, responsible for all inter-corporation issues and relays all information to the Coordinator. Limit of 1.<br />
		9. PMC Coordinator - Coordinates all Corporations, deals with any PMC related issues and has final say over any topics. Limit of 1.<br /><br />

		* Ranks may be added or removed at any time or rank limits changed to accommodate numbers.<br />
	"
	]
	];

    /* END PMC RULES*/
    /* GANG AND REBEL RULES (gangrules) */
    player createDiaryRecord ["gangrules",
        [
            "Rebel information",
                "
Please note: having a 'rebel licence' does NOT make one a rebel. The rebel licence only gives access to the rebel shops.<br /><br />

A rebel is one who rises in armed resistance against a government. In this case it would be the police.<br />
However due to the small amount of police compared to the potential amount of rebels, please do not attack the police without a reason.<br />
Please be civil, use common sense and don't take the word 'rebel' literally; but think of how you can make this server fun for all.<br /><br />

There are however some rules regarding rebels:<br />
- In order to partake in rebel activities, the persons(s) must be in a gang, and must publicly declare their intentions<br />
- Armed resistance does not include RDMing (See RDMing in general rules)<br />
- Resistance roleplay should be conducted in more ways than just robbing banks and shooting police officers<br />
- Resistance must be coordinated (have someone take 'command')<br />
- There must be a reason behind every single attack<br />
- A raid cannot be declared on a spawn city<br />
- A raid can be declared on any non-spawn area or town. (this does not include Drug Fields)<br /><br />

- Police should respond to rebel threats, however they are not required to if they are severly outgunned or outmanned (see an admin for clarification)
<br /><br />
                "
        ]
    ];

    player createDiaryRecord ["gangrules",
        [
            "Gang information",
                "
Gangs are groups of people who want to work together for either legal or illegal reason.<br /><br />

Gangs can capture the various gang hideouts around the map, which will gain you access to the hideouts facilities.<br /><br />

Gangs have a shared bankaccount which everyone can contribute to.<br /><br />

Being in a gang does not give permission to attack police or other civilians. All conflicts must be roleplayed out.
<br /><br />
                "
        ]
    ];
	
	player createDiaryRecord ["gangrules", 
	[
		"Raiding a Town",
			"
- When raiding a town you must comply with the following rules. Failure to do so may result in a ban <br />
- You Can not raid Kavala Or pygros <br />
- Raids on a spawn town must be declared by an admin <br />
- When a raid is announced no police or civilians are aloud to spawn in that elected town <br /> 
- When Raiding a town special NLR rules are in effect no players (cop or rebel) may return during a raid. This is to reduce time of no spawning<br />
- When a raid is initiated no other groups may join in on the raid <br />			
			"
		]
	];
	
    /* END GANG RULES */
    
    
    
    /* UNIQUE FEATURES (ozzyfeatures) */
    player createDiaryRecord ["ozzyfeatures",
        [
            "Masks",
                "
Protect your identity by wearing a Balaclava or Bandanna when your committing illegal acts.
<br /><br />
                "
        ]
    ];
    
    player createDiaryRecord ["ozzyfeatures",
        [
            "Organ Harvesting",
                "
Being a rebel is always fun... But with Ozzygaming, it's even better!<br />
Kidnap a victim and steal their organs to sell for profit. (You will need zip ties!)
<br /><br />
                "
        ]
    ];
    
    player createDiaryRecord ["ozzyfeatures",
        [
            "Federal Reserve",
                "
Insurance is now a thing of the past. Gold is the future. To steal from the reserve you require a bolt cutter and a blasting charge. Once you get into the vault you can steal the gold by putting it in your vehicle and selling it at the dealer.
<br /><br />
                "
        ]
    ];
    
    player createDiaryRecord ["ozzyfeatures",
        [
            "Vehicle Storage",
                "
Most vehicles have the ability to carry other vehicles and a special crate.<br />
Need to cart your SDV to a particular location? Your car broken and need moving?<br />
You can load them into certain vehicles and helicopters and get on your way.
<br /><br />
                "
        ]
    ];
    
    player createDiaryRecord ["ozzyfeatures",
        [
            "Delivery Truck Missions",
                "
At every freight yard there is truck delivery missions that can be undertaken that can be quite profitable.<br/>
Simply select whether you would like to do a legal or illegal mission, and the truck will appear.<br />
Be warned, if you choose to do the illegal mission, the police will be notified by one of the freight yard staff.
<br /><br />
                "
        ]
    ];
    
    player createDiaryRecord ["ozzyfeatures",
        [
            "SDV Features",
                "
The SDVs are equipt with a few neat features.<br /><br />

- Depth meter which appears under your phone battery on your HUD<br />
- Rebreathers not needed whilst in an SDV (goggles still recommended)
<br /><br />
                "
        ]
    ];
    
    player createDiaryRecord ["ozzyfeatures",
        [
            "Treasure Wrecks",
                "
In most of the marked treasure wreck zones in the ocean, you will be able to find a crashed aircraft.<br />
This aircraft crashed en-route to the airfield with a cargo of gold bars.<br />
If you can find it, you can grab the gold for yourself and sell it to the treasure dealer!<br /><br />

Please note that it can take some time to find, as it is a large area, and in order to see the wreck, you need to be in close proximity to the wreck before it becomes visible.
<br /><br />
                "
        ]
    ];
    /* END UNIQUE FEATURES */
    

    player createDiaryRecord ["support",
        [
            "Allowed Items",
                "
This is a list of all allowed items.<br /><br />

If you have an item in your inventory which is not on this list, please inform an administrator immediately.<br />
Failure to do so could result in a wipe of your inventory and/or loss of the offending storage location (eg. house) and/or further punishment.<br /><br />

Please note. This list is not 100% complete due to the new mission file upload. There have been additions.<br /><br />

Poloshirt Blue<br />
Poloshirt Burgundy<br />
Poloshirt Red/White<br />
Poloshirt Salmon<br />
Poloshirt stripped<br />
Poloshirt Tricolor<br />
Rag tagged clothes<br />
Green stripped shirt &amp; Pants<br />
Brown Jacket &amp; Pants<br />
The Outback Rangler<br />
The Hunters Look<br />
Mechanic Coveralls<br />
Surfing On Land<br />
Casual Wears<br />
Workers Camos<br />
Camo Bandanna<br />
Surfer Bandanna<br />
Grey Bandanna<br />
Khaki Bandanna<br />
Sage Bandanna<br />
Straw Fedora<br />
Hat &amp; Bandanna<br />
Guns Club<br />
ION Supporter<br />
Cop Uniform<br />
Pilot Overalls<br />
SWAT Uniform<br />
Guerilla Leader<br />
Taser Rifle<br />
Stun Pistol<br />
Taser Rifle Magazine<br />
Underwater Weapon<br />
Flashbang<br />
Teargas<br />
Squared Tinted Glasses<br />
VR Goggles<br />
Tactical Goggles (Clear)<br />
Tactical Goggles (Black)<br />
Red Shades<br />
Green Shades<br />
Spectacles<br />
Spectacles (Tinted)<br />
Sport Shades (Green Black)<br />
Sport Shades (Red)<br />
Watch<br />
Map<br />
Compass<br />
Commoner Clothes 1<br />
Radio<br />
Bandanna (Coyote)<br />
Booniehat (Tan)<br />
Hat (Blue)<br />
Hat (Brown)<br />
Hat (Checker)<br />
Hat (Gray)<br />
Hat (Tan)<br />
Cap (Blue)<br />
Cap (Green)<br />
Cap (BI)<br />
Cap (Olive)<br />
Cap (Red)<br />
Cap (Tan)<br />
Sports Glasses (Black/Yellow)<br />
Sports Glasses (Black/White)<br />
Squared Glasses<br />
Avator Glasses<br />
Ladies Glasses (Chrome)<br />
Ladies Glasses (Dark)<br />
Ladies Glasses (Blue)<br />
Lowprofile Goggles<br />
Combat Goggles<br />
Assault Pack (Coyote)<br />
Tactical Backpack (Olive)<br />
Field Pack (Hex)<br />
Bergen (Sage)<br />
Wetsuit<br />
Pilot Helmet [NATO]<br />
Cap (Police)<br />
Beret (Police)<br />
ECH (Light, Black)<br />
Combat Helmet (Black)<br />
Black Shades<br />
Blue Shades<br />
Sports Glasses (Black/Red)<br />
Sports Glasses (Checkered)<br />
Diving Goggles<br />
Rangemaster Belt<br />
Tactical Vest (Police)<br />
Rebreather [NATO]<br />
Bergen (Black)<br />
Steerable Parachute<br />
Carryall Backpack (Coyote)<br />
Field Pack (Coyote)<br />
Driver Coverall (Black)<br />
Driver Coverall (Blue)<br />
Driver Coverall (Red)<br />
Driver Coverall (Orange)<br />
Driver Coverall (Green)<br />
Driver Coverall (White)<br />
Driver Coverall (Yellow)<br />
Driver Coverall (Bluking)<br />
Driver Coverall (Fuel)<br />
Driver Coverall (Redstone)<br />
Driver Coverall (Vrana)<br />
Racing Helmet (Black)<br />
Racing Helmet (Red)<br />
Racing Helmet (White)<br />
Racing Helmet (Blue)<br />
Racing Helmet (Yellow)<br />
Racing Helmet (Green)<br />
Racing Helmet (Fuel)<br />
Racing Helmet (Bluking)<br />
Racing Helmet (Redstone)<br />
Racing Helmet (Vrana)<br />
Guerilla Smocks 1<br />
Combat Fatigues (Stavrou)<br />
Recon Fatigues (Hex)<br />
Pilot Coveralls [CSAT]<br />
Ghillie Suit [CSAT]<br />
Shemag (Tan)<br />
Shemag (Olive)<br />
Shemag (Khaki)<br />
Protector Helmet (Hex)<br />
Military Cap (Urban)<br />
Balaclava (Black)<br />
Balaclava (Combat Goggles)<br />
Balaclava (Low Profile)<br />
Balaclava (Olive)<br />
Bandanna (Aviator)<br />
Bandanna (Beast)<br />
Bandanna (Black)<br />
Bandanna (Khaki)<br />
Bandanna (Olive)<br />
Bandanna (Shades)<br />
Bandanna (Sports)<br />
Bandanna (Tan)<br />
Tactical Vest (Khaki)<br />
Slash Bandolier (Coyote)<br />
LBV Harness<br />
Kitbag (MTP)<br />
Kitbag (Coyote)<br />
Carryall Backpack (Olive)<br />
Carryall Backpack (Khaki)<br />
GPS<br />
Binocular<br />
Toolkit<br />
First Aid Kit<br />
Medikit<br />
Night Vision Goggles<br />
P07 9 mm<br />
Sting 9mm<br />
9mm 16Rnd Mag<br />
9mm 30Rnd Mag<br />
MXC 6.5 mm<br />
ACO (Green)<br />
Flashlight<br />
6.5mm 30Rnd Tracer (Red) Mag<br />
Smoke Grenade (Red)<br />
5.56mm 20Rnd Dual Purpose Mag<br />
Rahim 7.62 mm<br />
M320 LRR .408<br />
Sound Suppressor (6.5 mm)<br />
IR Laser Pointer<br />
MK17 Holosight<br />
RCO<br />
Sound Suppressor (9 mm)<br />
Sound Suppressor (5.56 mm)<br />
Sound Suppressor (7.62 mm)<br />
Sound Suppressor (.45 ACP)<br />
.408 7Rnd LRR Mag<br />
6.5mm 30Rnd Tracer (Red) Mag<br />
MX 6.5 mm<br />
MXM 6.5 mm<br />
Mk18 ABR 7.62 mm<br />
SOS<br />
7.62mm 10Rnd Mag<br />
7.62mm 20Rnd Mag<br />
TRG-21 5.56 mm<br />
Katiba 6.5 mm<br />
TRG-21 EGLM 5.56 mm<br />
Flare Round (Green)<br />
Flare Round (Red)<br />
Flare Round (Yellow)<br />
Flare Round (White)<br />
5.56mm 30rnd STANAG Mag<br />
6.5mm 30Rnd Caseless Mag<br />
Smoke Grenade (White)<br />
Smoke Round (Green)<br />
Rook-40 9 mm<br />
Zubr .45<br />
ACP-C2 .45<br />
.45 ACP 9Rnd Mag<br />
.45 ACP 9Rnd Cylinder<br />
5.56mm 30rnd Tracer (Yellow) Mag<br />
Mk20C 5.56 mm<br />
PDW2000 9 mm<br />
ACO SMG (Green)<br />
MRCO<br />
Chemlight Green<br />
Chemlight Red<br />
Chemlight Yellow<br />
Chemlight Blue<br />
6.5mm 30Rnd Tracer (Green) Mag<br />
DMS<br />
Yorris J2<br />
NVS<br />
Range Finder<br />
Mine Detector<br />
Smoke Grenade (Yellow)<br />
Smoke Grenade (Purple)<br />
Smoke Grenade (Orange)<br />
Mk200 6.5 mm<br />
6.5mm 200Rnd Belt Case Tracer (Yellow)<br />
6.5mm 200Rnd Belt Case<br />
6.5mm 30Rnd STANAG Mag<br />
MRD<br />
Sound Suppressor LMG (6.5 mm)<br />
Explosive Satchel<br />
Unprocessed Oil<br />
Processed Oil<br />
Unprocessed Heroin<br />
Processed Heroin<br />
Cannabis<br />
Marijuana<br />
Apple<br />
Rabbit<br />
Salema<br />
Ornate<br />
Mackerel<br />
Tuna<br />
Mullet<br />
Cat Shark Meat<br />
HazMat Gloves<br />
Turtle<br />
Fishing Pole<br />
Zip Tie<br />
Water Bottle<br />
Donuts<br />
Turtle Soup<br />
Coffee<br />
Black Market Kidney<br />
Full Fuel Can<br />
Empty Fuel Can<br />
Pick axe<br />
Unprocessed Copper<br />
Unprocessed Iron Ore<br />
Processed Iron<br />
Refined Copper<br />
Sand<br />
Unrefined Salt<br />
Refined Salt<br />
Glass<br />
Tactical Bacon<br />
Lockpick<br />
Redgull<br />
Peach<br />
Uncut Diamond<br />
Unprocessed Cocaine<br />
Processed Cocaine<br />
Cut Diamond<br />
Spike Strip<br />
Rocks<br />
Treasure Item<br />
GoldBar Ingot<br />
Cement Bag<br />
Small House Container<br />
Large House Container<br />
Moonshine<br />
Uranium<br />
Enriched Uranium<br />
Blasting Charge<br />
Bolt Cutter<br />
Defusal Kit<br />
Grain Mash Mixture<br />
Yeast<br />
Rye<br />
Hops<br />
Distilled Whiskey<br />
Fermented Beer<br />
Glass Bottles<br />
Cornmeal Grains<br />
Bottled Whiskey<br />
Bottled Beer<br />
Bottled Moonshine<br />
Deep-fried Chips<br />
Bloody Red Burger<br />
Pizza<br />
Chicken Nuggets<br />
Fish & Chips<br />
Calzone<br />
Chinese Noodles<br />
Cake<br />
Whopa Burger<br />
Ozzy-cola<br />
Pipsi<br />
Franta<br />
Zolo<br />
Zift
<br /><br />
                "
        ]
    ];
    
    
    /* CHANGELOG (changelog) */
    player createDiaryRecord ["changelog",
        [
            "Current Version",
                "
Version Number: x.x.x<br />
Release Date:<br /><br />
Changelog:<br />
<br /><br />
                "
        ]
    ];
    /* END CHANGELOG */