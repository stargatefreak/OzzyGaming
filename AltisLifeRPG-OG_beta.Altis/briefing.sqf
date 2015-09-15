waitUntil {!isNull player && player == player};
if(player diarySubjectExists "general") exitwith {};

player createDiarySubject ["general","General Info"];
player createDiarySubject ["rules","Server Rules"];
player createDiarySubject ["laws","Ingame Laws"];
player createDiarySubject ["fines","Fines"];
player createDiarySubject ["cop","Police Info"];
player createDiarySubject ["med","Medic Info"];

/* START GENERAL */

player createDiaryRecord ["general",
 
 [
        "About OzzyGaming",
            "
<font size='18' color='#FF0000'>About OzzyGaming</font><br />
OzzyGaming is an Australian gaming community.<br />
We focus primarily on ArmA, although we do have servers in other games.<br />
Our servers are based out of Sydney.<br />
<br />

You can visit us on our website: www.ozzygaming.com<br />
Feel free to jump on our teamspeak: ts3.ozzygaming.com
<br />
            "
    ]
];

player createDiaryRecord ["general",
    [
        "Controls",
            "
<font size='18' color='#FF0000'>General Controls</font><br />
	'Y' Player Menu<br />
	'U' - Lock/Unlock vehicles and houses<br />
	'T' - Vehicle trunk / House Inventory<br />
	'Left Windows' - Main Interaction Key<br />
	'Left Shift + H' - Holsters Weapon<br />
	'Left Ctrl + H' - Unholsters Weapon<br />
	'Left Shift + Page Up' - Raise ambient volume (Earplugs out)<br />
	'Left Shift + Page Down' - Lower ambient volume (Earplugs in)<br />
<br />

<font size='18' color='#FF0000'>Civilian</font><br />
	'Left Shift + G' - Surrender<br />
	'Left Shift + J' - Knockout/Stun<br />
	'Left Shift + R' - Restrain (Requires Zipties)<br />
<br />

<font size='18' color='#FF0000'>Police/Medic</font><br />
	'O' - Open/Shut Boom Gates<br />
	'F' - Siren<br />
	'Left Shift + L' - Lights<br />
	'Left Shift + R' - Restrain (Police only)<br />
	<br />
            "
    ]
];

player createDiaryRecord ["general",
    [
        "Unique Features",
            "
<font size='18' color='#FF0000'>Masks</font><br />
- Protect your identity by wearing a Balaclava or Bandanna when your committing illegal acts.<br />
<br />

<font size='18' color='#FF0000'>Organ Harvesting</font><br />
- Kidnap a victim and steal their organs to sell for profit. (You will need zip ties!)<br />
<br />

<font size='18' color='#FF0000'>Vehicle Loading</font><br />
- Most vehicles have the ability to carry other vehicles.<br />
- Need to cart your SDV to a particular location? Your car broken and need moving?<br />
- You can load them into certain vehicles and helicopters and get on your way.<br />
<br />

<font size='18' color='#FF0000'>Delivery Truck Missions</font><br />
- At every freight yard there is truck delivery missions that can be undertaken that can be quite profitable.<br/>
- Simply select whether you would like to do a legal or illegal mission, and the truck will appear.<br />
- Be warned, if you choose to do the illegal mission, the police will be notified by one of the freight yard staff.<br />
<br />

<font size='18' color='#FF0000'>SDV Features</font><br />
- Depth meter which appears near your food and water meters on your HUD<br />
- Rebreathers not needed whilst in an SDV (goggles still recommended)<br />
<br />

<font size='18' color='#FF0000'>Treasure Wrecks</font><br />
- In most of the marked treasure wreck zones in the ocean, you will be able to find a crashed aircraft. These aircraft are carrying a cargo of gold bars<br />
<br />

<font size='18' color='#FF0000'>Gold Mining</font><br />
- Mine gold using a pickaxe<br />
- Wash it with water bottles<br />
- Crush it, smelt it, and then sell it for profit!<br />
<br />

<font size='18' color='#FF0000'>Federal Reserve Security System</font><br />
- If you plan on robbing the federal reserve make sure you have everything you need, because once the vault is blasted open there isn't much time until the doors lock shut and lethal gas is dropped to kill anyone stuck inside.<br />

            "
    ]
];

player createDiaryRecord ["general",
    [
        "Help and Support",
            "
<font size='18' color='#FF0000'>Need some help?</font><br />
There are a few ways you can get the assistance you require!<br />
<br />

1. Use the CELL PHONE and message admins<br />
2. Join Teamspeak (ts3.ozzygaming.com) and join the waiting room<br />
3. Submit a support ticket on our website (http://www.ozzygaming.com/support)
<br />
            "
    ]
];

player createDiaryRecord ["general",
    [
        "Role Play",
            "
<font size='18' color='#FF0000'>Role Play</font><br />
Role play (RP) is where a person assumes the role of a character in a fictional world or setting, and acts out the actions of that character as if they were that character. Going out of character (OOC) is strictly prohibited and will be punished. If you have an issue stay in character until the situation is over and seek help afterwards.
<br />
            "
    ]
];
		
player createDiaryRecord ["general",
    [
        "Gangs and Clans",
            "
<font size='18' color='#FF0000'>Gangs and Clans</font><br />
You can form an ingame gang for a small fee. This will create a group that you and your friends can join!<br />
<br />

If you are wanting to create a teamspeak gang/clan, and have a relevant tag, you will need to have a group of people who have been in an active ingame gang for a period of time. See the website for more information.
<br />
            "
    ]
];
player createDiaryRecord ["general",
        [
            "Credits",
                "
<font size='18' color='#FF0000'>Credits</font><br />
The NSW Police force logo is the copyright of the NSW Police Force and all rights to that material retains the ownership of the NSW Police and NSW State Govenment.<br/><br/>
The OzzyGaming Police Service holds no power of inforcement in Real Life and the logo represents a ficticious form of police enforcement only in the world of Altis Life on the OzzyGaming ARMA 3 server.                
                <br />
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
- RDMing is the killing (or attempted killing) of another player for no role play reason.<br />
<br />

<font size='18' color='#FF0000'>VDM is NOT permitted</font><br />
- VDM stands for Vehicular Death Matching.<br />
- VDM is the killing (or attempted killing) of another player with the use of a vehicle.<br />
<br />

<font size='18' color='#FF0000'>Reverse VDM is NOT permitted</font><br />
- Reverse VDM is intentionally walking into a moving vehicle so they run you over.<br />
<br />

<font size='18' color='#FF0000'>Metagaming is NOT permitted</font><br />
Metagaming is the act of gaining information outside of role play and using it in role play<br />
Examples of metagaming:<br />
- You are sitting in a civ channel on teamspeak and overhear another group getting ready to do a drug run, you leave the channel and set up a road block with the intention of robbing this group<br />
- Gaining knowledge out of RP that a federal reserve robbery is about to take place and joining the police force to defend it<br />
<br />

<font size='18' color='#FF0000'>Fail RP is NOT permitted</font><br />
Fail RP is using ArmA 3 game mechanics to your advantage<br />
Examples of Fail RP:<br />
- Using the command key/scroll wheel/space bar to find a players name and then calling them by it (They did not tell you their name, therefore it is Fail RP)<br />
- You are restrained and a player pulls you out of a vehicle, there is a very short moment where your gun is out and usable, so you shoot the player who has you restrained (In real life your gun would not be visible, but due to in game mechanics your gun appears for a short moment, using this to your advantage is considered Fail RP)<br />
<br />

<font size='18' color='#FF0000'>All players must abide by NLR</font><br />
- NLR stands for the New Life Rule.<br />
- NLR consists of two parts:<br />
  1. When you die, you have no knowledge of past events. You do not know who killed you, you do not know who you were chasing, etc.<br />
  2. When you die, you can not return to your death location for 10 minutes. If you were in a role play event, you can not return to that event for 10 minutes. If all your team mates die during that 10 minutes (or you are more then 3km away when they all die), you can not return to that event at all.<br />
<br />

<font size='18' color='#FF0000'>Restrained players can not exit vehicles</font><br />
- Restrained players must not exit vehicles (unless instructed by the driver) - in real life, your arms would be bound, and the doors usually locked. Good luck.<br />
<br />

<font size='18' color='#FF0000'>Baiting and/or Trolling Police is not allowed</font><br />
You may not drive past the Police station purposefully to get a response, that would be considered baiting.<br />
You may not troll police, for example; opening and closing of boom gates at police stations.<br />
<br />

<font size='18' color='#FF0000'>Medics are independent</font><br />
- Most hostile actions against medics are not allowed.<br />
- This includes shooting at medics, stealing vehicles, trying to take them hostage, etc.<br />
- The exception to this is: if a medic is reviving someone or approaching to revive, and you tell them to back off or not to revive, and the medic proceeds to continue reviving, you may shoot them to prevent the revive.<br />
<br />

<font size='18' color='#FF0000'>When restrained, you must comply with searches by police</font><br />
- Due to a bug in the search script, if police have valid cause to search (Reasonable suspicion), and they ask you to drop your gear to be searched, you must comply until such time as this is fixed. You may ask them what cause they have to search you, and they must tell you. If you believe it is not reasonable suspicion, come and speak to a staff member AFTER the incident.<br />
<br />

            "
    ]
];

player createDiaryRecord ["rules",
    [
        "Declarations",
            "
<font size='18' color='#FF0000'>Declarations</font><br />
All hostile actions must be declared. This is to ensure all players have a chance to respond.<br />
<br />

We recommend giving the initial declaration in DIRECT TEXT chat, or using the CELL PHONE to text one of the people. Failure to do this may result in you being accused of RDM, and there would be no evidence to back you up.<br />
<br />

You must give the player(s) you declare on reasonable time to respond - an absolute minimum of 10 seconds. For example, expecting a helicopter to land in 10 seconds while they are 100m in the air is unreasonable.<br />
<br />

Police generally do not declare hostile intent on players. They may however instruct you to leave an area or be assumed hostile.<br /><br />
If police attempt to taze an ARMED suspect, it is a hostile declaration for the people in the immediate area (group members who are not at the location are not included - send a message to the police telling them to back off).<br />
<br />

If declaring on police using the Cell Phone, it may be a good idea (but not required) to use one of the 'Text Police' functions - but please make sure you specify who you are talking to - a 'stop now' sent to all cops means nothing, as no one has any idea who you are talking to.
<br /><br />

<font size='18' color='#FF0000'>Examples</font><br />
Civilian declaration on Civilian<br />
Format: [Demand][Timeframe][Consequence]<br />
Example: Get out of your truck and on the ground with any weapons down. You have 20 seconds to comply or we will shoot you<br /><br />
Civilian declaration on Police<br />
Format: [Location][Demand][Timeframe][Consequence]<br />
Example: All cops near Kavala cornfield, you have 30 seconds to lower your weapons and get on the ground away from your vehicles or you will be shot.<br /><br />
            "
    ]
];

player createDiaryRecord ["rules",
    [
        "Safe Zones",
            "
<font size='18' color='#FF0000'>Strict Safe Zones (GREEN Zones)</font><br />
These zones are marked by a green overlay on the map.<br />
- No hostile role play can be commenced inside a strict safe zone<br />
- Any hostile role play which enters a strict safe zone must stop immediately<br />
- Running into a strict safe zone to avoid hostile role play is not permitted<br />
- Rebel armored vehicles (striders, ifrits, etc) are not permitted inside the Kavala/Pygros strict safe zones<br />
- Stealing vehicles from inside a strict safe zone is strictly prohibited<br />
<br />

<font size='18' color='#FF0000'>Safe Zones (BLUE Zones)</font><br />
These zones are marked by a blue overlay on the map<br />
- No hostile role play can be commenced inside a safe zone (except as listed below)<br />
- Hostile role play can be commenced inside the safe zone if a player is robbing a store and is confronted by police
- Hostile role play can be commenced if a suspect is apprehended by police, however role play must be followed and relevant declarations made (see declaration section)
- Hostile role play may continue if brought in from outside the safe zone. However, please remove it from the safe zone as soon as possible<br />
- Stealing vehicles from inside a safe zone is strictly prohibited
<br />
            "
    ]
];

player createDiaryRecord ["rules",
    [
        "Lawless Zone",
            "
<font size='18' color='#FF0000'>Lawless Zone (RED Zone)</font><br />
The lawless zone is marked by a red overlay on the map.<br />
- The Lawless Zone is exempt from RDM rules and you may engage without warning inside of it.<br />
- The Lawless Zone is exempt from VDM rules and you may run over people inside of it.<br />
            "
    ]
];

player createDiaryRecord ["rules",
    [
        "Hostile Actions",
            "
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

            "
    ]
];

player createDiaryRecord ["rules",
    [
        "Vehicle Rules",
            "
<font size='18' color='#FF0000'>General rules</font><br />
- Entering a vehicle immediately after someone jumps out (not giving them at least 3 seconds to lock the vehicle) is against server rules<br />
- Intentionally running players over with a vehicle is against server rules<br />
- Intentionally destroying a vehicle is against server rules (this includes ramming vehicles that are almost guaranteed to blow up - i.e. most unarmored land vehicles)<br />
- Stealing a vehicle in order to destroy it is not allowed<br />
<br />

<font size='18' color='#FF0000'>Land vehicle specific</font><br />
- When desyncing, please stay at least 50m from any vehicles in front of you while driving - this helps avoid desync collisions<br />
<br />

<font size='18' color='#FF0000'>Air vehicle specific</font><br />
- Flying over strict safe zone at very low altitude is not allowed (excluding landing)<br />
- Hovering at low altitude or continuous flying at low altitude around the major police stations or the Kavala or Pyrgos squares is not permitted.<br />
- Hovering over a player without role play reason is not allowed (this makes hearing conversations difficult, and makes the screen blurry)<br />
- Dropping sling-loaded vehicles from a helicopter altitude of above 15m is not permitted - this increases the risk of explosions<br />
- If landing for more then 1-2 minutes, you must power down your engines<br />
- The mini guns on the Ghost Hawk are not to be fired under any circumstances
<br />
            "
    ]
];

player createDiaryRecord ["rules",
    [
        "Federal Reserve",
            "
<font size='18' color='#FF0000'>Federal Reserve</font><br />			
The federal reserve consists of two stages:<br />
	1. Entering the federal reserve, blowing open the vault, and obtaining the gold<br />
	2. Transporting the gold to either storage or sale<br />
<br />
<font size='18' color='#FF0000'>Rules</font><br />	
- The federal reserve, when being robbed, is a kill-on-sight area.<br />
- While attending a federal reserve robbery, police cannot impound vehicles<br />
<br />
- Triggering the robbery alert on the federal reserve to bait police, to get kills, or similar, is not permitted.<br />
<br />
- If you die during the federal robbery, you can not return to that stage. You must wait for the next stage.<br />
- If all police die at stage 1 (i.e. there are no police remaining alive), the police may not attend stage 2.<br />
- If all civilians die at the location, the robbery attempt is a fail.<br />
<br />
- No third party is allowed to attend a federal reserve. The federal reserve is strictly between the cops and the robbers.<br />
<br />
- As a civilian you must be online within 1.5km of the federal reserve to be part of the robbery<br />
- As a police officer you must be online when the first federal reserve alarm goes off to be part of the robbery<br />
<br />
- If you die as a civilian in stage one you cannot swap to police to take part in stage two, and vice versa<br />
- If you die during a federal reserve robbery, you cannot swap to medic and revive players still involved in the robbery<br />

            "
    ]
];

/* END SERVER RULES */


/* START LAWS */

player createDiaryRecord ["laws",
    [
        "Laws and Regulations",
            "
<font size='18' color='#FF0000'>Laws and Regulations</font><br />	
Note: These are laws. Not server rules. Breaking these will only result in possible prosecution by police.<br />
<br />

- You must drive on the left hand side of the road<br />
- Speed limit in towns and cities: 60 KM/H on main road, 50KM/H on side streets<br />
- Speed limit outside of towns and cities: 110 KM/H on highway, 100KM/H on dirt trails<br />
- Parking on the road, on the footpath, or in ways which obstruct traffic is illegal<br />
- You must have the relevant licence if you wish to operate a vehicle<br />
- Hovering over a city is illegal<br />
- If landing inside city limits, you must only land at designated heliports (No landing at hospitals)<br />
<br />
- Having drugs (Cocaine/Weed/Heroin), turtles, organs, federal reserve bars, explosive charges, and/or uranium in your possession/vehicle is illegal<br />
- Killing another person is illegal<br />
- Having any primary weapon is illegal<br />
- Having a pistol without a liscense is illegal<br />
<br />

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
- Driving go-kart outside of the track - $5000 and vehicle impound<br />
- Driving without licence - $5000<br />
- Driving under the influence - $8,000<br />
- Driving illegal truck mission - $50,000 and vehicle impound<br />
- Reckless driving - $8,000 and vehicle impound<br />
- Landing inside city limits - $10,000 and vehicle impound<br />
- Evading police via vehicle - $15,000 and vehicle impound<br />
- Failure to stop at checkpoint - $15,000 and player/vehicle search<br />
- Attempted Vehicle Theft - $10,000<br />
- Vehicle Theft - $20,000 and vehicle impound<br />
<br />

<font size='18' color='#FF0000'>NOTES:</font><br />
- Speeding must be detected with the P07 speed radar function.<br />
- When fining for reckless driving, please consider the fact that it's sometimes hard to drive well in ArmA.<br />
- When fining someone for vehicle theft, if you can return the car to the owner, you don't need to impound it.
<br />
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
- Trespassing on government land - $7,000<br />
<br />

- Trolling police - $8,000<br />
- Trolling police (2nd offence) - Jail<br />
(This is just a way to allow police to warn and deal with trolls - non-minor trolling may be dealt with by admins)<br />
<br />

<font size='18' color='#FF0000'>NOTES:</font><br />
- Trolling police 2nd offence should be within a short period from the 1st offence (eg. 5-10 minutes). If the person is consistantly trolling throughout the day, this also applies.
<br />
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
- Illegal unregistered citizen - $45,000 and Jail<br />
- Accessory to murder - $20,000<br />
- Kidnapping - $40,000 AND Jail<br />
- Attempted murder - $50,000 AND Jail<br />
- Organ harvesting - $60,000 AND Jail<br />
- Murder - $70,000 AND Jail
- Vehicular manslaughter - $50,000 and Jail and vehicle impound<br />
- Assault on Town - $100,000 AND Jail<br />
- Robbery of Federal Reserve - $200,000 AND Jail<br />
<br />

<font size='18' color='#FF0000'>NOTES:</font><br />
- Assault means knocking out<br />
- Robbery means both robbing a player, and robbing a store.<br />
- Accessory means you assist the criminal, this includes refusing to identify who it is.<br />
- Accessory to non-murder mainly refers to theft, assault, kidnapping, etc. Does not include things like possession of weapon, speeding, etc.
<br />
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
<br />
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
<br />
            "
    ]
];

player createDiaryRecord ["cop",
    [
        "Rules",
            "
<font size='18' color='#FF0000'>Rules</font><br />
- Police must be in teamspeak and in a police channel at all times<br />
- Police must follow commands from superiors at all times<br />
- Corrupt police are not permitted
<br />
            "
    ]
];

player createDiaryRecord ["cop",
    [
        "Probable/Reasonable Cause",
            "
<font size='18' color='#FF0000'>Probable/Reasonable Cause</font><br />
Probable Cause or Reasonable Cause is the justification for searching a player or vehicle without consent from the owner. This can only be done where there is evidence which strongly suggests that the person or vehicle is undergoing or has recently been involved with illegal activities.<br />
<br />

Some examples:<br />
- Refusing a search IS NOT probable cause.<br />
- Driving a delivery truck IS NOT probable cause.<br />
- Seeing a legal weapon on someone IS NOT probable cause. (But you can ask for licence)<br />
- Seeing an illegal weapon on someone IS probable cause.<br />

            "
    ]
];

player createDiaryRecord ["cop",
    [
        "Arresting and Restraining",
            "
<font size='18' color='#FF0000'>A few reminders:</font><br />
- Communication and role play is a priority over all else.<br />
- The suspect has a right to know why they are restrained and why they are being fined/arrested.<br />
- You have a right to exercise your judgement - you don't have to issue full fines for everything. The suspect may role play their way out of a punishment, or to a lesser punishment. You may also choose to issue a warning or a lesser fine for minor infringements (or you may issue the full fine).<br />
<br />


<font size='18' color='#FF0000'>Some notes on restraining:</font><br />
- Unless the suspect is under arrest or an imminent danger to yourself or others or themselves, you must have permission from them to restrain them.<br />
- If you are doing a routine licence check, a good way to do it is say something like 'Is it alright if I restrain you to check your licences?'<br />
- Players driving vehicles or with legal firearms visible are required to show the relevant licence, otherwise they may be fined for not having a licence<br />
- Players on foot or passengers in vehicles are not required to provide ID (unless under arrest)<br />
<br />


<font size='18' color='#FF0000'>When arresting for a crime:</font><br />
- Inform the suspect they are under arrest<br />
- Restrain<br />
- Move the suspect to a safe location (if required)<br />
- Ask for identification, if they refuse, role play - take them back to a police station for forensic identification.<br />
- Inform the suspect on what he is accused of<br />
- Listen to the suspects story (for serious offences, good role play may result in a lesser punishment. For minor offences, good role play may result in lesser punishment or a warning)<br />
- Inform the suspect of what they are being charged for, and what the charge for those things are<br />
- Issue relevant tickets. Suspects have 3 chances to pay a ticket, failure to do so on third attend results in Jail.
<br />
            "
    ]
];

player createDiaryRecord ["cop",
    [
        "Lethal force",
            "
<font size='18' color='#FF0000'>Lethal Force</font><br />
Lethal force is a last resort, and is used to preserve the lives of officers and the general public.<br />
As police, your primary goal when dealing with criminals is to arrest them, NOT kill them!<br />
<br />

Unless one of the below conditions has been met, you should only ever engage with your taser pistol, or taser rifle.<br />
Even when lethals are authorised, tasing and/or restraining the suspect is always preferable.<br />
A reminder that even when you can engage with either a taser or lethal, role playing is preferred over shooting.<br />
<br />

Lethals are authorised when:<br />
- You are fired upon<br />
- Someone is killed by the suspect(s)<br />
- The commanding officer (who is at minimum a captain) authorises the use of lethals<br />
- During a federal reserve robbery
<br />
            "
    ]
];

player createDiaryRecord ["cop",
    [
        "Martial Law",
            "
<font size='18' color='#FF0000'>Martial Law</font><br />
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
<br />
            "
    ]
];

player createDiaryRecord ["cop",
    [
        "Raids and Illegal Areas",
            "
<font size='18' color='#FF0000'>Raids and Illegal Areas</font><br />
Police are not permitted in illegal areas at any time unless one of the following conditions has been met:<br />
- Police may go to the drug dealer to question, but must leave immediately after<br />
- Police may drive or fly past illegal areas, but may not 'camp' at or near an illegal area<br />
- A raid has been called on the location<br />
<br />


<font size='18' color='#FF0000'>Raiding Illegal Locations:</font><br />
Raids on illegal locations can be called when there is a suspicion of illegal activities in that area.<br />
- Raids must be authorised by a Captain or higher<br />
- Only one raid may be called every 30 minutes<br />
- Raids can only be called on a single illegal area<br />
- There must be at least 5 officers participating in the raid<br />
- Any civilian within 1.5km of the illegal area marker may be restrained and searched<br />
- No public declaration of the raid is required (if possible, a message just after the start of the raid is preferred though - speak to an OzzyGaming team member for this)
<br />
            "
    ]
];

player createDiaryRecord ["cop",
    [
        "Checkpoints and Roadblocks",
            "
<font size='18' color='#FF0000'>Checkpoints and Roadblocks</font><br />
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
<br />
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
<br />
            "
    ]
];

player createDiaryRecord ["med",
    [
        "How to join",
            "
<font size='18' color='#FF0000'>To become a whitelisted medic:</font><br />
Fill out an application on the website (http://www.ozzygaming.com)
<br />
            "
    ]
];

player createDiaryRecord ["med",
    [
        "Rules",
            "
<font size='18' color='#FF0000'>Key ('Golden') Rules</font><br />
- Medics must not have weapons<br />
- Medics must follow instructions from police and senior medics<br />
- Medics are independant (Don't take sides!)<br />
- Medics are not to participate in illegal activities<br />
- role play is highly encouraged<br />
<br />

<font size='18' color='#FF0000'>Reviving and Transport Rules</font><br />
- Medics can not be forced to revive someone<br />
- Medics can be told not to revive someone by a civ at gunpoint (failure to comply could result in Medics death)<br />
- Medics can not be told not to revive someone by a cop. Medics can be told to wait before reviving though<br />
- Medics can't choose to not revive someone. Medics can choose which order to revive them in<br />
- Medics can only transport people to the nearest garage or vehicle store (if they are not near one already)<br />
- Medics can not give lifts to people involved in another role play (this would take them away from the rp)<br />
<br />

<font size='18' color='#FF0000'>Hostile Situations</font><br />
- You should wait at least 600m - 1km away from a hostile situation<br />
- You can only enter the hostile situation when authorised by police commanding officer, senior medics, or the situation has finished<br />
- If you knowingly enter a combat zone and get killed (when not authorised), it's your own fault
<br /><br />

<font size='18' color='#FF0000'>Note:</font><br />
For a full list of rules and conduct requirements, please see the 'Medic Overview' link. This link can be found in Teamspeak (ts3.ozzygaming.com) in the description of the Medic Training channels.<br />

            "
    ]
];

player createDiaryRecord ["med",
    [
        "Interactions with Police",
            "
<font size='18' color='#FF0000'>Interactions with Police</font><br />
- Police may not prevent medics from accessing hospitals or ambulance stations.<br />
- Police may not prevent a medic from reviving someone, however they may make the medic wait for the area to be cleared/secured<br />
- Police may NOT send medics to jail<br />
- Police may fine medics for very reckless behaviour (trolling, hindering police, extremely reckless driving) - note that wanted list entries for medics are not applicable
<br />
            "
    ]
];


/* END MEDIC INFO */
