VAR deliver = false
VAR Shards = 0
VAR trident = false
VAR climbing_gear = false
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
{deliver: -> paragraph_98|The soldier recognizes you.  He bows and says, ‘Welcome, my lord. I will take you see King Nergan. ’He leads you to Nergan’s mountain stockade, where the king greets you warmly. ‘Ah, my local champion!  It is always a pleasure to see you. However, I was hoping you had spoken with General Beladai of the allied army – we need that citadel. Now go. That is a royal command! ’You leave, climbing down to the foothills of the mountains.}
+[Go to the Mountains] -> paragraph_474

===paragraph_3===
You have come to the foothills of the Spine of Harkun, in the north west of Sokara. The view is impressive: a massive wall of forested mountains, whose rocky, white-flanked peaks soar skywards into the clouds.  These parts of the mountains are unclimbable but you notice a large cave at the bottom of a mountain.
+[Investigate the cave] ->paragraph_665
+[Go east to the citadel of Velis Corin] ->paragraph_271
+[Go south into the wilderness] ->paragraph_276

===paragraph_4===
The priests of Alvir and Valmir are overjoyed that you have returned the golden net. The high priest rewards you with 100 Shards and a magic weapon, a rune-engraved trident.
    ~ Shards = Shards + 100
    ~ trident = true
->paragraph_220

===paragraph_5===
It is a tough climb upwards but not impossible.
{climbing_gear} +[You have climbing gear. You climb with ease] -> paragraph_652
{climbing_gear = false} +[Despite the danger you try to climb] {~1|2|3|4|5|6|7|8|9|10|11|12} 














