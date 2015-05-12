waitUntil {!isNull player && player == player};
if(player diarySubjectExists "rules") exitwith{};

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
player createDiarySubject ["pmcrules","PMC Rules"];
player createDiarySubject ["gangrules","Gang and Rebel Rules"];
player createDiarySubject ["ozzyfeatures","Unique OG Features"];
player createDiarySubject ["credits","Credits"];


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
Please note that police are required to be on teamspeak and in a police channel at all times.<br /><br />
TS Address: ts3.ozzygaming.com
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
In order to become whitelisted as a police officer, you need to first play on our servers for a little and show that you are capable of performing the desired role in a responsible way.<br />
After you have been playing as the desired role for approximately 4 hours, you may submit an application to become whitelisted.<br /><br />

To be whitelisted as a medic, simply fill out an application.<br /><br />

The applications can be found on our website.<br />
Once whitelisted, you will be eligable for gaining ranks within the Police Force or Ambulance Service.<br /><br />

The higher rank you are within the police or medics, the more items you have available to you.
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

The next icon is your health. This can be partialy replenished with a first aid kit, or fully replenished by medics, at hosptials, or at medical trucks
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
- Press 'Request EMS' to send the message and a medical request to any online medics (please include your location!)<br />
- Press 'Text Police' to send the message to all online police (No spamming or trolling!)<br />
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
Please be aware, when you request EMS, it may take a while as the medic may be up to 15KM+ away, which takes a while even in a helicopter.<br />
If you request a medic when there is a medic online, you must wait at least 4 minutes before respawning.
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
The following offences will add you to the wanted list and remove your driving licence, as well as taking the fine from your account.<br /><br />

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
Donator Shop - Sells items to Donators (note: these are the same items as other shops, just cheaper)<br />
There are also various stores and areas for the various production routes<br /><br />

Kavala has a superstore at Kavala Square which has vendors for each of the main stores<br /><br />

Police and Medics have shops for their faction specific items.<br />
Police shops can be found at the various police stations and HQs<br />
Medic shops can be found at the various hospitals and ambulance stations<br />
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

First: Request Admin via text message. The success of this depends on if there is an admin ingame.<br />
If an admin fails to respond, proceed to the teamspeak waiting room.<br /><br />

Second: Wait for an admin in the waiting room, if no one responds wait 5 minutes and send a TEXT based teamspeak message to a team member (preferred helpdesk to begin with)<br /><br />

Third: If no response is given, you may poke a team member however DO NOT poke admins when they are in a private channel <br />

Fourth: If you cannot contact an admin either ingame or on teamspeak, you can submit a ticket here: http://www.ozzygaming.com/support
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

Q: I'm playing as cop/medic and my uniform doesn't have its skins. What do I do?<br />
A: Either open your inventory, or purchase a skinned item from a clothing store.<br /><br />

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
PAGE UP - Raise Ambient Volume <br />
PAGE DOWN - Lower Ambient Volume <br />
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
O - Open/Shut boomgate<br />

Police only:<br />
Left Shift + R - Restrain
<br /><br />
                "
        ]
    ];
    
    player createDiaryRecord ["controls",
        [
            "Civilian Only",
                "
Left Shift + G - Knock out/stun<br />
Left Shift + R - Restrain (requires zipties)<br />
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
- In addition to the above point, discrimination and racism is not tolerated.<br /><br />
                "
        ]
    ];
    
    player createDiaryRecord ["serverrules",
        [
            "Misc Rules",
                "
- Do not buy a house with a merchant/shop in it.<br />
- If a member or staff teleports in front of you - DO NOT KILL THEM!!!
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
- Police and Civilians cannot return at any time to the stage where they died.<br />
Eg. If you die in the robbery stage, you cannot return to the federal reserve itself, you must wait for the next stage to start before rejoining.<br /><br />

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
- The cop request is for the sole purpose of requesting the police or communicating with the police during hostage events. Any other use after warning is a kick-able offence<br />
- The Admin Request feature is for the sole purpose of requesting Staff assistance if one does not reply please look at Help and Support tab and look at Contacting a Staff Member <br />
- If you are captured in a RP situation, and are told that you have no comms, this means that for the purposes of roleplay, your capturers have removed your phone etc, so you cannot communicate with other players. If you are found sending messages or communicating with other players (other then by direct chat), you may face disciplinary action.
<br /><br />
Please note that when using direct voice chat while on foot, people inside vehicles commonly can not hear you.<br />
We recommend for at least the first message when declaring hostile intentions, either use the cell phone, or type it in direct chat. That way it's logged and you have a foot to stand on if they complain.
<br /><br />
                "
        ]
    ];
    
    player createDiaryRecord ["serverrules",
        [
            "Safe Zones",
                "
Safe zones are maked by a blue overlay on the map.<br /><br />

The following areas are safe zones:<br />
- Sofia<br />
- Athira<br />
- Main Altis Airfield<br />
- Northern Altis Airfield<br />
- Police Training Academy<br />
- Within 30m of any garage<br />
- Within 30m of any shop (unless it's being robbed, as shown on the map)<br />

<br /><br />

Safe Zone Rules:
- No hostile RP can be commenced inside a safe zone<br />
- Hostile RP can continue if brought into a safe zone, however, it must be taken out of the safe zone immediately<br />
- Hostile RP can commence if someone is robbing a store and is confronted by the police, however it must be removed from the safe zone as soon as possible.<br />
- Hostile RP can commence if a suspect is aprehended by the police, however this falls under normal server rules, and the hostilities must be removed from the safe zone as soon as possible
<br /><br />
                "
        ]
    ];

    player createDiaryRecord ["serverrules",
        [
            "Strict Safe Zones",
                "
Strict Safe Zones are clearly marked by a green overlay on the map.<br /><br />

The following areas are strict safe zones:<br />
- Kavala<br />
- Pyrgos<br />
- Donator Store Areas<br />
- Rebel Bases (the respawn points - NOT the outposts)<br />
- Any other area marked<br /><br />

Strict Safe Zone rules:<br />
- No hostile RP can be commenced inside a strict safe zone<br />
- If hostile RP enters a strict safe zone, it must stop immediately<br />
- The only remotely hostile actions that can occur inside a strict safe zone is police tasing suspects who are running away<br />
- Striders, Ifrits and other armored rebel vehicles are not permitted inside the Kavala and Pyrgos strict safe zones.
<br /><br />
                "
        ]
    ];

    player createDiaryRecord ["serverrules",
        [
            "Lawless zone",
                "
The lawless zone is marked on the map by a red overlay.<br /><br />

The lawless zone is exempt from several server rules, as below:<br />
- You may shoot anyone, at any time, for any reason (i.e. RDM is acceptable)<br />
- You may run over people at will (i.e. VDM is acceptable)<br />
<br /><br />
                "
        ]
    ];

    player createDiaryRecord ["serverrules",
        [
            "Robbery of a store",
        "   
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
    - You must give a considerable amount of time from the initial point of contact with the police. minimum 10mins before you may execute your hostage. <br />
    - You may not attack the negotiator or take the negotiator hostage. However you can demand the negotiator comes without weapons<br /><br />
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
- Shooting players without giving reasonable time to respond to warnings is considered RDM. (allow at least 5-10 seconds for direct chat, and 20-30 seconds for text message)<br />
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
- Repeat low-level flight over a major city (excluding landing)<br />
- Stealing helicopters without warning and without giving the owner enough time to lock the vehicle (4 seconds after disembark)<br />
- Hovering over a player without reason to harass them with the arma effects (blurry vision, dust, etc)<br />
- Shooting down a helicopter without giving the pilot warning and having an RP reason to engage<br />
- Dropping vehicles from a helicopter from an altitude above 15m
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
However, civilians can provide information to police via the cell phone feature (informant).
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
You can tell the medic not to revive the person (in an RP context), and thus the medic should technically back off, as there is a danger to their life, which takes priority in treatment.<br />
If the medic fails to comply and continues to revive the person, you may shoot the medic who is currently reviving. (note if there are other medics nearby, you cannot shoot them)
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
- Any designated helipad / heliport / heli garage<br /><br />

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

- All Primary Weapons are illegal
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
$7500 + Vehicle impound<br /><br />

Parking illegally<br />
$1,250<br />

Attempted Grand Theft Auto<br />
$10,000<br /><br />

Grand Theft Auto (Vehicle theft)<br />
$17,500 + vehicle impound<br /><br />

Selling of Stolen Vehicle (Chop Shop)<br />
$20,000 <br /><br />

Driving under the influence (alcohol/drugs)<br />
$12,500 + vehicle impound<br /><br />

Failure to Stop at Police Checkpoint <br />
$10,000<br /><br />

Vehicular Manslaughter<br />
$40,000 + jail + vehicle impound<br /><br />

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
$5000 + vehicle/person search<br /><br />

Illegal truck runs<br />
$50,000 + illegal truck impound
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
$25,000 + jail<br /><br />

Murder<br />
$50,000 + jail<br /><br />

Accessory to murder<br />
$20,000
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
$12,500
<br /><br />
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
Commissioner <br />
Deputy Commissioner<br />
Chief (3 star)<br />
Deputy Chief (2 star)<br />
Superintendent<br/>
Inspector <br />
Captain<br />
Lieutenant <br />
Second Lieutenant<br />
Leading Sergeant <br />
Senior Sergeant <br />
Sergeant <br />
Leading Senior Constable<br />
Senior Constable<br />
Constable<br />
Probationary Constable<br />
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


You should ticket the civilian if they break a law, but do not pose a threat to anyone.<br />
While we should ticket people who break the law, for non-major offences you can choose to let them off with warnings etc (depending on RP)<br /><br />

- Tickets should follow the guidelines set out in the Fines and Punishments section (NOT the wanted list price)<br />
- A person has 3 chances to pay the ticket, failure to pay the third time should result in them being sent to jail<br />
- If the total cost of the ticket exceeds $100,000, send the person to jail<br /><br /><br />

- Police reserve the right to pull-over and check licenses and breathalyser any player <br />
- Any player refusing to show license may be fined under driving without a license, obstruction of police and forcefully taken to the nearest police station for formal identification <br /><br />

- Cops are not required to offer legal assistance (lawyers). The highest rank officer may permit a court case (but is not required)<br /><br /> 




One thing to note about offences:<br />
You can only charge the player for offences that you know they have committed.<br />
If someone was shooting at you, and you don't know who, then you find a person with a gun, 
you can not charge them with assaulting police (or similar), as you do not know for certain it was them who was shooting at you. 
You must only prosecute for offences that your character knows they have done.<br /><br />

If there were two or more people in a car breaking traffic laws and you catch them both, but your not sure which one was the driver and 
neither of them admit to it, you can charge them both as the driver.<br />
However if you know who the driver was, you can only charge them as being the driver.<br /><br />

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
Marital law can be declared only by an officer of Captain or above, but an OzzyGaming team member must send out a server message.<br />
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

Lethal force must be authorised by an Captain or higher.<br /><br />

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
Raids are a strike on a specific illegal area without having prior reason<br /><br />

- If people inside an illegal area fire at police, police are permitted to enter<br />
- If police are chasing someone, and they enter an illegal area, police are permitted to continue the chase<br />
- Police may go to the drug dealers to question them, but must not remain at the dealer after doing so<br />
- Police may enter an illegal area if a raid has been called (see below on raids)<br /><br />

Police may drive/fly past illegal areas, however can not 'camp' the illegal area in order to wait for players to enter/exit.<br />
Police may not remain within 600meters of an illegal area for more than 6 mins after an event has finished or during normal patrol<br />

Illegal areas include: Drug fields, Drug processing plants, Drug dealers, Gang hideouts, and Rebel zones/outposts.<br /><br />

Raiding is the act of a police force moving into an area with the purpose of stopping suspected illegal activity.<br />
In order to raid an area/ house, there must be at least 4 officers involved, with the senior officer being at least a Captain.<br />
No raid declaration is required. <br />
The following points must be adhered to when raiding:<br /><br />

- Any civilian within the raid area may be restrained and searched without consent. However they must be released if nothing is found<br />
- Lethal force is authorised if any civilian is seen with illegal weapons out<br />
- After the area has been secured and searched, all officers must leave the area<br />
- An area must not be raided within 30 minutes of a previous raid on that area.
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
- There must be at least 3 officers attending the roadblock<br />
- There must be at least 2 patrol cars attending the roadblock<br />
- A checkpoint must be no closer then 600 meters from an illegal area<br />
- Checkpoints must be setup on a road. Any size road is acceptable.<br />
- Checkpoints do not need to be marked or announced.<br /><br />

Procedure for checkpoints:<br />
- Ask the driver to stop and turn off the engine<br />
- Ask the driver if any occupants of the vehicle have any weapons<br />
- Ask the driver and passengers to exit the vehicle (one by one if you wish). If they have weapons, tell them to lower them.<br />
- Check for licences<br />
- Ask if they will permit a search of them and their vehicle<br />
- - If they permit a search, you may restrain and search<br />
- - If they do not permit a search, that does not mean you have reasonable suspicion.<br />
- After you finish, they should be allowed to re-enter their car and proceed on their way (don't forget to say thank you for cooperation!)
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
            "Squads and Gear Restrictions",
                "
OzzyGaming Altis Police Force (OAPF)<br />
 General Duties / Traffic / etc (i.e. everyone)<br /><br />

Gear Requirements:<br />
WEAPONS:<br />
- 6.5mm approved (eg *MX series) or lower allowed<br />
- Recommended Taser rifle<br />
- Only Taser pistols allowed<br />
- No scopes above MRCO (6x zoom)<br />
GEAR:<br />
- Standard Police Gear Required<br />
VEHICLES:<br />
- Standard marked police cars (SUV, Offroad, Hatchback)<br /><br />

Standard Loadout:<br />
> Rangemaster uniform (Police skin)<br />
> Taser Rifle or Rifle<br />
> Taser Pistol<br />
> 4 mags for each weapon<br />
> Police marked vest<br />
> Police marked backpack<br />
> Police Cap or Helmet (combat helmet)<br />
> Toolkit<br />
> 3 first aid kits<br />
> NVGs, GPS, Map<br />
> Binoculars or Rangefinder<br />
> White Smoke<br />
> 3 spikestrips, 2 food, 1 water, 2 redgull<br /><br />

== == == == == == == == == == == ==<br /><br />

Detective Unit (DTU)<br />
 Unmarked/Undercover<br /><br />

Gear Requirements:<br />
WEAPONS:<br />
- Weapons allowed Rahim, Katiba, Mk20 and TRG<br />
- Tazer pistols required, silencer optional (DTU are only people with the option of removing the silencer)<br />
- No scope above RCO (10x Zoom)<br />
GEAR:<br />
- Civilian clothes, vest and backpack allowed<br />
VEHICLES:<br />
- Unmarked vehicles allowed<br /><br />

Standard Loadout:<br />
> Any plain clothes<br />
> (optional) Rifle<br />
> Taser Pistol<br />
> (optional) unmarked hats<br />
> Any unmarked vest<br />
> Any unmarked backpack<br />
> Toolkit<br />
> 3 first aid kits<br />
> NVGs, GPS, Map<br />
> Binoculars or Rangefinder<br />
> White Smoke<br />
> 1 spikestrip, 4 food, 2 water, 2 redgull<br /><br />

== == == == == == == == == == == ==<br /><br />

State Protection Group (SPG)<br />
 Tactical Response<br /><br />

Gear Requirements:<br />
WEAPONS:<br />
- Weapon restrictions based on squad position (see bottom)<br />
- If any MX weapon is used, it must be the black variant<br />
- Lethal or taser pistols allowed. Taser preferred.<br />
GEAR:<br />
- SPG marked clothing allowed<br />
VEHICLES:<br />
- Black unmarked SUV allowed<br />
- SPG marked vehicles allowed<br />
- Standard police vehicles allowed<br /><br />

Standard Loadout:<br />
> SPG marked uniform<br />
> Rifle<br />
> Taser pistol or pistol<br />
> SPG vests (Carrier Rig)<br />
> Marked police backpack<br />
> SPG Helmet (SF Helmet)<br />
> Toolkit<br />
> 3 first aid kits<br />
> NVGs, GPS, Map<br />
> Binoculars or Rangefinder<br />
> White Smoke<br />
> 3 spikestrips, 2 food, 1 water, 4 redgull<br /><br />

== == == == == == == == == == == ==<br /><br />

Police Air Command (PAC)<br /><br />

Gear Requirements:<br />
- Pilot uniform allowed<br />
- Pilot helmets allowed<br /><br />

Standard Loadout:<br />
> Pilot Overalls<br />
> Taser Pistol<br />
> 4 mags<br />
> Police marked vest<br />
> Police marked backpack<br />
> (optional) Pilot/Crew Helmet<br />
> Toolkit<br />
> 3 first aid kits<br />
> NVGs, GPS, Map<br />
> Binoculars or Rangefinder<br />
> White Smoke<br />
> 3 spikestrips, 2 food, 1 water, 2 redgull<br /><br />

== == == == == == == == == == == ==<br /><br />

SPG Squad Weapon Allocations<br /><br />

SPG Response Teams (Teams of 4)<br />
Team Leader - Must be Captain or above<br />
> 7.62mm rifles (eg. *Mk18*) or lower allowed<br />
> No scope above RCO, ARCO or NVS (10x zoom)<br />
Squad members - Must be Senior Sergeant or above<br />
> 6.5mm rifles (eg. *MX series) or lower approved<br />
> No scope above MRCO (6x zoom)<br /><br />

SPG Marksman Teams (Teams of 2)<br />
Marksman<br />
- required to assist command with recon, intel, and accurate target elimination<br />
> If not trained: mk18 / Rahim (7.62mm) or lower<br />
> If trained: Any rifle<br />
> Any scope<br />
Spotter<br />
- required to support the marksman, cover flanks, and provide target info to the marksman<br />
> 6.5mm rifles (eg. *MX series) or lower approved<br />
> No scope above RCO, ARCO or NVS (10x zoom)
<br /><br />
                "
        ]
    ];

    player createDiaryRecord ["policerules",
        [
            "Vehicles/Weapons",
                "
- Police hunters are not to be used as standard patrol vehicles<br />

<br />
- Vehicles and Weapons can be provided to lower ranking police officers during official events only.<br />
- Weapons and Vehicles can be provided with authorisation from an Captain or higher during these events. <br />
- All Weapons must be returned or destroyed after these events <br />

<br /><br />
                "
        ]
    ];
    
    player createDiaryRecord ["policerules",
        [
            "Federal Reserve",
                "
When the federal reserve starts to be robbed, a few things must happen:<br />
- All patrols and operations must cease<br />
- Anyone processing a suspect must finish processing them before proceeding<br />
- All police must make their way to the nearest police station to regroup<br /><br />

The highest online officer will take command to ensure that an organised defence can be brought to bear on the federal<br /><br />

Lethal force is automatically authorised within the federal reserve during a robbery.<br />
Captains and above may issue items such as lethal firearms to officers who cannot purchase them themselves.<br /><br />

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
- Must communicate with team at all times to make them aware of the situation (except for when comms have been removed)<br/>
- You must always attempt negotiation before engaging where possible<br/>
- Method and style of approach is up to the discretion of the Negotiator/operational commander<br/>
- Must follow established procedure (i.e training procedures)<br/>
- During hostage situations negotiator is the only person allowed to give engagement orders (except for comms removal)
- The negotiator (if negotiating in person) should consider entering with no primary weapons and a holstered taser.
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
-YOU CANNOT SEARCH A PLAYER JUST FOR HAVING REBEL CLOTHING! You can however stop and question them.<br /><br />
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
            "Golden Rules",
                "
- Medics are not to have weapons<br />
- Medics must request permission from senior police before entering combat zones<br />
- Medics must follow instructions from senior medics, and must follow police instructions<br />
- Medics are independant<br />
<br /><br />
                "
        ]
    ];
    
    player createDiaryRecord ["medicrules",
        [
            "Conduct, Behaviour and Communications",
                "
- Do not troll<br />
- Do not participate in illegal activities<br />
- Medics MUST be on teamspeak in the medic channel
<br /><br />
                "
        ]
    ];
    
     player createDiaryRecord ["medicrules",
        [
            "When to use emergency lights and sirens",
                "
Driving to an emergency<br />
- Use lights<br />
- Sirens recommended<br /><br />

Arriving at a scene:<br />
- Use lights<br />
- Turn siren off<br /><br />

On scene:<br />
- If scene on the road, lights required, no siren<br />
- If scene not on the road, lights optional, no siren<br /><br />

Departing scene:<br />
- Lights optional<br />
- - > If used, switch lights off after leaving area<br />
- No siren<br /><br />

General driving:<br />
- No lights or sirens
<br /><br />
                "
        ]
    ];
    
     player createDiaryRecord ["medicrules",
        [
            "Transporting People",
                "
- Medics can provide lifts to people if they are stranded and not near a garage or car/air/boat shop.
This will usually only happen when a medic revives someone<br />
- Medics can not give people lifts if they are currently involved in RP<br />
- You can only give people lifts to the nearest garage or car/air/boat shop, not to any other location<br />
- You should not give lifts if they are at/near a car/air/boat shop or garage
<br /><br />
                "
        ]
    ];
    
     player createDiaryRecord ["medicrules",
        [
            "Reviving Rules",
                "
-If threatened by a player on scene with a gun not to revive someone, consider the area a combat zone and back off. Recommend contacting police.<br />
- Medics must not pick sides, however they may choose the order in which to revive people in order to ensure their safety<br />
- People can not force a medic to revive someone. They can only tell a medic not to revive someone. In either case, consider their actions hostile and back off as soon as it is safe to do so.<br />
- - > Rebels/Civilians can order medics not to revive someone at gunpoint<br />
- - > Police can not stop a medic from reviving someone. However, if it’s after a hostile RP (or criminal offence etc) they can order the medic to wait until they have finished securing the area and they are ready for the medic to revive the person
<br /><br />
                "
        ]
    ];
    
    player createDiaryRecord ["medicrules",
        [
            "Combat Zone Rules",
                "
Must wait (stage) outside of the combat zone<br />
- 600m minimum<br />
- 1km recommended<br />
- Strongly recommended to stay with high-profile medic vehicle<br />
- Strongly recommended to land helicopters<br />
- - > Do not land helicopters any closer than 1km, recommended 2km<br />
- Recommended to remain in vehicle, or put vehicle/object between you and the location<br /><br />

Can only enter when one of the following is met<br />
- Senior police give medics the authorisation<br />
- Senior medic (gold badge) give medics the authorisation<br />
- The combat has finished and one or both parties have moved on<br /><br />

If a medics knowingly enter a combat zone and get killed - it is their own fault.<br /><br />

If a medic enters an area and find out it is a combat zone after entering, they should withdraw immediately<br /><br />

If as a medic you take fire, you should assume the area is a combat zone and withdraw immediately

<br /><br />
                "
        ]
    ];
    
    player createDiaryRecord ["medicrules",
        [
            "Helicopter Rules",
                "
Altitude requirements<br />
- Do not hover over major cities at less than 100m altitude<br />
- Do not fly over cities at less than 50m altitude<br />
- Do not hover over or fly around or within 1km of combat zones<br /><br />

Landing zones<br />
- Do not land at police stations without permission<br />
- Do not leave helicopter on the spawn helipads (blocking spawn)<br />
- When possible, do not land on roads unless required for an emergency<br />
- Medics may use the hospital courtyard area as a landing zone as long as they do not block the road<br /><br />

Other<br />
- Always fly with collision lights on<br />
- Reckless flying and disregard for safety may result in flight blacklisting
<br /><br />
                "
        ]
    ];
    
    player createDiaryRecord ["medicrules",
        [
            "Vehicle transportation rules",
                "
Medics have permission to carry abandoned vehicles to police HQ for impound as long as they contact the police prior to collecting the vehicle
<br /><br />
                "
        ]
    ];
    /* END MEDIC RULES */

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
    
    player createDiaryRecord ["ozzyfeatures",
        [
            "Gold Industry",
                "
The Gold industry is a new industry that is an OzzyGaming designed system.<br /><br />
That Means what you may think you know forget it because this is very much different.<br /><br />
To do this you will need 4 things.<br />
 - A backpack.<br />
 - A Pickaxe.<br />
 - Several Water bottles Id say at least 5.<br />
 - And of cause a vehicle.<br /><br />
There are 5 stages to doing this.<br /><br /><br />
FIRST, You will need to mine the Ore itself from the Mine.<br /><br />
SECOND, You will need to wash each pile of gold you collect from the mine with a bottle of water. (1 bottle per wash)<br /><br />
THIRD Take it to the Rock and Gold Processor to crush the 'Washed Gold Ore' into 'Crushed Gold Ore'<br /><br />
FOURTH, Smelt the 'Crushed Gold Ore' at the Gold Smeltery near Kavala.<br /><br />
FIFTH, Sell it at the Gold and Diamond Exchange<br />
                "
        ]
    ];
    /* END UNIQUE FEATURES */
    
    /* PMC Rules*/
    player createDiaryRecord ["pmcrules",
        [
            "General Information",
                "
PMCs (Private Military Corporations) are militarised companies that provide armed security services.<br />
The services and expertise offered by PMCs are typically similar to those of governmental security, military or police forces, most often on a smaller scale.<br />
While PMCs can provide service to governments, they can also be employed privately to provide bodyguards for key individuals or protection of company premises, especially in hostile territories.<br />
Generally, PMCs do not instigate hostile action in foreign territories but have been known to accept such contracts.<br />
PMCs only accept people whom have experience in various military forces from around the globe, most of the contractors that are currently employed by PMCs are ex-special services or of the same class.<br />
Anyone who is good at war doesn’t fight for their country anymore.<br /><br />

PMC is an entity, not a singular figure. It houses it’s own corporations that act independently of one another nor are they forced into any allegiance.
                <br /><br />
                "
        ]
    ];
    
    player createDiaryRecord ["pmcrules",
        [
            "Management",
                "
Management Team<br />
Kaelan - PMC Coordinator<br />
Miller - PMC Assistant Coordinator<br /><br />

Corporation maximums<br />
Initially only one PMC will be authorised while the program starts up. Once the PMC program gains traction and has been shown to run effectively and contribute to the server, more corporations will be added.<br /><br />

Applying to PMC<br />
Players wishing to join PMC must go through to application processes.<br />
- Application to become eligible to join a corporation.<br />
- Application to join chosen corporation.
                <br /><br />
                "
        ]
    ];
    
    player createDiaryRecord ["pmcrules",
        [
            "PMC Rules",
                "
- Server rules apply at all times.<br />
- Every situation is to be roleplayed to full extent. No shortcuts are to be taken that disregard the fundamentals of roleplay.<br />
- Accepting contracts as an unofficial corporation is a breach of server rules.<br />
- When on a PMC contract, a leading member must inform the PMC Coordinator of it’s status, if he/she is not available then contact any other PMC management or server staff member.<br />
- PMC is neutral. They are able to accept contracts from either faction; Police or Civilian.<br />
- Any issues related to PMC are to be reported to the PMC Coordinator.<br />
- While on a contract, Corporations are not restricted from engaging one another. Sufficient roleplay is still required however.
                <br /><br />
                "
        ]
    ];
    
    player createDiaryRecord ["pmcrules",
        [
            "Contracts",
                "
- If a contract appears to breach server rules, it is to be declined.<br />
- In the hierarchy of a corporation, a squad leader is able to accept minor contracts however major contracts must be authorised by a director of operations or higher.<br />
- It is within your right, as a corporation, to decline contracts for whatever grounds.<br />
- Payment must be agreed upon before the contract can be initiated.<br />
- Once a contract has been accepted, the corporation MUST fulfil the specified task unless all members involved have died.<br />
- Once a contract has been accepted, at no point is a corporation to change their allegiance for a higher price.<br />
- Once a contract has been accepted, it must be logged.<br />
- Corporations may conduct more than contract at a time, provided they can provide sufficient manpower for the jobs at hand.<br />
- Contractors are not to disclose information about their employment status to anyone but their client and target.<br />
- Contractors are required to inform their targets or opposition of their employment status before RP can initiate.<br />
    -- All warnings must be descriptive and efficiently outline the goal of the contract.<br />
    -- After a contract is complete, members must disengage themselves from PMC duties and return to general civilian roleplay status.<br />
- If not on a contract, members are to remove their weaponry from public view as much as possible.

                <br /><br />
                "
        ]
    ];
    
    player createDiaryRecord ["pmcrules",
        [
            "Police Contracts",
                "
- While on a police contract, contractors are to be pardoned for all crimes committed while employed by the Altis Police Department.*<br />
- While employed by the Altis Police Department, it is the senior officer's duty to inform all units of the current contract that is held with a certain Corporation.<br />
- If a rebel is captured, it is the officers’ responsibility to process him/her. <br />
- While conducting a police contract, PMC members are not to enter the police teamspeak channels but rely on information given directly to the highest ranking member or through text messages.<br />
   *Contractors are not exempt from crimes they commit, while still on the contract, that breaches the specifications of their employment.

                <br /><br />
                "
        ]
    ];
    
    player createDiaryRecord ["pmcrules",
        [
            "Dress Code",
                "
- Each Corporation is required to have a set uniform, a preselected corporation uniform is ideal, that easily identifies a players employment of said corporation.<br />
- The Corporations' uniform is required to be worn by it's contractors at all times in which they are on PMC duties.<br />
- When on a police contract, contractors must not wear clothing that inhibits an officer's ability to identify them. (No balaclavas, bandannas etc.)<br />
- When on a rebel contract, there are no restrictions to dress code.<br />
- While not on PMC duties, members must store their uniform and revert to rebel/civilian dress.

                <br /><br />
                "
        ]
    ];
	
    player createDiaryRecord ["pmcrules",
        [
            "Rules of Engagement",
                "
- You may open fire on a target you identify as hostile unless they are compliant and have surrendered their weapon(s).<br />
- You have the right to protect yourself and/or the person(s) whom you are required to protect with appropriate force.<br />
- Whether acting in self defence or assaulting, you are to avoid indiscriminate use of firepower and must use the minimum amount of force necessary to achieve your goals.<br />
- Explosives are only to be used appropriately, there is to be minimal destruction of urban environments. <br />
- Minimum Force, in order of severity, includes:<br />
     1. Open display of weaponry.<br />
     2. Verbal and text warnings.<br />
     3. Physical intimidation.<br />
     4. The firing of weapons and use of explosives.

                <br /><br />
                "
        ]
    ];
	
	player createDiaryRecord ["pmcrules",
        [
            "Ranking",
                "
 The Ranks are as follows, in ascending order:<br />
   1. Recruit - Recently inducted <br />
   2. Contractor - Passed basic training and a trusted member<br />
   3. Senior Contractor - Allows access to special designations within the corporation such as LMG, Sniper, Spotter etc<br />
   4. Team Leader - Leader of small squads<br />
   5. Assistant Director - 2IC to the director<br />
   6. Director  - Is in charge of the members of the PMC that do not hold an elevated position. <br />
   7. Director of Operations  -  Is the head of all operational assets. Including distribution of payments and equipment (Treasurer and Armourer)<br />
   8. CEO - Head of a singular corporation.<br />
   9. PMC assistant coordinator - Assists with the Coordination of all Corporations, deals with any PMC related issues.<br />
  10. PMC Coordinator - Coordinates all Corporations, deals with any PMC related issues and has final say over any topics 
                <br /><br />
                "
        ]
    ];
	
	player createDiaryRecord ["credits",
        [
            "NSW Police Force",
                "
The NSW Police force logo is the copyright of the NSW Police Force and all rights to that material retains the ownership of the NSW Police and NSW State Govenment.<br/><br/>
The OzzyGaming Police Service holds no power of inforcement in Real Life and the logo represents a ficticious form of police enforcement only in the world of Altis Life on the OzzyGaming ARMA 3 server.                
                <br /><br />
                "
        ]
    ];
    /* End PMC Rules */