VAR trubadour = false
VAR wayfarer = false
VAR warrior = false
VAR mage = false
VAR rogue = false
VAR priest = false
VAR inititate = false
VAR deliver = false
VAR Shards = 0
VAR trident = false
VAR climbing_gear = false
VAR scouting = 0
VAR altitude = false
VAR assassin = false
VAR anchor = false
VAR avenge = false
VAR stamina = 0
VAR rank = 0
VAR visited_paragraph_16 = false
VAR visited_paragraph_19 = 0
VAR anvil = false
VAR sanctity = 0
VAR aklar = false
VAR artefact = false
VAR templeOFTyrnai = false
VAR initiate = false
VAR Lacunas_Blessing = false
VAR ink_sac = 0
VAR bag_of_pearls = false
VAR verdigris_key = false
VAR officers_pass = false
VAR scrollOfEbron = false 
VAR CargoUnit = 0
VAR AlvirAndValmir = false
VAR resurrectionOfTyrnai = false
VAR MarlockHouse = false
VAR combat = 0
VAR defend = false
VAR almanac = false
VAR brush = false
VAR eldritch= false
VAR magic = 0
VAR charisma = 0
VAR armour = false
VAR paragraph_116_visited = true
VAR ashen = false
VAR worship_of_elnir = false
VAR rat_poison = false
VAR axe = false
VAR apple = false
VAR thievery = 0
VAR lantern = false
VAR visited_paragraph_169 = false
VAR artery = false
VAR ambuscade = false
VAR aspen = false
VAR ghoulbite = false
VAR ghouls_head = false
VAR blessingOfSig = false
VAR visited_paragraph_207 = false
VAR goldChainMailOfTyrnai = false
VAR anthem = false
VAR visited_paragraph_232 = false
VAR visited_paragraph_233 = false
{
-ghoulbite:
~combat -=1
~sanctity -=1
~charisma -=1
-else:
~combat = combat
~sanctity = sanctity
~charisma =charisma
}
->start
===paragraph_You_Die===
You died. This is the end of  your adventures.
 *[Start again] -> start

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
~temp scouting_roll=0
It is a tough climb upwards but not impossible.
+   {climbing_gear} [You have climbing gear. You climb with ease] -> paragraph_652
+   {climbing_gear == false} [Despite the danger you try to climb]
~diceRoll (scouting, scouting_roll)
{scouting >=11:
    ~scouting -= scouting_roll
    ->paragraph_652
- else:
~scouting -= scouting_roll
->paragraph_529
}
=== function diceRoll(ref x, y)
~ y = RANDOM (2,12)
~ x +=y

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
* [Take the quest] 
 ~altitude = true
* [Refuse the quest] 'I don't have time for this'
- -> paragraph_100
/*
===paragraph_10===
{assassin:
    -> paragraph_50
}
{TURNS_SINCE(->paragraph_10) == 4: -> paragraph_273}
Yellowport is the second largest city in Sokara. It is mainly a trading town, and is known for its exotic goods from distant Ankon-Konu, way to the south. The Stinking River brings rich deposits of sulphur from the Lake of the Sea Dragon down to the town, where it is extracted and stored in the large waterfront warehouses run by the merchants’ guild.  From here, the mineral is exported all over Harkuna.  Unfortunately, all that sulphur has its drawbacks.  The stink is abominable, and much of the city has a yellowish hue. The river is so full of sulphur that it is virtually useless as a source of food or of drinking water. However, the demand for sulphur, especially from the sorcerous guilds, is great. Politically, much has changed in the past few years. The old and corrupt king of Sokara, Corrin VII, has been deposed and executed in a military coup.  General Grieve Marlock and the army now control Sokara.  The old Council of Yellowport has been ‘indefinitely dissolved’ and a provost marshal, Marloes Marlock, the general’s brother, appointed as military governor of the town.
//About buying a house in Yellowport
*/

===paragraph_11===
A narrow path leads up the hill, the top of which is crowned with a circle of large obsidian standing stones, hewn from solid rock.  Despite the bitter wind that blows across these hills, the stones are unweathered and seem but newly lain.  They form three archways, each carved with mystic symbols and runes of power. 
-> paragraph_65

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
    {  
        - visited_paragraph_16:
        ->paragraph_251
        - avenge == true:
          ~visited_paragraph_16 = true
        ->paragraph_648
        -else:
        ~visited_paragraph_16 = true 
        You remain quiet as a mouse, behind a pile of coins. After a long wait, the sea dragon slithers into the water, and swims out on some errand.  You have some time to loot the hoard.  You may choose up to three of the following treasures:
        
            Enchanted sword (COMBAT +3)
            Plate armour (Defence +5)
            Ebony wand (MAGIC +2)
            500 Shards
            Magic mandolin (CHARISMA +2)
            Gold compass (SCOUTING +2)
            Magic lockpicks (THIEVERY +2)
            Silver holy symbol (SANCTITY +2)
            
        After you have taken the third treasure, you hear the sea dragon returning.  Quickly you climb up through the hole in the roof on to an island in the middle of the lake.  From there you manage to get a lift on a passing boat, and make it safely to Cadmium village.
        -> paragraph_135
    }
    
===paragraph_17===
The horse and you hit the wall. There is a bright flash, and you find you have passed straight through into the hill – it must be a faery mound! The horse you are riding abruptly changes shape in a puff of smoke.  You find yourself on the back of a little, knobbly-limbed, white-faced goblin, who promptly collapses under your weight. You are in a cavern, lit by mouse-sized faery folk, who flit about in the air blazing like fireflies. The other horses have also turned into goblins, elves and faeries of all shapes and sizes. ‘What have we here?, ’ whispers a pale, dark-eyed elf woman, dressed in silvery cobwebs and wearing a gold crown. ‘An overweight mortal sitting on poor old Gobrash, your majesty!’ groans the goblin you are sitting on. You realize you are in great danger here – there’s no telling what the faery folk will do to you.  The queen signals to her people and they close around you ominously.
 ~temp sanctity_roll = 0
~diceRoll(sanctity, sanctity_roll)
{- sanctity >= 9:
    ~sanctity -= sanctity_roll
    ->paragraph_626
-else:
 ~sanctity -= sanctity_roll
 //compiler crashes here i don't know why
    ->paragraph_268
}


===paragraph_18===
You spin them a tale about how your poor brother, a mercenary in Grieve Marlock’s personal guard, lost his legs in the fight to overthrow the old king, and that you have spent all your money on looking after him.  Several of the militia are brought to tears by your eloquent speech –  they end up having a whip-round among themselves for your brother, and they give you 15 Shards!  Chuckling to yourself, you return to the city centre
->paragraph_10

===paragraph_19===
~visited_paragraph_19++
{
    - visited_paragraph_19 == 3:
    ~ anvil = true
}
The Dragon Knights are impressed with your combat skills. Your   opponent   comes   round, ruefully   rubbing   his neck. Grudgingly, he admits to your superior skill and hands you his weapon and armour.  You get an ordinary sword and a suit of heavy plate. You take your leave.
->paragraph_276

===paragraph_20===
‘Well, well, well, what have we here, friends?’ asks the old man. He seems to be talking to someone next to him, although you are certain he is alone.  ‘Looks like a washed-up adventurer to me!’  he says in answer to his own question, ‘all wet and out of luck. ’He carries on having a conversation –  a conversation that quickly turns into a heated debate. He is clearly quite mad. ‘Excuse me, umm, EXCUSE ME!’  you shout above the hubbub to grab the old man’s attention. He stops and stares at you. ‘Is this the Isle of the Druids?’ you ask impatiently. ‘Indeed, it is,’ says the old man, ‘I see that you are from a far land so it is up to me to welcome you to Harkuna. But I think you may have much to do here as it is written in the stars that someone like you would come. Your destiny awaits you! Follow me, young adventurer.’ The old man turns smartly about and begins walking up a path   towards   some   hills.   You   can   just   see   some   sort   of monolithic stone structure atop one of them. ‘Come on, come one, I’ll show you the Gates of the World,’ the old man babbles.
+[Follow him] ->paragraph_192
+[Explore the coast] ->paragraph_128
+[Head into the nearby forest] ->paragraph_257

===paragraph_31
A dark emptiness surrounds you. Then, as if in your sleep, you see a tiny glimmer of light off in the distance.  Suddenly you wake up, and find yourself coughing and spluttering, up to your neck in water.  You look around –  you are floundering in the holy waters of Blessed Springs. Standing at the side of the pool is a tall, slim, moustached man who says ‘I am Aklar the Bold. I found you as bottled Dustin the lair of Vyas the Sea Dragon. By sprinkling your ashes into the holy waters, I have brought you back to life.  I think a reward is in order, don’t you?’ You explain that you have nothing to give. Aklar frowns in annoyance: ‘Blast, I knew I should have taken one of the other bottles!  Well, you’ll just have to owe me a favour.  A big favour.’. You can hardly refuse. ‘Well, I must be about my business –  we shall meet again, count on it.’ With that he leaves.
~aklar = true
You stagger out of the pool.
->paragraph_510

===paragraph_32===
You head across the hot, dusty and sparsely vegetated land. Vultures circle overhead –  presumably they think you’re going to die.  You wander on, until you come to a ridge.  Down below, in a shallow valley, is a great mound of earth.  Scorpion men crawl in and out of the many burrows that riddle the earth. The number of scorpion men in the valley makes your heart quail; unless you have the codeword Artefact, the place is too deadly to enter.
        { - artefact:
            ->paragraph_406
          - else:
            ->paragraph_492
        }
/*        
===paragraph_33===
~temp fee = 0
{initiate:
~fee = 200
- else:
~ fee = 800
}
Resurrection costs 200 Shards if you are an initiate, and 800 Shards if not. Once you have arranged for resurrection you need not fear death, as you will be magically restored to life here at the temple.
    +[Pay {fee} Shards and arrange for resurrection]
    ~Shards -= {fee} 
    ~templeOfTyrnai = true
    -> paragraph_33.YouFinished
   - (YouFinsished)
    +[Choose this option when you are finished here] ->paragraph_282
We need to arrange this paragraph when we have finished coding the ressurection. I think we will do it in unity and how to write unchhosable options 
*/

===paragraph_34===
You make it only 50 feet up the sheer rockface before you lose your footing and fall to the ground.
~stamina -=4
->paragraph_658

===paragraph_35===
You come to the top of a windswept cliff.  An ancient pillar of jumbled rock, pitted and weatherbeaten, stands at the cliff’s edge, like a broken finger pointing at the sky. Seagulls sing their song of desolation in the air. Judging by the runes etched into the rock, the tor dates back to the time of the Shadar, a race that ruled Harkuna so long ago, they are lost in myth and legend.
+[Examine the runes] -> paragraph_515
+[Go down to the beach] ->paragraph_97
+[Take the road to Trefoille] ->paragraph_602
+[Take the road to Marlock City] ->paragraph_166

===paragraph_36===
Soon you realize you are completely lost in this strange, magical forest.  You wander around for days, barely able to find enough food and water.
~stamina-= 4 
->paragraph_128

===paragraph_37===
Your men have been fishing with a net.  This time, however, they have caught a large shark. Afterwards, when it has been cut open, you find the remains of some poor sailor. Inside his leather pouch, you find a bag of pearls, which you can take if you wish.
+[Take a bag of pearls]
~bagOfPearls = true 
->paragraph_507
+[Leave a bag of pearls] -> paragraph_507

===paragraph_38===
Heavy black clouds race towards you across the sky, whipping the waves into a frenzy.  The crew mutter among themselves fearfully.
{blessingOfAlvirAndValmir:
~blessingOfAlvirAndValmir = false
->paragraph_209
}
The storm hits with full fury.
//Come back later

/*
===paragraph_39===
You  and  some  of  your  crew  clamber  aboard  the  wreck.  Youfind  some  dead  sailors  amid  the  wreckage.  Their  bodies  arecuriously bloated.
~temp scouting_roll = 0
~diceRoll(scouting, scouting_roll)
{diceRoll >=9:
->paragraph_194
- else:
->paragraph_465
}
*/

===pargraph_40===
You take the Book of the Seven Sages to Pyletes the Sage at the Gold Dust Tavern. He thanks you effusively for bringing it to him.  Your reward is secret learning from the temple of Molhern, god of knowledge.  Add 1 to the ability of your choice. Also gain the title Illuminate of Molhern.
~artefact = false
~ bookOfTheSevenSages = false
~IlluminateOfMolhern = true
/*this still needs to be improved*/
+[Add one to Charisma]
~charisma++
->paragraph_10
*[Add one to Combat]
~combat++
->paragraph_10
*[Add one to Magic]
~magic++
->paragraph_10
*[Add one to Sanctity]
~sanctity++
->paragraph_10
*[Add one to Scouting]
~scouting++
->paragraph_10
*[Add one to Thievery]
~thievery++
->paragraph_10

===paragraph_50===
The new provost marshal of Yellowport is Royzer – he used to be   Marloes   Marlock’s   second   in   command.   Since   the assassination of the old provost, Royzer has ruled the city with an iron hand –  patrols are frequent and spies are everywhere. You will have to be careful not to get yourself recognise.
->paragraph_10

===paragraph_51===
The war galley puts alongside, and grappling hooks fly, fastening your ships together.  The captain leaps across and his men swarm on to your ship. A battle ensues.
//tbc

/*
===paragraph_52===
~temp fee = 0
{initiate:
~fee = 10
- else:
~ fee = 25
}
If you are an initiate it costs only 10 Shards to purchase Lacuna’s blessing. A non-initiate must pay 25 Shards.

+[Pay {fee} Shards and buy Lacuna's blessing]
~Shards -={fee}
~Lacuna's_Blessing = true
->paragraph_52.YouAreFinished
-(YouAreFinished)
+[Choose this option when you are finished here]
->paragraph_544
*/

===paragraph_53===
The creature bursts open in death, spilling a black inky cloud into the water. The sac in which this ink is kept falls free from its body. You can take the ink sac if you wish.  You also find coral jewellery worth about 15 Shards.  Nothing else occurs during your foray into the depths, so you return to land. You climb back up the path that leads to the clifftop tor without incident.
~Shards += 15 
+[Take the road to Trefoille and take the ink sac]
 ~ink_sac = true 
->paragraph_602
+[Take the road to Trefoille without taking the ink sac] 
->paragraph_602
+[Take the road to Marlock City and take the ink sac]
~ink_sac = true 
->paragraph_166
+[Take the road to Marlock City without taking the ink sac]
->paragraph_166

===paragraph_54===
You drive back the storm demons long enough for you to work free one of the stakes that is holding Sul Veneris down.
->paragraph_365

===paragraph_55===
You remember that this is a trap set up by the cannibal cultists of Badogor. While one pretends to be hurt, two other skulk in the shadows, waiting to ambush the curious.  Forewarned you are able to take them by surprise. You cut one down in seconds and the figure on the ground runs off with a shriek of terror.  The third cultist, however, turns to fight you.
//Fighting mechanic!!
+[You win and find a bag of pearls on the body]
~bag_of_pearls = true 
->paragraph_10 

===paragraph_56===
A strange-looking craft is bobbing in the water. It is shaped like a cone, floating on its base, and as you draw nearer, you realize it is made entirely of metal! Its sail, a huge piece of cloth, seems to have collapsed and is spread out around it, on the surface of the sea. Great blue and white letters, in some foreign script, are painted on its side. You notice an opening on one side.
+[Enter the strange craft]
->paragraph_496
+[Leave it and sail on]
->paragraph_85

===paragraph_57===
You manage to lose them amid the backstreets of Yellowport. Once the heat is off, you return to the city centre.
->paragraph_10 

===paragraph_58===
He doesn’t notice you hiding in the shadowy doorway of a nearby derelict house.  As he passes, you step out and attack, taking him completely by surprise. He goes down with your first blow. Searching him, you find 25 Shards, which you can take if you wish.  Then you flip up his eyepatch.  Nestling in the eye socket is a sparkling gem, a flame opal. You pluck it free. Quickly, you haul the body into the shadows and head for the city.
~barnacle = false
~flame_opal_eye = true 
+[Take Shards and head for the city centre]
->paragraph_400 
~Shards += 25
+[Leave Shards and head for the city centre]
->paragraph_400 

===paragraph_59===
Your deft fingers find a false spine of carved wood among the titles in the bookcase.  Pressing it, you hear a click and the bookcase swings out from the wall.  Beyond lies a hidden room where you find a verdigris key.
+[Take a verdigris key and leave at once]
~verdigris_key = true 
->paragraph_10
+[Take a verdigris key and go upstairs to find Lauria]
~verdigris_key = true 
->paragraph_386
+[Take a verdigris key and wait for Lauria to return]
~verdigris_key = true
->paragraph_534
+[You decide not to take a verdigris key and leave at once]
->paragraph_10
+[You decide not to take a verdigris key and go upstairs and find Lauria]
->paragraph_386
+[You decide not to take a verdigris key and wait for Lauria to return]
->paragraph_534

===paragraph_60===
You are crossing the wild country of north-east Sokara.
//This mechanic with rolling one die
When you are ready you can go:
+[North] ->paragraph_518
+[South] ->paragraph_458
+[West] ->paragraph_201

===paragraph_61===
‘Wait,’ you cry, ‘I have seen the light! I wish to join your cult! ’What!’ yells the chef. Then his shoulders sag in resignation. ‘We cannot refuse a new member,’ says the leader with obvious disappointment.  ‘And we cannot eat our own people,’ he adds sadly. A short ceremony later – fortunately, the initiation does not involve any cannibalistic rites – and you are a full member of the Cult of Badogor. You lose 1 point of SANCTITY permanently for joining such a vile cult. You take your leave, and they wish you well, all smiles and friendship. ‘Remember, never say his name!  And don’t forget to bring us new recruits,’ says the leader.  ‘And some people for dinner!’ adds the chef.
~sanctity -=1
~UnspeakableCultist = true 
+[Hastily, you head for the city centre] ->paragraph_10

===paragraph_62===
The Sokarans surrender.  Their captain has been killed in the battle, and his marines have had the fight knocked out of them. The war galley isn’t carrying any cargo, but you find an officer’s pass on the body of the captain, and a chest in his cabin, which contains 150 Shards.  You must hand out 50 Shards to your crew, but you can take 100 Shards for yourself.   You   leave   the   galley   to   limp   back   to Yellowport while you sail on.
~Shards +=100
~officers_pass = true
->paragraph_439

===paragraph_63===
{
-attar:
->paragraph_578
}
A small boy runs up to you, saying ‘Help us, help us!  The Man-eating Blood-Thursday Gob-gobbler has got my little sister! ‘His mother, a flaxen-haired beauty, comes up behind him. ‘Surely, you mean blood-thirsty not Thursday,’ you ask. ‘Oh no,’ replies the young mother, ‘the Man-eating Blood-Thursday Gob-gobbler is so named because it hunts only on Thursdays!’ The boy’s name is Mikail, and his mother is Lynn.  Her husband is away in the army, and her young daughter, Haylie, was taken by the beast last Thursday. Apparently, several people have disappeared, never to be seen again. ‘Please, help us!’ plead the villagers.
+[Help them]-> paragraph_600
+[Refuse to help]->paragraph_427

===paragraph_64===
Your amateurish tinkering sets the trap off, and the chest explodes!  You take the full force of the blast –  lose 5 Stamina points. If you are still alive, you also find that the contents of the chest have been vaporized – except for a sturdy metal scroll case, containing a piece of ancient religious text about the gods of Uttaku. You discover from the scroll that one of the gods of the Uttakin is called Ebron, and that he has fourteen angles.  Note the scroll of Ebron on your Adventure Sheet if you wish to take it.
~stamina -= 5 
+[Take the scroll of Ebron]
~scrollOfEbron = true 
->paragraph_10
+[Do not take the scroll of Ebron]
->paragraph_10

===paragraph_65===
There are three stone gates engraved with ancient runes. Each
gate is marked with a name – Yellowport, Marlock City, and
Wishport. From here, you can see the coast and the whole
island, which is heavily forested.
+[Explore the coastlineturn] -> paragraph_128
+[Head into the forest] ->paragraph_257
+[Step through the Yellowport arch] ->paragraph_8
+[Step through the Marlock City arch] -> paragraph_180
+[Step through the Wishport arch] ->paragraph_330

===paragraph_66===
You stand your ground. The ghostly horses stream past you on
either side, neighing wildly at the sky. Nimbly, you leap at one,
and manage to wrap your arms around its neck, and swing on to
its back. The horse feels quite solid, but appears to be a
luminous, pale-green colour. You look up through a cloud of
sparks emanating from the horse’s mane just in time to see a
rocky wall of a low hill looming up out of the evening mist.
Your horse is galloping full tilt right into it!
+[Hold on] ->paragraph_17
+[Leap off] ->paragraph_28

===paragraph_67===
Your ship is thrown about like flotsam and jetsam. When the
storm subsides, you take stock. Much has been swept overboard
– you lose 1 Cargo Unit, if you had any, of your choice. Also, the ship has been swept way off course and the mate has no idea
where you are. ‘We’re lost at sea, Cap’n!’ he moans.
~CargoUnit -=1 
->paragraph_90

===paragraph_68===
To renounce the worship of Alvir and Valmir, you must pay 30
Shards in compensation to the priesthood.
The priest simply points to a ship limping into harbour – its
shattered masts, torn sails and battered hull mute testimony to its
storm-tossed voyage.
‘The captain did not revere the Twin Gods,’ whispers the
coral-jewelled priest darkly.
Do you want to change your mind? If you are determined to
renounce your faith, pay the 30 Shards and delete Alvir and
Valmir from the God box on your Adventure Sheet.
+[Renounce the worship of Alvir and Valmir] 
~Shards -= 30 
~AlvirAndValmir = false
->paragraph_154
+[Do not renounce the worship of Alvir and Valmir]
->paragraph_154

===paragraph_69===
To renounce the worship of Tyrnai, you must pay 50 Shards to
the warrior priests, and suffer the Ceremony of the Wrathful
Blow. A priest will strike you once – it is better to be struck by a
priest than by Tyrnai himself!
If you are determined to renounce your initiate status, pay
the 50 Shards. 
~temp fee=50
+ {Shards >= 50}[Pay {fee} and renounce the worship of Tyrnai]
+[Choose this option when you are done] ->paragraph_526
~Shards -= 50
~stamina -= 1
~resurrectionOfTyrnai = false
The High Priest smashes you across the jaw,
saying ‘I’m doing you a favour – believe me!’ Lose 1 Stamina
point. If you earlier arranged a resurrection here, it is cancelled
with no refund.
+[Choose this option when you are done] ->paragraph_526

===paragraph_70===
Your ship is thrown about like flotsam and jetsam. When the
storm subsides, you take stock. Much has been swept overboard
– you lose 1 Cargo Unit, if you had any, of your choice. Also,
the ship has been swept way off course and the mate has no idea
where you are. ‘We’re lost at sea, Cap’n!’ he moans.
~CargoUnit -=1
->paragraph_90
===paragraph_100===
Marlock City is a huge sprawling metropolis, enclosed in a
fortified wall said to have been built one thousand years ago by
the ancient Shadar Empire. It is the capital city of Sokara.
Marlock City was once known as Sokar, until General Grieve
Marlock led the army in bloody revolt against the old king,
Corin VII, and had him executed. The general renamed the city
after himself – it is now a crime to call it Sokar.
The general lives in the old king’s palace, and calls himself
the Protector-General of all Sokara. Whereas the old king was
corrupt, the general rules with a fist of iron. Some people like
the new regime; others are royalists, still loyal to Nergan, the
heir to the throne, who has gone into hiding somewhere.
Outside the city gates hang the bodies of many dead people
– labels around their necks read: ‘Rebels, executed by the state
for the good of the people’.
‘You’d best behave yourself if you don’t want to end up like
one of them,’ grates a guardsman, nodding towards the swinging
corpses, as you pass through the great eagle-headed gates of
Marlock City.
You can buy a town house in Marlock City for 200 Shards.
Owning a house gives you a place to rest, and to store
equipment.
To leave Marlock City by sea, or to buy or sell ships and
cargo, go the harbourmaster.
~ temp price = 200
*[Pay {price} and buy a house]
~MarlockHouse = true
->GoHere
-(GoHere)
+[Visit the Three Rings Tavern]->paragraph_158
+[Visit the temple of Alvir and Valmir]-> paragraph_154
+[Visit the temple of Nagil]-> paragraph_71
+[Visit the temple of Sigturn]->paragraph_235
+[Visit the temple of Elnirturn]->paragraph_568
+[Visit the market]->paragraph_396
+[Visit the harbourmaster]->paragraph_142
+[Go to the merchants’ guild]->paragraph_571
+[Explore the city]->paragraph_138
+{MarlockHouse} [Visit your town house]-> paragraph_434
+[Visit the House of Priests]->paragraph_535
+[Visit the general’s palace]->paragraph_601
+[Travel east towards Trefoille]->paragraph_377
+[Head south-east towards the Shadar Tor]->paragraph_166
+[Follow the River Grimm north]->  paragraph_99
+[Journey north into the Curstmoor]->paragraph_175
+[Head west to the River Grimm delta]->paragraph_579

===paragraph_101===
You yell the name of their god again and again. The cultists clap
their hands over their ears, hopping about in horror.
‘Aargh!’ howls the leader. ‘Stop your blaspheming, you
heathen devil!’
In their confusion, you make it to your equipment. Now
you can fight your way out.
back to town, turn to 10.
~temp combat_roll = 0
~diceRoll (combat, combat_roll)
{combat >= 13}
You manage to fight
your way to freedom with the loss of 4 Stamina points and head
back to town.
~combat -= combat_roll
->paragraph_10
{combat <13}
~combat -= combat_roll
~stamina -= 4 
->paragraph_204

===paragraph_102===
{
-defend:
->paragraph_655
 -else:
 ‘What are you doing back here,’ asks Grieve Marlock,
angrily.  ‘You should be defending the citadel! You know, that
castle in the Pass of Eagles, up north! Get back there and talk to
Orin Telana!’
}
{coded_missive:
->paragraph_677
 -else:
 Otherwise, you
are shown out in short order.
 ->paragraph_100
}

===paragraph_103===
You set sail for Copper Island. The uneventful journey takes
only a few days. The captain cannot believe how smooth the
voyage has been. You disembark at the harbour of Copper
Island. 
->OverTheBloodDarkSea_paragraph_99

===paragraph_104===
~almanac = false
~brush = false
~eldritch= false
 You can invest money in multiples of 100 Shards. The
guild will sell and buy commodities on your behalf using this
money until you return to collect it.
‘Don’t forget that you can lose money as well,’ mutters a
sullen merchant who leaves the guild penniless.
*[Invest {x} * 100 Shards] 
//to be done on unity

===paragraph_105===
You will have to fight it.
//combat
+[Win!] ->paragraph_532
+[Lose] ->paragraph_You_Die
===paragraph_106===
~Shards  -=25
The young man smiles ingratiatingly, and
hands you the pearls.
~temp magic_roll = 0
~diceRoll (magic, magic_roll)
{magic >= 10}
~magic -=magic_roll
->paragraph_306
{magic_roll < 10}
~magic -= magic_roll
->paragraph_489

===paragraph_107===
//come back later 
->DONE

===paragraph_108===
~temp charisma_roll = 0
That night, your sleep is restless. You dream a most vivid dream.
You are attacked by a gigantic sea monster, a mighty octopoid
thing that encircles the ship with tree-like tentacles and pulls it
under the waves. You sink into the bottle-green depths until
you are caught in a glowing golden net.
You wake in an undersea palace of multi-coloured coral,
with mermaids to attend you. They lead you past trident-armed
merman guards into a great hall. Seated upon two giant shells,
like thrones, are the king and queen of the deep, with green
hair, sea-grey eyes, and crowns of pale gold. Shoals of iridescent
angel fish dart about in an intricate flashing dance of colour,
dancing for the rulers of the land beneath the waves. In awe,
you bow before them.
The queen indicates that you should entertain them, for they
are bored! A silver flute appears in your hands. 
~diceRoll (charisma, charisma_roll)
{charisma_roll >= 11}
~charisma -= charisma_roll
->paragraph_132
{charisma_roll < 11}
~charisma -= charisma_roll
->paragraph_457

===paragraph_109===
You are about to leave when you see a crowd gathered around a
slim pasty-faced scholar at a card table.
‘By the Three Fortunes, but I’m hot tonight!’ he cries. It
seems he is on a winning streak. You notice a couple of dodgy-
looking ruffians watching the scholar carefully.
+[Wait and follow the scholar]->paragraph_540
+[Return to the city centre]->paragraph_100

===paragraph_110===
You are walking through Bronze Hills. Virtually the whole area
has been given over to mining. Everywhere, quarries and
mineshafts abound. It is a horrible expanse of torn-up earth –
hardly any areas of green are left. Great heaps of excavated rock,
leeched of their useful minerals, mar the landscape. You find a
quarry that is open to the public. That is to say, if you pay 50
Shards, you can dig for an hour in a silver mine.

+[Pay 50 Shards and mine for silver] ->paragraph_668
+[Go to Caran Baru] ->paragraph_400
+[South into the Forest of Larun]  ->paragraph_47
+[West to the River Grimm] ->paragraph_333
+[North west to the Western Wilderness]->paragraph_276

===paragraph_111===
Your knowledge of the arcane arts is too limited to help you
here.
+[Fight your way to the golden net] ->paragrpah_121
+[Swim back to Shadar Tor] ->paragrpah_35

===paragraph_112===
The merchants’ guild is comparatively small here. Most of its
work involves financial services for the army. Here you can bank
your money for safe-keeping, but there are no facilities for
investment. You can deposit or withdraw money.
// we need to do this in unity +[Deposit x money] ->paragraph_605
+[Return to the town centre] -> paragraph_400

===paragraph_113===
{
-armour:
->paragraph_550
 -rogue:
 ->paragraph_75
  -else:
   The high priest
has little to say to you; your audience is cut short.
->paragraph_235
}

===paragraph_114===
You are known as the priest who outwitted the storm demons
to save Sul Veneris. You are shown in to see the chief
administrator, who welcomes you freely. He can heal you of all
lost Stamina points and cure you of a disease or poison free of
charge. He cannot, however, lift a curse.
‘Whenever you need help, come to me!’ he says.
+[Choose this when you are ready] ->paragraph_100

===paragraph_115===
//come back 
->DONE
===pargraph_116===
{
-paragraph_116_visited:
 ->paragraph_332
 -else:
 You realize the creature is one of the legendary repulsive
ones. It is swimming past you, intent on its own business, so you
follow it, in the hope it will lead you to the sunken city of
Ziusudra. 
->paragraph_547
}
===paragraph_117===
~temp charisma_roll = 0
There are several people with eyepatches but none with a velvet
one. You ask around among the taverns and bars of the rougher
areas in Caran Baru. 
~diceRoll (charisma, charisma_roll)
{charisma >=11}
~charisma -=charisma_roll
->paragraph_149
{charisma <11}
~charisma -=charisma_roll
->paragraph_468

===paragraph_118===
The overseer of the mines is a fat, cruel-looking man. He
welcomes you with a promise, ‘In one month, you’ll be dead,
slave.’
You spend the next few weeks in chains, working 15 hours a
day, deep underground, digging at a rock face in the tunnels of
the mines in the Bronze Hills. You are fed on gruel and black
bread. You realize you will not live long down here and that
you must escape if you are to survive.
{
-ashen:
->paragraph_351
-else:
->paragraph_565
}

===paragraph_119===
~ashen = true
~temp combat_roll = 0
You hear the shouts from outside, muffled by the swirling
sulphurous fog. A stab of icy panic pulses at your heart, and an
instant later the door bursts open. Three militiamen armed with
maces burst through the doorway. Behind them, a tall
cadaverous gentleman wrapped in a cape is stamping in fury.
‘A thief in my house!’ he rages. ‘Do your duty!’
You realize the truth: Lauria has used you as a decoy to
cover her escape. You’ll get even later – if you survive.
The militiamen race forward to seize you.
~diceRoll (combat, combat_roll)
{combat >=12}
~combat -=combat_roll
->paragraph_588
{combat <12}
~combat -= combat_roll
->paragraph_96 

===paragraph_120===
You ship is sailing in the coastal waters off the Shadar Tor. You
can just see the tor, a jumbled mass of rocks, sitting on the
clifftops as it has done for a thousand years. 
~temp x = RANDOM (2, 12)
{
 -x >=2 && x <=4:
 Storm
 ->paragraph_324
 -x >=5 && x <=9:
 ->paragraph_559
 An uneventful voyage 
 ->paragraph_559
 -x >=10 && x<=12:
A merchant ship
->paragraph_207
}

===paragraph_141===
The Temple of Maka, the terrible goddess of disease and famine,
is a large underground chamber accessible via an ornate entrance
in the middle of the Plaza of the Gods, where all the temples
stand in Yellowport.
Down below, the walls are bare earth; the ceiling is covered
in the roots of growing plants, for Maka is also the goddess of
the harvest, who must be kept happy else disease and famine will
strike the people, their crops and their livestock, bringing ruin to
all.
+[Become an initiate] ->paragraph_368
+[Renounce her worship] ->paragraph_261
+[Seek a blessing] ->paragraph_481
+[Ask to be cured of disease or poison]   ->paragraph_77
+[Leave the temple]   ->paragraph_10

===paragraph_142===
All shipping in and out of Marlock City must come through the
offices of the harbourmaster. Here you can buy passage to far
lands, or even a ship of your own, to fill with cargo and crew.
You can buy one-way passage on a ship to the following
destinations:
+[Yellowport, cost 10 Shards]
~Shard -= 10
->pargraph_372
+[Wishport, cost 15 Shards]
~Shard -= 15
->pargraph_455
+[Sorcerer’s Isle, cost 30 Shards]
~Shard -= 30
->pargraph_234
+[Copper Island, cost 30 Shards]
~Shard -= 30 
->pargraph_424
//come back to make inclickable

===paragraph_143===
~temp fee = 40
To renounce the worship of Elnir, you must pay 40 Shards to
the priesthood by way of compensation. A passing noble says
disdainfully, ‘Ha! Only those born to rule have the fibre to
worship the Sky Lord. Those who renounce Elnir never reach
the top!’
Do you want to change your mind? If you are determined to
renounce your faith, pay the 40 Shards.
+[Pay {fee} Renounce the worship of Elnir]
~worship_of_elnir = false
->YouAreFinished
-(YouAreFinished)
+[Choose this when you have finished here]
->paragraph_316

===paragraph_144===
~temp sanctity_roll = 0
You call on the powers of the gods, to banish this foul,
blasphemous travesty of life. The Ghoul shrinks back for a
moment, snarling. 
~diceRoll (sanctity, sanctity_roll)
{sanctity >= 10}
~sanctity -= sanctity_roll
->paragraph_223
{sanctity <10}
~sanctity -= sanctity_roll
->paragraph_289

===paragraph_145===
{
-rat_poison:
~combat +=3
~rat_poison = false
}
King Skabb gives a cry of anger, and leaps at you in desperation,
swinging a spiked mace in his hand. You must fight him, adding
3 if you have some rat poison to put on your weapon.
King Skabb, COMBAT 5, Defence 7, Stamina 10
//combat mechanic
+[You lose] -> paragraph_You_Die
+[You win]
->paragraph_554

===paragraph_146===
He seems to see something he approves of because he says,
‘Perhaps. But first you must prove yourself. There is a knight, a
man of great evil. He is known as the Black Dragon Knight –
defeat him in battle and I will teach you. Bring me back his
black dragon shield as proof of your valour.’ With that he
turns and walks away.
‘But how will I find him? And then how will I find you?’
you cry.
‘Would you have me kill him for you as well?’ he asks over
his shoulder. ‘As for the second, ask for me in the Blue Griffon
Tavern in Caran Baru. My name is Yanryt the Son.’
~axe = true
->paragraph_412

===paragraph_147===
An old troubadour tells an epic tale of adventure and romance
involving three heroes, a princess and a dragon. Afterwards you
find yourself talking to him at the bar. He tells you about the
time he was captured by the Manbeasts of Nerech, and that by
soothing their savage ferocity with music, he was able to escape.
{
-trubadour:
->paragraph_469
-else:
->paragraph_100
}

===paragraph_148===
‘Stop, stop, I surrender!’ yells the tree. You cease your attack. ‘I
guess you can pass, in view of recent events!’ it says grudgingly.
Then it uproots itself with a great tearing sound, and shuffles out
of the way. ‘There you go!’ mutters the tree, ‘You can
blooming well pass.’
~apple = true
You walk through the thorn bush gate. Beyond, you find
several huge oak trees whose branches are so big that they are
able to support the homes of many people.
->paragraph_358

===paragraph_149===
A man accosts you as you are leaving a tavern. His breath reeks
of rotting teeth, and his ear has been cut off – the mark of a man
punished for piracy.
‘Give me 10 Shards and I will tell you what you want to
know,’ he says.
+[Pay the money]
~Shards -= 10
->paragraph_533
+[Refuse to pay]
->paragraph_468

===paragraph_150===
~Shards -=10
Cross off the 10 Shards. You get a berth on a merchantman
headed for Marlock City. It is a trouble-free journey.
‘I pay everyone off – the Sokarans, the pirates,’ says the
captain. ‘That way I get left alone.’
You disembark in Marlock City.
->paragraph_100

===paragraph_161===
The governor is a seasoned veteran of many battles, a hardy
man. He is quick to react, and calls his guards before you can kill
him. You are subdued by sheer numbers.
‘Take this dirty rebel assassin to the dungeons!’ sneers
Marloes Marlock.
The guards take all your money and possession.
~Shards = 0
// don't know how to get rid of possessions
->paragraph_454

===paragraph_162===
~temp thievery_roll = 0
With the golems out of the way, you can get on with business.
You reach forward to strip the armour off the idol of Tyrnai.
~diceRoll (thievery, thievery_roll)
{
-thievery >= 12:
~thievery -= thievery_roll 
->paragraph_509
-else:
~thievery -= thievery_roll
->paragraph_228
}

===paragraph_163===
You hold up the pirate captain’s head. The guildmaster looks
up expectantly, but his face quickly darkens.
‘This is not Amcha!! Everyone knows he has only one eye –
this poor fellow is probably some beggar you killed in an alley
somewhere. You think you can swindle the guild with this
pathetic ruse! Out! Get out! And don’t come back until you
bring me the head of Amcha One-Eye!’
The guildmaster has you removed by his guards, and you are
dumped into the street.
->paragraph_100

===paragraph_164===
~temp thievery_roll = 0
~temp scouting_roll = 0
The dank tunnels, running with rivulets of foul water, take you
deeper into the unknown. You mark the twisting passages with
chalk so that you can find your way back.
Shortly, you come out into a large, rough-hewn cavern,
wreathed into shadows that dance and flicker in the light you
have brought.
A sound makes you start in surprise.
+[Use your thievery skills] 
    ~diceRoll (thievery, thievery_roll)
    {
       - thievery >=11:
       ~thievery -=thievery_roll
        ->paragraph_247
        -else:
        ~thievery -=thievery_roll
        ->paragraph_42 
    }    
 +[Use your scouting skills]
      ~diceRoll (scouting, scouting_roll)
    {
       - scouting >=11:
       ~scouting -= scouting_roll
        ->paragraph_247
        -else:
        ~scouting -= scouting_roll
        ->paragraph_42    
    }

===paragraph_165===
A Sokaran war galley hails you and draws up alongside. ‘We’re
coming aboard for an inspection!’ yells the captain of the galley.
His men attempt to grapple your ship.
+[Let them] ->paragraph_552
+[Try to escape] ->paragraph_444

===paragraph_166===
You are on the road between Marlock City and the Shadar Tor.
Along most of the length of the road, a thin sliver of a shanty
town has grown up. Tents and lean-to’s line the way. You find
out that the people living here are refugees from Trefoille. The
city was burnt to the ground during the recent civil war, in
which the old king was overthrown. 
~temp x = RANDOM (1, 6)
{
-x >=1 && x <=2:
A pick-pocket! You lose 10 Shards
~Shards -=10
-x >=2 && x <=3:
Nothing happens
-x >=5 && x<=6:
You find a lantern by the side of the road.
~lantern = true
}
+[Go to Marlock City] ->paragraph_100
+[Head for the Shadar Tor] ->paragraph_35

===paragraph_167===
You lose your pursuers in the treacherous rocky passes of the
mountains. Eventually, you reach the safety of the foothills.
->paragraph_474

===paragraph_168===
As you stretch out your hand, you loose your footing, and
plummet to the ground, right between the two golems! They
turn their heads with a grating rumble, and open their mouths to
speak. The sound that comes out is a bell-like gonging that alerts
the temple. You pick yourself up and fall back on the last resort
of a rogue – running for your life! Warrior priests swarm out of
the temple in pursuit.
~temp x = RANDOM (1, 6)
~x -=1 
{
-x <=rank:
->paragraph_395
-else:
->paragraph_551
}

===paragraph_169===
{
 -visited_paragraph_169:
 ->paragraph_443
 -else:
 You see a couple of Sokaran warships, pursuing two other
ships. Your first mate says, ‘See the Red Pennants on them thar
ships? They be pirates, running from the Sokarans!’
~visited_paragraph_169 = true
+[Help the Sokarans]->paragraph_286
+[Help the pirates]->paragraph_394
+[Ignore the battle]->paragraph_443

}

===paragraph_190===
~temp x=RANDOM (2, 12)
You are sailing along the coast off Blessed Springs and Fort
Brilon. Gulls cluster around the ship, looking for food. Their
cries echo across the vast seas. 
{
-x >=2 && x <=4:
Storm
->paragraph_38
-x >=5 && x<=9:
An uneventful voyage 
->paragraph_209
-x >=10 && x<=12:
A shipwreck
->paragraph_504
}

===paragraph_191===
The provost marshal is a rich and powerful man, cunning and
capable.
‘I have need of someone like you,’ he says. ‘A group of
rebels, loyal to the old king, are hiding out in the Coldbleak
Mountains. Their leader, Nergan Corin, is dangerous to us, as
he is heir to the old throne and a rallying point for the rebels.
Penetrate their stronghold and slay Nergan Corin, and you will
be richly rewarded. I can promise you 500 Shards and a title if
you succeed.’
+[Take the mission]
~artery = true
{
-ambuscade:
->paragraph_375
-else:
 The provost marshal dismisses you.
->paragraph_10
}
+[Do not take the mission]
{
-ambuscade:
->paragraph_375
-else:
 The provost marshal dismisses you.
->paragraph_10
}

===paragraph_192===
During your short trip upward, the old man regales you with
tales of your destiny and fate, continuously arguing with himself
as he does so.
You reach a hill covered with a circle of large obsidian
standing stones. Despite the bitter wind that blow across these
hills the stones are unweathered and seem almost newly lain.
‘Here are the Gates of the World.’ says the mad old man.
The stones are laid in such a way that they form three
archways, each carven with mystic symbols and runes of power.
‘Each gate will take you to a part of the world of Harkuna,
though I know not where,’ explains the old man. Abruptly, he
turns around and sets off down the hill, babbling to himself. His
voice fades as he descends the hill, leaving you alone with the
brooding stones and the howling wind. 
->paragraph_65

===paragraph_193===
You find yourself washed up on a rocky shore, battered and
cold, but alive. You head inland until you come to a road. 
->paragraph_621

===paragraph_194===
You know what the strange swellings on the dead bodies mean.
They have been injected with the eggs of the ker’ilk, hideous
lobster-like beings of the deep. Soon the eggs will hatch, and the
young will feed on the bodies of the sailors. You also know that
the adults never stray far from their eggs, and warn your men
that the ker’ilk are nearby.
Your warning is timely – several horriffic-looking creatures,
like giant lobsters, all spines and pincers, surge out of the waters.
Your men, however, are ready. A battle ensues – you must fight
one of the creatures.
Ker’ilk, COMBAT 4, Defence 9, Stamina 8
//combat

+[You win] ->paragraph_519
+[You lose] -> paragraph_You_Die

====paragraph_195===
~aspen = true
The Trading Post is a small village, set up here by
enterprising settlers from the mainland. Its main export appears
to be furs from the forest.
The Mayor, a fat genial fellow, who greets you personally,
insists that one day the Trading Post will be a thriving town.
There is not a lot here yet, however: a small market, a quay, the
settler’s houses, and a shrine to Lacuna the Huntress, goddess of
nature.
+[Visit the shrine to Lacuna] ->paragraph_544
+[Visit the market] ->paragraph_452
+[Visit the quayside] ->paragraph_332
+[Visit the Green Man Inn] ->paragraph_181
+[Climb the hill that overlooks the town] ->paragraph_11
+[Go inland, into the Old Forest] ->paragraph_257

===paragraph_196===
If you were wounded by the ghoul you have been infected with
a disease (Ghoulbite).
~ghoulbite = true
You
must subtract one from your SANCTITY, COMBAT and
CHARISMA abilities (no ability can drop below one). If you were
already suffering from Ghoulbite, there are no further effects. In
any case, you hack of the hideous head and leave.
~ghouls_head = true
->paragraph_100

===paragraph_197===
~temp fee = 0
{
-inititate:
    ~fee = 10
-else:
    ~ fee = 30
 }    
The blessing of Sig costs 10 Shards if you are an initiate, 30
Shards otherwise.
 The blessing works by allowing you to reroll any failed
THIEVERY attempt once. 
 You can then make a second try at the
roll. You can have only one blessing for each ability at any one
time.
 Once your THIEVERY blessing is used up, you can return
to any branch of the temple of Sig to buy a new one.

+[Pay {fee} Shards and get the blessing]
~Shards -= fee
~blessingOfSig = true
->YouAreFinished
-(YouAreFinished)
+[Choose this when you are finished here]
->paragraph_235

===paragraph_198===
Musing to yourself about the strange woman, you pause at the
end of an alleyway to buy roast chestnuts as you watch her
striding off into the evening smog enveloping the city.
‘That’ll be a Shard,’ grunts the chestnut vendor.
You reach for your money pouch. Then your hands fumble in
panic. The pouch has gone! After a moment the truth dawns on
you. You stare grimly in the direction that the black-garbed
woman went, but there is no sign of her now.
‘I’ll have them chestnuts back then!’ growls the vendor when
he sees you can’t pay.
~Shards = 0
->paragraph_10

===paragraph_199===
{
-visited_paragraph_199:
->paragraph_634
-else:


A strange, vaguely humanoid shape, flickering with energy,
soars down to attack you. You must fight.
Storm Demon, COMBAT 3, Defence 6, Stamina 8
If you win, it fades away, leaving a clear blue jewel, worth 200
Shards.
+[You win]
~Shards +=200
->paragraph_658
+[You lose]
->paragraph_You_Die
}

===paragraph_200===
You have acquired an old map of the Forest of the Forsaken in
Golnir (in Cities of Gold and Glory), showing a safe path that
leads to the Tower of Despair. It seems to conflict with the
location of the Tower on your own map of Golnir from Cities of
Gold and Glory. Which is correct?
This map is the fourth map included in the Map Pack
document. As long as you retain this treasure map, you may
peruse it at will. Should you lose or sell the treasure map
however, you should then no longer consult the map of the
Forest of the Forsaken.
->paragraph_30

===paragraph_201===
The road between the Citadel and Caran Baru is chock-a-block
with troops and carts. It looks like there is a war in the north.
+[Head for the citadel] ->paragraph_271
+[Go south to Caran Baru] ->paragraph_400
+[Head west] ->paragraph_276
+[Head east] ->paragraph_60

===paragraph_202===
Gingerly, you open the door. It leads to a curtained alcove,
through which you observe the room beyond. It is a long, low
hall – clearly an ancient Uttakin temple, from a time when the
Masked Lords of Uttaku ruled all of Harkuna, but now part of
the sewers of Yellowport.
A cheap wooden chair has been placed on the altar to act as a
throne. On it sits a large and extremely ugly ratman. He has a
tacky amulet around his neck, and a rusty iron hoop for a
crown. About four ratmen are kneeling before him, engaged in
conversation.
‘But, Skabb...’ one of the rat men is saying.
‘That’s Great King Skabb to you, dung-breath!!’ bellows the
rat on the throne.

+[Charge in to the attack] ->paragraph_428
+[Sneak in to assassinate the king] ->paragraph_595
+[Use sorcery to get close to Skabb] ->paragraph_24
+[Bluff your way in] ->paragraph_336

===paragraph_203===
You can hire a fishing boat for 15 Shards a day. It comes with a
fishing net.

+[Pay 15 Shards abd go fishing]
~Shards -=15
->paragraph_267
+[Don't go fishing]
->paragraph_135

===paragraph_204===
There are simply too many of them, and you are beaten into
submission. Your end is grisly indeed – killed, boiled with herb
and garlic, and eaten by the cannibal cultists of Badogor the
Unspoken! Your adventures end here – unless you have a
resurrection deal.
->paragraph_You_Die

===paragraph_205===
The runes are written in Old Shadar, an ancient language from
thousands of years ago. You realize that the runes form a spell
that will give you the power to breathe underwater for a few
hours.

+[Use the spell and swim out to sea] ->paragraph_493
+[Go down to the beach] ->paragraph_97
+[Take the road to Trefoille] ->paragraph_602
+[Take the road to Marlock City] ->paragraph_166

===paragraph_206===
The crew absolutely refuses to sail into the Unbounded Ocean.
‘There’s no land out there, and the seas are infested with
Demons of the Deep – if we go to far, we’ll fall of the edge of
the world!’ says the first mate.
You have no choice but to reconsider your destination.
->paragraph_507

===paragraph_207===
{
-visited_paragraph_207:
->paragraph_137
-else:
~visited_paragraph_207 = true
The look-out cries, ‘Ship on the starboard bow!’
You spot a crippled merchant ship, limping towards Marlock
City. It looks like a trading vessel from the Feathered Lands.
+[Assist] ->paragraph_293
+[Attack] ->paragraph_464
}

===paragraph_208===
Using your sorcerous powers you breathe a cloud of greenish
vapour over the ratmen. Coughing and gasping, they sink into
an enchanted slumber – all but King Skabb. Standing on the
altar, he is able to keep his head above the vapours.
->paragraph_145

===paragraph_209===
You are sailing in the coastal waters off Fort Brilon, and Blessed
Springs.

+[Sail north along the coast of Nerech] ->paragraph_249
+[Sail south to Scorpion Bay] ->paragraph_430
+[Sail east into the Sea of Whispers] ->paragraph_136

===paragraph_210===
They fall back for a moment, but your invocation fails to take
hold, and they close in. You must fight them one at a time.
1st Storm Demon, COMBAT 4, Defence 7, Stamina 8
2nd Storm Demon, COMBAT 4, Defence 7, Stamina 8
3rd Storm Demon, COMBAT 4, Defence 7, Stamina 8
+[You win]
->paragraph_54
+[You lose] 
->paragraph_You_Die

===paragraph_211===
~ temp thievery_roll = 0
When he emerges, you are waiting for him.
    ~diceRoll (thievery, thievery_roll)
    {
       - thievery >=11:
       ~thievery -= thievery_roll
        -> paragraph_58
        -else:
        ~thievery -= thievery_roll
        -> paragraph_304 
    }
===paragraph_212===
You are dissolved in the acid, until all that is left of you is a pile
of yellow dust. Vayss scoops you up and puts you into a bottle
on his shelf. 
~Shards =0
//don't know how to get rid of the possessions
->paragraph_31

===paragraph_213===
Each creature bursts open in death, spilling a black empty cloud
into the water. The sac in which this ink is kept falls free from
its body. You can take the ink sacs if you wish. You also find coral
jewellery worth about 45 Shards that you can take as cash. You
swim down and take the golden net and swim for the Shadar Tor as fast as you
can.
~Shards +=45
+[Don't take the ink sac and take the road to Trefoille] 
-> paragraph_602
+[Don't take the ink sac and take the road to Marlock City] ->paragraph_166
+[Take the ink sac and take the road to Trefoille]
~ink_sac +=1
->paragraph_602
+[Take the ink sac and take the road to Marlock City]
~ink_sac += 1
->paragraph_166

===paragraph_214===
You try to stop the panic, but your men are too far gone. They
are already diving over the side, trying to swim back to your
ship. Unfortunately, they are even more vulnerable in the sea,
and the ker’ilk take them at will. Soon you are all overwhelmed,
and you are taken alive to be injected with eggs – a most
horrible end.
Your adventures are over, unless you have resurrection deal
with a temple.
->paragraph_You_Die

===paragraph_215===
Caran Baru market consists of several covered arcades – much of
its stock is for miners and soldiers, and it is run with business-
like efficiency by the Sokaran military. Items with no purchase
price are not available locally.
ArmourTo buyTo sell
Leather (Defence +1)50 Shards45 Shards
Ring mail (Defence +2)100 Shards90 Shards
Chain mail (Defence +3)200 Shards180 Shards
Splint armour (Defence +4)400 Shards360 Shards
Plate armour (Defence +5)800 Shards720 Shards
Heavy plate (Defence +6)– 1440 Shards
Weapons (sword, axe, etc )To buyTo sell
No COMBAT bonus50 Shards40 Shards
COMBAT bonus +1250 Shards200 Shards
COMBAT bonus +2500 Shards400 Shards
COMBAT bonus +3–800 Shards
Magic al equipmentTo buyTo sell
Amber wand (MAGIC +1)500 Shards400 Shards
Ebony wand (MAGIC +2)–800 Shards
Cobalt wand (MAGIC +3)– 1600 Shards
Other itemsTo buyTo sell
Mandolin (CHARISMA +1)300 Shards270 Shards
Lockpicks (THIEVERY +1)–270 Shards
Holy symbol (SANCTITY +1)–100 Shards
Compass (SCOUTING +1)500 Shards400 Shards
Rope50 Shards45 Shards
Lantern100 Shards90 Shards
Climbing gear100 Shards90 Shards
Bag of pearls–100 Shards
Rat poison60 Shards50 Shards
Silver nugget–150 Shards
//shop in unity 
 
 +[Choose this when you have finished]
 ->paragraph_400

===paragraph_216===
The cry goes up throughout the palace, ‘Murder! Assassin!’ and
the hunt is on – for you. 

~temp x = RANDOM (1, 6)
{
-rogue || wayfarer || trubadour:
~x -=1
}
{
-x <=rank:
->paragraph_407
-else:
->paragraph_566
}

===paragraph_217===
You come across a forest glade. Birds twitter in the trees, and
woodland animals frolic playfully about. In the middle of the
glade stands a mighty willow, ancient beyond reckoning. The
trunk is hollow, and a wooden door has been set in the
entrance. You step into the glade.

~ temp sanctity_roll = 0
When he emerges, you are waiting for him.
    ~diceRoll (sanctity, thievery_roll)
    {
       - sanctity >=9:
       ~sanctity -= sanctity_roll
        -> paragraph_356
        -else:
        ~sanctity -= sanctity_roll
        -> paragraph_646 
    }

===paragraph_218===
The militia take you alive. You lose all your money and
possessions. Then you are
thrown into the dungeons of Yellowport.
~Shards = 0
//don't know how to get rid of the possessions
->paragraph_454

===paragraph_219===
Your ship, crew and cargo are lost to the deep, dark sea. Cross
them off your Adventure Sheet.
//don't know how to get rid of the possessions
 Your only thought now is to
save yourself. 
~temp y = RANDOM (1, 6)
~temp x = RANDOM (2, 12)
{
-x <=rank:
 You manage to find some driftwood, and
make it back to shore. 
~stamina -= y
->paragraph_436
-else:
->paragraph_You_Die
}

===paragraph_220===
The temple of Alvir and Valmir is built like an upside-down
galleon. Alvir and Valmir are brother and sister, King and Queen
of the Land beneath the Waves, masters of the sea. Their
servants and soldiers are the souls of the drowned, and when seas
are rough and storm-tossed, sailors say that Alvir and Valmir are
arguing again.
{
-anchor:
->paragraph_531
-else:
 You notice a sign on the temple door, which
says: ‘Wanted: brave adventurer – apply to the high priest.’
+[Become an initiate]-> paragraph_294
+[Renounce worship]-> paragraph_624
+[Seek a blessing]-> paragraph_448
+[Talk to the high priest]-> paragraph_411
+[Leave the temple]-> paragraph_10
}

===paragraph_221===
One of the militiamen recognizes you and shouts, ‘That’s the
one who assassinated Marloes Marlock! Get him!’
You turn tail and flee with fifteen militiamen on your heels.
~temp y = RANDOM (1, 6)
{
-x <=rank:
->paragraph_57
-else:
->paragraph_252
}

===paragraph_222===
Your ship is sailing in the coastal waters near Marlock City. 

~temp x = RANDOM (2, 12)
{
 -x >=2 && x <=4:
 Storm
 ->paragraph_124
 -x >=5 && x <=9:
 ->paragraph_559
 An uneventful voyage 
 ->paragraph_420
 -x >=10 && x<=12:
Sea battle
->paragraph_169
}

===paragraph_223===
The ghoul staggers back, howling at the night sky, and gnashing
its teeth. Suddenly, brownish ichor spills from its eyes and the
flesh begins to shrivel on its bones. It collapses in on itself,
leaving only a mound of putrescent matter, atop of which rests
its head, now lifeless, empty eye-sockets staring at the moon.
You grab the head, and set off. 
~ghouls_head = true
->paragraph_100

===paragraph_224===
Using your wilderness-honed sense of direction you dart
through the maze of tunnels. Soon the sounds of pursuit fade,
until they are but a dim echo. Heaving a sigh of relief, you press
on. 
->paragraph_580

===paragraph_225===
You find a cave, with piles of human bones outside it. However,
it is quite empty without signs of habitation – the beast that lived
here is dead or departed. You make your way back down to
Blessed Springs.
->paragraph_510

===paragraph_226===
You take a stroll through the streets – Marlock City has a busy
night life.

+[Explore the barracks area]  ->paragraph_15
+[Go to the Street of Entertainers] ->paragraph_129
+[Search the residential quarter] ->paragraph_619

===paragraph_227===
~Shards -=5

 The mad beggar takes the money and
swallows the lot in one gulp. ‘A gourmet meal!’ he babbles.
+[Bless him]
->paragraph_632
+[He wanders off ranting and you head back to the city centre]
->paragraph_105

===paragraph_228===
~temp sanctity_roll = 0
A stone slab at the base of the idol shifts ominously as you put
your foot on it. A wickedly barbed spear springs out of the
ground, straight into your leg. 
~stamina -=5
You remove the chain mail and sling it over
your shoulder.
You get the gold chain mail of Tyrnai
~goldChainMailOfTyrnai = true
Because it is made of gold, it is useless if worn
as armour.
As you glance at the jaguar-headed idol, its eyes seem to turn
to look at you. 

~diceRoll (sanctity, sanctity_roll)
         {
       - sanctity >=8:
       ~sanctity -= sanctity_roll
        ->paragraph_625
        -else:
        ~sanctity -= sanctity_roll
        ->paragraph_279
        }    

===paragraph_229===
The guildmaster welcomes you warmly. He has no further
missions for you, though he treats you with respect because you
brought Amcha to justice. If you are completely broke, without
a Shard in your pocket or in the bank, he will give you 200
Shards. If you have any money at all, he will not help. 
    {
    -Shards >=1:
     ~Shards += 200
     ->paragraph_100
     -else:
     ->paragraph_100
     }

===paragraph_230===
You are caught in a narrow defile, and seized by many men.
You are hauled before Captain Vorkung, who sentences you to
be hanged. Sentence is carried out immediately. Your
adventures are over, unless you have a resurrection deal.
If you do have a resurrection deal, turn to the paragraph you
have noted. Also, through a quirk of magical fate, somehow the
royal ring has travelled with you through the lands of the dead.
->paragraph_You_Die
//to be done later

===paragraph_231===
You notice that the figures have left footprints on the damp grass
and cannot, therefore, be ghosts.
+[Step out and confront the figures] ->paragraph_23
+[Stay hidden and follow when they leave] ->paragraph_541

===paragraph_232===
    {
        - visited_paragraph_232:
        -> paragraph_151
    - else:
        ~visited_paragraph_232 = true
      The interior of the cave is cool and refreshing, a     paradise
    compared with the savage heat of your gruelling climb. You     find
    a man, floating cross-legged in the middle of the air! He     is
    dressed only in a loincloth, and is painfully thin. His     face is
    shrouded in a great luxuriant growth of glossy black hair,     a beard
    like no other you have ever seen.
    At the sight of you, he gives an exasperated sigh, and says    , ‘I
    am Damor the Hermit. A HERMIT. That means I like to live
    alone – got that? Alone! So go away!’
    ‘I nearly died getting here, old man!’ you reply testily.
    ‘Yes, you’d have to be pretty tough to get through the     curse
    I put on the path, I suppose,’ he says somewhat     apologetically.
        {
        -anthem:
        ->paragraph_285
        -else:
        ->paragraph_480
        }
    }

===paragraph_233===
 {
        - visited_paragraph_233:
        -> paragraph_412
    - else:
        ~visited_paragraph_233 = true
You are on the cobbled road between Yellowport and
Trefoille. It is well-kept by the Sokaran military.
You spot a man up ahead, striding towards you. Suddenly,
five or six bandits appear from the wayside to assault him. The
lone figure executes a series of movements, almost faster than the
eye can see, and you see his sword flashing in the sun. Moments
later, the bandits are all lying dead or dying around him.
You stop to compliment him on his swordsmanship.
The man, a grizzled veteran of many campaigns, regards you
with steely grey eyes and says, ‘I have learned much of the arts
of war in my time, it is true.’
Impressed by his skill and demeanour, you venture to ask
him to teach you some of these arts. He looks you up and down
with a critical eye.
        {
        -warrior:
        ->paragraph_146
        -else:
        ->paragraph_567
        }
    }

===paragraph_234===
The ship’s captain says, ‘I’ll take you to Dweomer, on the
Sorcerer’s Isle but it’s a dangerous place. You’d better be sure
you can handle it – if you’re not at least a Master of your
profession, I’d advise against it. It’s up to you though.’
You must have Over the Blood-dark Sea to travel to Sorcerer’s
Isle. 

+[Treavel to Sorcerer's Isle] -> OverTheBloodDarkSea_paragraph_26
+[Choose this option if you are in the Marlock City] ->paragraph_142
+[Choose this option if you are in Yellowport]
-> paragraph_555

===paragraph_235===
The temple of Sig the Cunning, patron of vagabonds,
troubadours, lovers, thieves and rogues, is a ramshackle
warehouse in the poor quarter. Inside, however, there is so
much wealth it makes you gasp – the idol of Sig, a saturnine
two-faced young human of indeterminate sex, is covered in
gems.
‘As you can see, we have been made rich by generous, er,
donations!’ says a black-robed priest.

Seek an audience with the high priestturn to 113
+[Become an initiate] ->paragraph_437
+[Renounce worship] ->paragraph_563
+[Seek a blessing] ->paragraph_197
+[Leave the temple] ->paragraph_100

===paragraph_236===
You find Fourze inside, desperately trying to get out of his suit
and run off. At the sight of a hardened adventurer, rather than a
timid villager, he surrenders and confesses all. He terrified people
with the monster disguise to keep them away from the farm. He
and his men were kidnapping villagers, chaining them in the
cellar below and selling them to a slaver from Caran Baru, for
work in the slave mines. You find Haylie and several other
villagers down below in the cellar.
‘Don’t hurt me,’ begs Fourze, ‘I’m only trying to make a few
Shards.’
‘What! By selling your own people into slavery,’ says one of
the villagers, giving him a good kick.
You lead them back to Venefax.
->paragraph_414

===paragraph_237===
You explain what a tree-lover you are, and that your heart has
always been at home in forests. You portray yourself as the
greenest adventurer ever.








===OverTheBloodDarkSea_paragraph_55===
Over the Blood-Dark Sea is another book in Fabled Lands series and is currently unavailable. Please go back and choose another option.
*[Turn back] -> paragraph_13.YouWentBack
===OverTheBloodDarkSea_paragraph_99===
Over the Blood-Dark Sea is another book in Fabled Lands series and is currently unavailable. Please go back and choose another option. ->DONE

===OverTheBloodDarkSea_paragraph_26===
Over the Blood-Dark Sea is another book in Fabled Lands series and is currently unavailable. Please go back and choose another option.
*[Turn back] -> paragraph_234

















