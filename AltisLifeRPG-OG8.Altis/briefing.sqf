waitUntil {!isNull player && player == player};
if(player diarySubjectExists "general") exitwith{};

player createDiarySubject ["general","General Info"];
player createDiarySubject ["rules","Server Rules"];
player createDiarySubject ["laws","Ingame Laws"];
player createDiarySubject ["fines","Fines"];
player createDiarySubject ["cop","Police Info"];
player createDiarySubject ["med","Medic Info"];
player createDiarySubject ["pmc","PMC Info"];

/* START GENERAL */
player createDiaryRecord ["general",
    [
        "About OzzyGaming",
            "
OzzyGamign is an Australian gaming community.<br />
We focus primarily on ArmA, although we do have servers in other games.<br />
Our servers are based out of Sydney.<br />
<br />

You can visit us on our website: http://www.ozzygaming.com<br />
Feel free to jump on our teamspeak: ts3.ozzygaming.com
<br /><br />
            "
    ]
];

player createDiaryRecord ["general",
    [
        "Controls",
            "
General Controls<br />
	'Y' Player Menu<br />
	'U' - Lock/Unlock vehicles and houses<br />
	'T' - Vehicle trunk / House Inventory<br />
	'Left Windows' - Main Interaction Key<br />
	'Left Shift + H' - Holsters Weapon<br />
	'Left Ctrl + H' - Unholsters Weapon<br />
	'Left Shift + Page Up' - Raise ambient volume (Earplugs out)<br />
	'Left Shift + Page Down' - Lower ambient volume (Earplugs in)<br />
<br />

Civilian<br />
	'Left Shift + G' - Surrender<br />
	'Left Shift + J' - Knockout/Stun<br />
	'Left Shift + R' - Restrain (Requires Zipties)<br />
<br />

Police/Medic<br />
	'O' - Open/Shut Boom Gates<br />
	'F' - Siren<br />
	'Left Shift + L' - Lights
<br /><br />
            "
    ]
];

player createDiaryRecord ["general",
    [
        "Unique Features",
            "
Masks<br />
- Protect your identity by wearing a Balaclava or Bandanna when your committing illegal acts.<br />
<br />

Organ Harvesting<br />
- Kidnap a victim and steal their organs to sell for profit. (You will need zip ties!)<br />
<br />

Vehicle Loading<br />
- Most vehicles have the ability to carry other vehicles.<br />
- Need to cart your SDV to a particular location? Your car broken and need moving?<br />
- You can load them into certain vehicles and helicopters and get on your way.<br />
<br />

Delivery Truck Missions<br />
- At every freight yard there is truck delivery missions that can be undertaken that can be quite profitable.<br/>
- Simply select whether you would like to do a legal or illegal mission, and the truck will appear.<br />
- Be warned, if you choose to do the illegal mission, the police will be notified by one of the freight yard staff.<br />
<br />

SDV Features<br />
- Depth meter which appears near your food and water meters on your HUD<br />
- Rebreathers not needed whilst in an SDV (goggles still recommended)<br />
<br />

Treasure Wrecks<br />
- In most of the marked treasure wreck zones in the ocean, you will be able to find a crashed aircraft. These aircraft were carrying a cargo of gold bars<br />
<br />

Gold Mining<br />
- Mine gold using a pickaxe<br />
- Wash it with water bottles<br />
- Crush it, smelt it, and then sell it for profit!
<br /><br />
            "
    ]
];

player createDiaryRecord ["general",
    [
        "Help and Support",
            "
Need some help?<br />
There are a few ways you can get the assistance you require!<br />
<br />

1. Use the CELL PHONE and message admins<br />
2. Join Teamspeak (ts3.ozzygaming.com) and join the waiting room<br />
3. Submit a support ticket on our website (http://www.ozzygaming.com/support)
<br /><br />
            "
    ]
];

player createDiaryRecord ["general",
    [
        "Gangs and Clans",
            "
You can form an ingame gang for a small fee. This will create a group that you and your friends can join!<br />
<br />

If you are wanting to create a teamspeak gang/clan, and have a relevant tag, you will need to have a group of people who have been in an active ingame gang for a period of time. See the website for more information.
<br /><br />
            "
    ]
];

player createDiaryRecord ["general",
        [
            "Credits",
                "
The NSW Police force logo is the copyright of the NSW Police Force and all rights to that material retains the ownership of the NSW Police and NSW State Govenment.<br/><br/>
The OzzyGaming Police Service holds no power of inforcement in Real Life and the logo represents a ficticious form of police enforcement only in the world of Altis Life on the OzzyGaming ARMA 3 server.                
                <br /><br />
                "
        ]
];

/* END GENERAL */
/* START SERVER RULES */

player createDiaryRecord ["rules",
    [
        "General",
            "
<font size='18' color='#FF0000'>RDM is NOT permitted</font><br />
- RDM stands for Random Death Matching.<br />
- RDMing is the killing (or attempted killing) of another player for no roleplay reason.<br />
<br />

<font size='18' color='#FF0000'>VDM is NOT permitted</font><br />
- VDM stands for Vehicular Death Matching.<br />
- VDM is the killing (or attempted killing) of another player with the use of a vehicle.<br />
<br />

<font size='18' color='#FF0000'>Reverse VDM is NOT permitted</font><br />
- Reverse VDM is intentially walking into a moving vehicle so they run you over.<br />
<br />

<font size='18' color='#FF0000'>Restrained players can not exit vehicles</font><br />
- Restrained players must not exit vehicles (unless instructed by the driver) - in real life, your arms would be bound, and the doors usually locked. Good luck.<br />
<br />

<font size='18' color='#FF0000'>When restrained, you must comply with searches by police</font><br />
- Due to a bug in the search script, if police have valid cause to search (Reasonable suspicion), and they ask you to drop your gear to be searched, you must comply until such time as this is fixed. You may ask them what cause they have to search you, and they must tell you. If you believe it is not reasonable suspicion, come and speak to a team member AFTER the incident.<br />
<br />

<font size='18' color='#FF0000'>All players must abide by NLR</font><br />
- NLR stands for the New Life Rule.<br />
- NLR consists of two parts:<br />
  1. When you die, you have no knowledge of past events. You do not know who killed you, you do not know who you were chasing, etc.<br />
  2. When you die, you can not return to your death location for 10 minutes. If you were in a roleplay event, you can not return to that event for 10 minutes. If all your teammates die during that 10 minutes (or you are more then 3km away when they all die), you can not return to that event at all.<br />
<br />

<font size='18' color='#FF0000'>Medics are independant</font><br />
- Most hostile actions against medics are not allowed.<br />
- This includes shooting at medics, stealing vehicles, trying to take them hostage, etc.<br />
- The exception to this is: if a medic is reviving someone or approaching to revive, and you tell them to back off or not to revive, and the medic proceeds to continue reviving, you may shoot them to prevent the revive.<br />
- Combat medics are also an exception to this. Please see the combat medic page in the 'Medic Info' section
<br /><br />
            "
    ]
];

player createDiaryRecord ["rules",
    [
        "Declarations",
            "
All hostile actions must be declared. This is to ensure all players have a chance to respond.<br />
<br />

We recommend giving the initial declaration in DIRECT TEXT chat, or using the CELL PHONE to text one of the people. Failure to do this may result in you being accused of RDM, and there would be no evidence to back you up.<br />
<br />

You must give the player(s) you declare on reasonable time to respond - an absolute minimum of 3 seconds. For example, expecting a helicopter to land in 3 seconds from a message is unreasonable.<br />
<br />

Police generally do not declare hostile intent on players. They may however instruct you to leave an area or be fired upon.<br />
If police attempt to taze an ARMED suspect, it is a hostile declaration for the people in the immediate area (group members who are not at the location are not included - send a message to the police telling them to back off).<br />
<br />

If declaring on police using the Cell Phone, it may be a good idea (but not required) to use one of the 'Text Police' functions - but please make sure you specify who you are talking to - a 'stop now' sent to all cops means nothing, as no one has any idea who you are talking to.
<br /><br />
            "
    ]
];

player createDiaryRecord ["rules",
    [
        "Safe Zones",
            "
There are TWO types of safe zone on our server.<br />
The GREEN zones are called STRICT SAFE ZONES, and are generally placed at the two main spawn cities, the rebel bases, and a few other areas.<br />
The BLUE zones are called SAFE ZONES, and are generally placed at the remaining spawn cities, medic stations, and other key points.<br />
<br />

<font size='18' color='#FF0000'>Strict Safe Zones (GREEN Zones)</font><br />
These zones are marked by a green overlay on the map.<br />
- No hostile roleplay can be commenced inside a strict safe zone<br />
- Any hostile roleplay which enters a strict safe zone must stop immediately<br />
- Running into a strict safe zone to avoid hostile roleplay is not permitted<br />
- Rebel armored vehicles (striders, ifrits, etc) are not permitted inside the city strict safe zones<br />
<br />

<font size='18' color='#FF0000'>Safe Zones (BLUE Zones)</font><br />
These zones are marked by a blue overlay on the map<br />
- No hostile roleplay can be commenced inside a safe zone (except as listed below)<br />
- Hostile roleplay can be commenced inside the safe zone if a player is robbing a store and is confronted by police
- Hostile roleplay can be commenced if a suspect is apprehended by police, however roleplay must be followed and relevant declarations made (see declaration section)
- Hostile roleplay may continue if brought in from outside the safe zone. However, please remove it from the safe zone as soon as possible<br />
<br /><br />
            "
    ]
];

player createDiaryRecord ["rules",
    [
        "Hostile Actions",
            "
A reminder that ROLEPLAY should be the number #1 priority for all players.<br />
<br />

<font size='18' color='#FF0000'>Hostages</font><br />
- You may only request a maximum of 500k per hostage. Exceptions apply to police officers that are 3 stars and higher you may request 1 million maximum for these key players <br />
- You must give a considerable amount of time from the initial point of contact with the police. minimum 10 minutes before you may execute your hostage. <br />
- You may not attack the negotiator or take the negotiator hostage. However you can demand the negotiator comes without weapons<br />
<br />

<font size='18' color='#FF0000'>Attacking/Sieging Towns</font><br />
- Strict safe zones can not be attacked/sieged<br />
- To attack/siege a town, a rebel group must have at least 5 members present and ask an OzzyGaming team member to send out a server message. (no message = no attack)<br />
- To attack/siege a safe zone, you must seek approval from a Server Administrator or higher<br />
- If an attacker dies, they can not return to the town attack/siege<br />
- Police and civilians follow normal NLR procedures<br />
- During the town attack/siege, the attackers can kill armed players on sight with no warning<br />
- Safe zone towns may only be occupied for a maximum of 30 minutes. Other towns can be occupied for as long as the attackers are alive<br />
<br />

<font size='18' color='#FF0000'></font><br />
<br /><br />
            "
    ]
];

player createDiaryRecord ["rules",
    [
        "Vehicle Rules",
            "
<font size='18' color='#FF0000'>General rules</font><br />
- Entering a vehicle immediately after someone jumps out (not giving them at least 3 seconds to lock the vehicle) is against server rules<br />
- Intentially running players over with a vehicle is against server rules<br />
- Intentially destroying a vehicle is against server rules (this includes ramming vehicles that are almost garunteed to blow up - i.e. most unarmored land vehicles)<br />
- Stealing a vehicle in order to destroy it is not allowed<br />
<br />

<font size='18' color='#FF0000'>Land vehicle specific</font><br />
- When desyncing, please stay at least 50m from any vehicles in front of you while driving - this helps avoid desync collisions<br />
<br />

<font size='18' color='#FF0000'>Sea vehicle specific</font><br />
<br />

<font size='18' color='#FF0000'>Air vehicle specific</font><br />
- Flying over strict safe zone at very low altitude is not allowed (excluding landing)<br />
- Hovering at low altitude or continuous flying at low altitude around the major police stations or the Kavala or Pyrgos squares is not permitted.<br />
- Hovering over a player without roleplay reason is not allowed (this makes hearing conversations difficult, and makes the screen blurry)<br />
- Dropping sling-loaded vehicles from a helicopter altitude of above 15m is not permitted - this increases the risk of explosions<br />
- If landing for more then 1-2 minutes, you must power down your engines
<br /><br />
            "
    ]
];

player createDiaryRecord ["rules",
    [
        "Federal Reserve",
            "
The federal reserve consists of two stages:<br />
	1. Entering the federal reserve, blowing open the vault, and obtaining the gold<br />
	2. Transporting the gold to either storage or sale<br />
<br />

The federal reserve, when being robbed, is a kill-on-sight area.<br />
<br />

Triggering the robbery alert on the federal reserve to bait police, to get kills, or similar, is not permitted.<br />
<br />

If you die during the federal robbery, you can not return to that stage. You must wait for the next stage.<br />
If all police die at stage 1 (i.e. there are no police remaining alive), the police may not continue onto stage 2.<br />
If all civilians die at the location, the robbery attempt is a fail.
<br /><br />
            "
    ]
];

/* END SERVER RULES */
/* START LAWS */

player createDiaryRecord ["laws",
    [
        "Laws and Regulations",
            "
Note: These are laws. Not server rules. Breaking these will only result in possible prosecution by police.<br />
<br />

- You must drive on the left hand side of the road<br />
- You must have the relevant licence if you wish to operate a vehicle<br />
- If landing inside city limits, you must only land at designated heliports<br />
- Killing another person is illegal<br />
- Hovering over a city is illegal<br />
- Having drugs (Cocaine/Weed/Heroin), turtles, organs, federal reserve bars, explosive charges, and/or uranium in your possession/vehicle is illegal<br />
- Having any primary weapon is illegal<br />
- Parking on the road, on the footpath, or in ways which obstruct traffic is illegal<br />
<br />

- Speed limit in towns and cities: 60 KM/H<br />
- Speed limit outside of towns and cities: 110 KM/H
<br /><br />
            "
    ]
];

/* END LAWS */
/* START FINES */

player createDiaryRecord ["fines",
    [
        "Vehicular Fines",
            "
<font size='18' color='#FF0000'>Vehicular Fines</font><br />
- Illegal parking - $500 OR vehicle impound OR direction to immediately move vehicle<br />
- Speeding - $2000<br />
- Driving without licence - $5000<br />
- Driving under the influence - $8,000<br />
- Reckless driving - $8,000 and vehicle impound<br />
- Landing inside city limits - $10,000 and vehicle impound<br />
- Failure to stop - $15,000<br />
- Failure to stop at checkpoint - $15,000 and vehicle search<br />
- Attempted Vehicle Theft - $10,000<br />
- Vehicle Theft - $20,000 and vehicle impound<br />
<br />

<font size='18' color='#FF0000'>NOTES:</font><br />
- Speeding must be detected with the P07 speed radar function.<br />
- When fining for reckless driving, please consider the fact that it's sometimes hard to drive well in ArmA.<br />
- When fining someone for vehicle theft, if you can return the car to the owner, you don't need to impound it.
<br /><br />
            "
    ]
];

player createDiaryRecord ["fines",
    [
        "Misdemeanors (Minor)",
            "
<font size='18' color='#FF0000'>Misdemeanors (Minor)</font><br />
- Failure to comply with move on direction - $2,000<br />
- Verbal Abuse - $2,000<br />
- Obstruction of police - $5,000<br />
- Tresspassing on government land - $7,000<br />
<br />

- Trolling police - $8,000<br />
- Trolling police (2nd offence) - Jail<br />
(This is just a way to allow police to warn and deal with trolls - non-minor trolling may be dealt with by admins)<br />
<br />

<font size='18' color='#FF0000'>NOTES:</font><br />
- Trolling police 2nd offence should be within a short period from the 1st offence (eg. 5-10 minutes). If the person is consistantly trolling throughout the day, this also applies.
<br /><br />
            "
    ]
];

player createDiaryRecord ["fines",
    [
        "Felonies",
            "
<font size='18' color='#FF0000'>Minor Felonies</font><br />
- Possession of weapons without licence - $8,000 AND weapon confiscation<br />
- Death threat - $10,000<br />
- Assault - $10,000<br />
- Possession of illegal weapons - $12,500 AND weapon confiscation<br />
- Evading police - $15,000<br />
- Robbery - $15,000 AND Jail<br />
- Accessory to non-murder crime - half of the crimes fine<br />
<br />

<font size='18' color='#FF0000'>Major Felonies</font><br />
- Accessory to murder - $20,000<br />
- Kidnapping - $40,000 AND Jail<br />
- Attempted murder - $50,000 AND Jail<br />
- Organ harvesting - $60,000 AND Jail<br />
- Murder - $70,000 AND Jail<br />
- Assault on Town - $100,000 AND Jail<br />
- Robbery of Federal Reserve - $200,000 AND Jail<br />
<br />

<font size='18' color='#FF0000'>NOTES:</font><br />
- Assault means knocking out<br />
- Robbery means both robbing a player, and robbing a store.<br />
- Accessory means you assist the criminal, this includes refusing to identify who it is.<br />
- Accessory to non-murder mainly refers to theft, assault, kidnapping, etc. Does not include things like possession of weapon, speeding, etc.
<br /><br />
            "
    ]
];

/* END FINES */
/* START POLICE INFO */

player createDiaryRecord ["cop",
    [
        "Command Structure",
            "
<font size='18' color='#FF0000'>Starred Officers:</font><br />
- Police Minister<br />
- Commissioner<br />
- Deputy Commissioner<br />
- Assistant Deputy Commissioner<br />
- Chief Superintendent<br />
- Superintendent<br />
<br />

<font size='18' color='#FF0000'>Officers:</font><br />
- Chief Inspector<br />
- Inspector<br />
- Captain<br />
- Lieutenant<br />
<br />

<font size='18' color='#FF0000'>NCO's:</font><br />
- Senior Sergeant<br />
- Incremental Sergeant<br />
- Sergeant<br />
<br />

<font size='18' color='#FF0000'>Enlisted:</font><br />
- Senior Constable<br />
- Constable<br />
- Probationary Constable<br />
- Student (Whitelisted)<br />
<br />

- Cadet (Public Slot)
<br /><br />
            "
    ]
];

player createDiaryRecord ["cop",
    [
        "How to join",
            "
<font size='18' color='#FF0000'>To become a whitelisted officer:</font><br />
- Join as a PUBLIC slot cop<br />
- Play 10 hours as a public slot<br />
- Apply on the website (http://www.ozzygaming.com)<br />
<br />

If you are accepted, you will be able to join any of the whitelisted slots.<br />
The first few ranks are given based on hours, after that, it's all based on conduct and performance.
<br /><br />
            "
    ]
];

player createDiaryRecord ["cop",
    [
        "Rules",
            "
- Police must be in teamspeak and in a police channel at all times<br />
- Police must follow commands from superiors at all times<br />
- Corrupt police are not permitted
<br /><br />
            "
    ]
];

player createDiaryRecord ["cop",
    [
        "Probable/Reasonable Cause",
            "
Probable Cause or Reasonable Cause is the justification for searching a player or vehicle without consent from the owner. This can only be done where there is evidence which strongly suggests that the person or vehicle is undergoing or has recently been involved with illegal activities.<br />
<br />

Some examples:<br />
- Refusing a search IS NOT probable cause.<br />
- Driving a delivery truck IS NOT probable cause.<br />
- Seeing a legal weapon on someone IS NOT probable cause. (But you can ask for licence)<br />
- Seeing an illegal weapon on someone IS probable cause.<br />
<br /><br />
            "
    ]
];

player createDiaryRecord ["cop",
    [
        "Arresting and Restraining",
            "
<font size='18' color='#FF0000'>A few reminders:</font><br />
- Communication and roleplay is a priority over all else.<br />
- The suspect has a right to know why they are restrained and why they are being fined/arrested.<br />
- You have a right to exercise your judgement - you don't have to issue full fines for everything. The suspect may roleplay their way out of a punishment, or to a lesser punishment. You may also choose to issue a warning or a lesser fine for minor infringements (or you may issue the full fine).<br />
<br /><br />


<font size='18' color='#FF0000'>Some notes on restraining:</font><br />
- Unless the suspect is under arrest or an imminent danger to yourself or others or themselves, you must have permission from them to restrain them.<br />
- If you are doing a routine licence check, a good way to do it is say something like 'Is it alright if I restrain you to check your licences?'<br />
- Players driving vehicles or with legal firearms visible are required to show the relevant licence, otherwise they may be fined for not having a licence<br />
- Players on foot or passengers in vehicles are not required to provide ID (unless under arrest)<br />
<br /><br />


<font size='18' color='#FF0000'>When arresting for a crime:</font><br />
- Inform the suspect they are under arrest<br />
- Restrain<br />
- Move the suspect to a safe location (if required)<br />
- Ask for identification, if they refuse, roleplay - take them back to a police station for forensic identification.<br />
- Inform the suspect on what he is accused of<br />
- Listen to the suspects story (for serious offences, good roleplay may result in a lesser punishment. For minor offences, good roleplay may result in lesser punishment or a warning)<br />
- Inform the suspect of what they are being charged for, and what the charge for those things are<br />
- Issue relevant tickets. Suspects have 3 chances to pay a ticket, failure to do so on third attend results in Jail.
<br /><br />
            "
    ]
];

player createDiaryRecord ["cop",
    [
        "Lethal force",
            "
Lethal force is a last resort, and is used to preserve the lives of officers and the general public.<br />
As police, your primary goal when dealing with criminals is to arrest them, NOT kill them!<br />
<br />

Unless one of the below conditions has been met, you should only ever engage with your taser pistol, or taser rifle.<br />
Even when lethals are authorised, tasing and/or restraining the suspect is always preferable.<br />
A reminder that even when you can engage with either a taser or lethal, roleplaying is preferred over shooting.<br />
<br />

Lethals are authorised when:<br />
- You are fired upon<br />
- Someone is killed by the suspect(s)<br />
- The commanding officer (who is at minimum a captain) authorises the use of lethals<br />
- During a federal reserve robbery
<br /><br />
            "
    ]
];

player createDiaryRecord ["cop",
    [
        "Martial Law",
            "
Martial law is an extreme measure taken by police to restore order to an area. This is usually only used when a large number of civilians are causing issues.<br />
<br />
- Martial law may only be authorised by a Captain or above<br />
- An OzzyGaming team member must be online to issue a server-wide message<br />
- Martial law can either cover an area (eg. Kavala and surroundings), or the whole map<br />
- Martial law may only last up to 30 minutes<br />
- Police may search anyone and any vehicle within the declared area without cause or suspicion<br />
- Police may order everyone to leave a town or area. They may also restrict the use of certain landing zones<br />
<br />

PLEASE NOTE: Safezone rules still apply.
<br /><br />
            "
    ]
];

player createDiaryRecord ["cop",
    [
        "Raids and Illegal Areas",
            "
Police are not permitted in illegal areas at any time unless one of the following conditions has been met:<br />
- Police may go to the drug dealer to question, but must leave immediately after<br />
- Police may drive or fly past illegal areas, but may not 'camp' at or near an illegal area<br />
- A raid has been called on the location<br />
<br /><br />


<font size='18' color='#FF0000'>Raiding Illegal Locations:</font><br />
Raids on illegal locations can be called when there is a suspicion of illegal activities in that area.<br />
- Raids must be authorised by a Captain or higher<br />
- Only one raid may be called every 30 minutes<br />
- Raids can only be called on a single illegal area<br />
- There must be at least 5 officers participating in the raid<br />
- Any civilian within 1.5km of the illegal area marker may be restrained and searched<br />
- No public declaration of the raid is required (if possible, a message just after the start of the raid is preferred though - speak to an OzzyGaming team member for this)
<br /><br />
            "
    ]
];

player createDiaryRecord ["cop",
    [
        "Checkpoints and Roadblocks",
            "
Police are able to setup roadblocks around Altis, and are encouraged to do so when numbers permit.<br />
<br />

In order to setup a roadblock, the following conditions must be met.<br />
- There must be at least 3 officers attending the roadblock<br />
- There must be at least 2 patrol cars attending the roadblock<br />
- A checkpoint must be no closer then 600 meters from an illegal area<br />
- Checkpoints must be setup on a road. Any size road is acceptable.<br />
- Checkpoints do not need to be marked or announced.<br />
<br />

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

/* END POLICE INFO */
/* START MEDIC INFO */

player createDiaryRecord ["med",
    [
        "Command Structure",
            "
<font size='18' color='#FF0000'>Medical Administration:</font><br />
(Also known as 'gold badge')<br />
- Medical Commissioner<br />
- Medical Assistant Commissioner<br />
- Medical Superintendent<br />
<br />

<font size='18' color='#FF0000'>Whitelisted:</font><br />
- Paramedic Instructor<br />
- Intensive Care Paramedic<br />
- Paramedic<br />
- Medical Technician
<br /><br />
            "
    ]
];

player createDiaryRecord ["med",
    [
        "How to join",
            "
Fill out an application on the website (http://www.ozzygaming.com)
<br /><br />
            "
    ]
];

player createDiaryRecord ["med",
    [
        "Rules",
            "
For a full list of rules and conduct requirements, please see the 'Medic Overview' link. This link can be found in Teamspeak (ts3.ozzygaming.com) in the description of the Medic Training channels.<br />
<br />

<font size='18' color='#FF0000'>Key ('Golden') Rules</font><br />
- Medics must not have weapons<br />
- Medics must follow instructions from police and senior medics<br />
- Medics are independant (Don't take sides!)<br />
- Medics are not to participate in illegal activities<br />
- Roleplay is highly encouraged<br />
<br />

<font size='18' color='#FF0000'>Reviving and Transport Rules</font><br />
- You can not be forced to revive someone<br />
- You can be told not to revive someone by a civ at gunpoint (failure to comply could result in your death)<br />
- You can not be told not to revive someone by a cop. They can tell you to wait before reviving though<br />
- You can not choose to not revive someone. You can choose which order to revive them in<br />
- You can only transport people to the nearest garage or vehicle store (if they are not near one already)<br />
- You can not give lifts to people involved in another roleplay (this would take them away from the rp)<br />
<br />

<font size='18' color='#FF0000'>Hostile Situations</font><br />
- You should wait at least 600m - 1km away from a hostile situation<br />
- You can only enter the hostile situation when authorised by police commanding officer, senior medics, or the situation has finished<br />
- If you knowingly enter a combat zone and get killed (when not authorised), it's your own fault
<br /><br />
            "
    ]
];

player createDiaryRecord ["med",
    [
        "Interactions with Police",
            "
- Police may not prevent medics from accessing hospitals or ambulance stations.<br />
- Police may not prevent a medic from reviving someone, however they may make the medic wait for the area to be cleared/secured<br />
- Police may NOT send medics to jail<br />
- Police may fine medics for very reckless behaviour (trolling, hindering police, extremly reckless driving) - note that wanted list entries for medics are not applicable
<br /><br />
            "
    ]
];

player createDiaryRecord ["med",
    [
        "Combat Medics",
            "
<font size='25' color='#FF0000'>Currently Under Development</font><br />
These do not exist in game as of yet.
<br /><br />
            "
    ]
];

/* END MEDIC INFO */
/* START PMC INFO */

player createDiaryRecord ["pmc",
    [
        "Command Structure",
            "
PMC Coordinator<br />
PMC Assistant Coordinator<br />
PMC CEO<br />
PMC Chairman<br />
PMC Director of Operations<br />
PMC Director<br />
PMC Assistant Director<br />
PMC Team Leader<br />
PMC Senior Contractor<br />
PMC Contractor<br />
PMC Recruit
<br /><br />
            "
    ]
];

player createDiaryRecord ["pmc",
    [
        "How to join",
            "
Apply online at http://www.ozzygaming.com
<br /><br />
            "
    ]
];

player createDiaryRecord ["pmc",
    [
        "Rules",
            "
- Maximum of 16 PMC active at one time<br />
- Targets may not avoid contracts by killing themselves or getting someone to kill them - the contract is still valid<br />
- If the target is killed via VDM or RDM, a grace period of 5 minutes is given before the contract resumes<br />
- Targets may not hide in strict safe zones to avoid the PMC<br />
- Contracts must be paid 50% up front, and 50% on completion<br />
- If all PMC involved in the contract die, the contract is void and ends<br />
- A minimum of 4 PMC are required for a contract<br />
- PMC must wear their uniform during contracts<br />
- PMC gear must not be used when not on PMC duties<br />
- PMC involved in civilian contracts may be prosecuted by police if caught breaking laws<br />
- PMC involved in police contracts will be pardoned of offences committed in order to complete the contract<br />
- PMC members are not to attack or intimidate people not involved in or hindering the contract
<br /><br />
            "
    ]
];

player createDiaryRecord ["pmc",
    [
        "Contracts",
            "
<font size='18' color='#FF0000'>Civilian Contracts</font><br />
<br />

Capture/Kill on single civilian/rebel<br />
- 200k for a kill<br />
- 250k for a capture<br />
<br />

Capture/Kill on single High Value Target (HVT)<br />
- Senior PMC decide if a target is a HVT (eg. gang leaders)<br />
- 300k for a kill<br />
- 375k for a capture<br />
<br />

Protecting federal robbers (Stage 2 only)<br />
- Contract must be organised before the federal robbery has started<br />
- Contract does not start until the gold is 1.5k away from the federal reserve<br />
- PMC must warn police prior to stage 2 starting that they are protecting the robbers<br />
- 400k for 4 members. Extra members are 50k per person<br />
<br />

Protection of a person on a pre-defined route<br />
- 4k per minute ($120k for 30 minutes)<br />
- add 2k per minute if illegal activities<br />
- Minimum of 30 minute contract required<br />
- Protection detail is 4 people<br />
<br />

Protection of a person<br />
- 5k per minute (150k for 30 minutes)<br />
- Minimum of 30 minute contract required<br />
- Protection detail is 4 people<br />
<br /><br />


<font size='18' color='#FF0000'>Police Contracts</font><br />
<br />

Capture of murderer/robber/etc<br />
- 500k for capture<br />
- if target killed: 200k from contract price is removed<br />
<br />

Capture of person with minor felonies<br />
- 125k for capture<br />
- if target killed: 50% of contract price is removed<br />
<br />

Assisting with federal reserve<br />
- 400k for 4 members. Extra members are 50k per person<br />
<br />

Protection of a government building/property<br />
- This includes police stations, federal reserve, etc<br />
- 200k per 30 minutes<br />
<br />

Assisting with martial law<br />
- 400k per 30 minutes<br />
<br />

Assisting with checkpoint<br />
- 200k per 30 minutes<br />
<br />

Protection of stores within town or area<br />
- 200k per 30 minutes<br />
<br />

Assisting with a raid or hostage situation<br />
- 200k for 4 people. Extra members are 50k per person 
<br /><br />
            "
    ]
];

/* END PMC INFO */