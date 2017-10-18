VAR deliver = false
VAR Shards = 0
VAR trident = false
VAR climbing_gear = false
VAR scouting = x
VAR altitude = false
VAR assassin = false
VAR anchor = false
VAR stamina = x
VAR rank = y
===paragraph_You_Die===
You died. This is the end of  your adventures.
 *[Start again] -> start
->start

===start===

The approach of dawn has turned the sky a milky grey-green,
like jade. The sea is a luminous pane of silver. Holding the tiller
of your sailing boat, you keep your gaze fixed on the glittering
constellation known as the Spider.  It marks the north, and by
keeping it to port you know you are still on course.
The sun appears in a trembling burst of red fire at the rim of
the world. Slowly the chill of night gives way to brazen warmth.
You lick your parched lips. There is a little water sloshing in the
bottom of the barrel by your feet, but not enough to see you
through another day.
Sealed in a scroll case tucked into your jerkin is the
parchment map your grandfather gave to you on his death-bed. 
You remember his stirring tales of far sea voyages, of kingdoms
beyond the western horizon, of sorcerous islands and ruined
palaces filled with treasure.  As a child, you dreamed of nothing
else but the magical quests that were in store if you too became
an adventurer.
You never expected to die in an open boat before your
adventures even began.
Securing the tiller, you unroll the map and study it again.
You hardly need to. Every detail is etched into your memory by
now.  According to your reckoning, you should have reached
the east coast of Harkuna, the great northern continent, days
ago.
A pasty grey blob splatters on to the map. After a moment of
stunned surprise, you look up and curse the seagull circling
directly overhead. Then it strikes you – where there’s a seagull,
there may be land.
You leap to your feet and scan the horizon. Sure enough, a
line of white cliffs lies a league to the north.  Have you been
sailing   along   the   coast   all   this   time   without   realising   the
mainland was so close?
Steering towards the cliffs, you feel the boat judder against
rough waves.  A howling wind whips plumes of spindrift across
the sea.  Breakers pound the high cliffs.  The tiller is yanked out
of your hands. The little boat is spun around, out of control, and
goes plunging in towards the coast.
You leap clear at the last second. There is the snap of timber,
the roaring crescendo of the waves – and then silence as you go
under.  Striking out wildly, you try to swim clear of the razor-
sharp rocks.  For a while the undertow threatens to drag you
down, then suddenly a wave catches you and flings you
contemptuously up on to the beach.
Battered and bedraggled you lie gasping for breath until you
hear someone walking along the shore towards you.  Wary of
danger, you lose no time in getting to your feet.  Confronting
you are an old man clad in a dirty loin-cloth.  His eyes have a
feverish bright look that is suggestive of either a mystic or a madman. 
-> paragraph_20

=== paragraph_2===
{deliver: 
-> paragraph_98
}
The soldier recognizes you.  He bows and says, ‘Welcome, my lord. I will take you see King Nergan. ’He leads you to Nergan’s mountain stockade, where the king greets you warmly. ‘Ah, my local champion!  It is always a pleasure to see you. However, I was hoping you had spoken with General Beladai of the allied army – we need that citadel. Now go. That is a royal command! ’You leave, climbing down to the foothills of the mountains.
+[Go to the Mountains] -> paragraph_474

===paragraph_3===
You have come to the foothills of the Spine of Harkun, in the north west of Sokara. The view is impressive: a massive wall of forested mountains, whose rocky, white-flanked peaks soar skywards into the clouds.  These parts of the mountains are unclimbable but you notice a large cave at the bottom of a mountain.
+[Investigate the cave] ->paragraph_665
+[Go east to the citadel of Velis Corin] ->paragraph_271
+[Go south into the wilderness] ->paragraph_276

===paragraph_4===
The priests of Alvir and Valmir are overjoyed that you have returned the golden net. The high priest rewards you with 100 Shards and a magic weapon, a rune-engraved trident.
    ~ Shards = Shards + 100
    ~ trident  = true
->paragraph_220

===paragraph_5===
It is a tough climb upwards but not impossible.
+   {climbing_gear} [You have climbing gear. You climb with ease] -> paragraph_652
+   {climbing_gear == false} [Despite the danger you try to climb]
// figure out rolling mechanics

===paragraph_6===
The chest springs open with a click.
/* Inside: 0 Shards, amandolin  (CHARISMA  +1),  and  a  potion  of  healing.  Thepotion can be used once, at any time (even in combat) to restore5  Stamina  points.  There  is  also  an  ancient  religious  text  aboutthe  gods  of  the  Uttaku,  called  the  scroll  of  Ebron,  whichreveals that one of the gods of the Uttakin is called Ebron, andthat he has fourteen angles. More work to be done 
Figure out inteface and then we will script this paragraph*/
->paragraph_10

===paragraph_7===
Much  to  your  embarrassment, you get  lost in the vast forest. You wander around for days until you finally emerge at the Bronze Hills.
-> paragraph_110

===paragraph_8===
You step through the archway. Immediately the symbols on the stone begin to glow with red-hot energy; your hair stands on end and your body tingles. A crackling nimbus of blue-white force engulfs you, the sky darkens and thunder and lightning crash and leap across the heavens. Suddenly, your vision fades, and everything goes black. When your sight returns, you find yourself at the gates of large city, set on an ochre-coloured river.  A vile stink of brimstone permeates the air. You wrinkle your face up in disgust and gag involuntarily. 
‘Welcome to Yellowport!’ says a passing merchant.
-> paragraph_10

===paragraph_9===
{altitude:
    -> paragraph_272
}
A notice has been pinned up in the foyer. ‘Adventurer priest wanted. See the Chief Administrator.’ Naturally, you present yourself, and the Chief Administrator, a grey-whiskered priest of Elnir, takes you into his office.  He shows you a special crystal ball that displays an aerial view of Marlock   City.  You   notice   several   strange-looking   clouds hanging over the city.  They are shaped like gigantic demons reaching down to claw at the city laid out below them. ‘The crystal ball shows things as they are in the spirit world,’ explains the priest.  ‘These storm demons cannot be seen under normal circumstances, but they are there, almost ready to destroy the city.’ He goes on to tell you that Sul Veneris, the divine Lord of Thunder is one of the sons of Elnir, the Sky God, chief among the gods. He is responsible for keeping the storm demons under control, and thunder is thought to be the sound of Sul Genericizing the demons in his wrath. ‘Unfortunately, the storm demons have found a way to put Sul Veneris into an enchanted sleep.  He lies at the very top of Devil’s Peak, a single spire of volcanic rock, reaching up into the clouds. The peak lies north of Marlock City and the Curstmoor. We need an enterprising priest to get to the top of the peak and free Sul Veneris from his sleep. But I must warn you that several priests have already tried, and we never saw them again.’
* [Take the quest] 'I will try' 
 ~altitude == true
* [Refuse the quest] 'I don't have time for this'
- -> paragraph_100

===paragraph_10===
{assassin:
    -> paragraph_50
}
{TURNS_SINCE(->paragraph_10) == 4: -> paragraph_273}
Yellowport is the second largest city in Sokara. It is mainly a trading town, and is known for its exotic goods from distant Ankon-Konu, way to the south. The Stinking River brings rich deposits of sulphur from the Lake of the Sea Dragon down to the town, where it is extracted and stored in the large waterfront warehouses run by the merchants’ guild.  From here, the mineral is exported all over Harkuna.  Unfortunately, all that sulphur has its drawbacks.  The stink is abominable, and much of the city has a yellowish hue. The river is so full of sulphur that it is virtually useless as a source of food or of drinking water. However, the demand for sulphur, especially from the sorcerous guilds, is great. Politically, much has changed in the past few years. The old and corrupt king of Sokara, Corrin VII, has been deposed and executed in a military coup.  General Grieve Marlock and the army now control Sokara.  The old Council of Yellowport has been ‘indefinitely dissolved’ and a provost marshal, Marloes Marlock, the general’s brother, appointed as military governor of the town.
//About buying a house in Yellowport

===paragraph_11===
A narrow path leads up the hill, the top of which is crowned with a circle of large obsidian standing stones, hewn from solid rock.  Despite the bitter wind that blows across these hills, the stones are unweathered and seem but newly lain.  They form three archways, each carved with mystic symbols and runes of power. -> paragraph_65

===paragraph_12===
You tell them a story of tragic love between a merman and a human princess.  The mer-folk are moved to shed briny tears, and one of them plants a languorous kiss on your lips. You find that you can indeed breathe underwater now. Theme-folk lead you into the depths, where they swim playfully around you. Suddenly, a hideous form looms out of the murk. It is like a giant squid, but it carries a spear in one of its many tentacles and wears rudimentary armour.  Great black eyes shine with an implacable alien intelligence.  The mer-folk dart away in fright, leaving you alone with the creature.
{anchor: 
    -> paragraph_116
}
->paragraph_238

===paragraph_13===
‘The Violet Ocean’s a dangerous place, Cap’n’, says the first mate.  ‘The crew probably won’t follow you there if they don’t think you’re good enough.
{rank >= 4:
-> OverTheBloodDarkSea_paragraph_55
}
- (YouWentBack)
    +[Insist on making the trip] 
    ~diceRoll(charisma, charisma_roll)
    {charisma >= 12:
    ->OverTheBloodDarkSea_paragraph_55
    -else:
    ->paragraph_507
    }
    +[Turn back] -> paragraph_507
    
===paragraph_14===
Someone stabs you in the back ~stamina = stamina - 5 
{stamina <= 0:
    -> paragraph_You_Die
-else:
    Miraculously you are still alive.  You spin around just as a beefy, disreputable-looking thug comes for you again with a long dagger. ‘Get the snooping swine!’ yells the man with the eyepatch. You must fight.
}
    //We still have to figure out the fighting mechanic and how to make a global function stamina<=o you die
    +[You win the fight!] -> paragraph_476
    /*this para is scripted very poorly and must be improved*/
    
===paragraph_15===
Three drunken army officers accost you on the street.
{Protector_of_Sokara:
-> paragraph_542
}
‘Sho, what have we...  hic...  here,’ sneers one of them drunkenly. ‘Out of the way, you are stinking dog!’  says another, shoving you in the chest.
+[Step out of the way] -> paragraph_44
+[Return the insult] ->paragraph_266

===paragraph_16===



===OverTheBloodDarkSea_paragraph_55===
Over the Blood-Dark Sea is another book in Favled Lands series and is currently unavailable. Please go back and choose another option.
*[Turn back] -> YouWentBack




















