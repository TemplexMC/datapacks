execute as @s[scores={Tutorial=1}] run tag @s add Tut1
execute as @s[scores={Tutorial=2}] run tag @s add Tut2
execute as @s[scores={Tutorial=3}] run tag @s add Tut3
execute as @s[scores={Tutorial=4}] run tag @s add Tut4
execute as @s[scores={Tutorial=5..}] run tag @s add WTut

execute as @s[tag=Tut1] run tellraw @s [{"text":"\u00A77-- Tutorial Page 1 of 4 --\n\u00A7dWelcome to \u00A73Templex\u00A78!\n\u00A73Templex \u00A7dis a decently populated \u00A7bVanilla \u00A7cSurvival \u00A77Server\u00A78.\n\u00A7dThe whole purpose of our server is to allow players to enjoy survival with a community of people\u00A78.\n\u00A7dTo get started\u00A78...\n\u00A7b1st\u00A78: \u00A7dType \u00A78'\u00A7a/trigger Rules set 1\u00A78' \u00A7dto see the \u00A7crules\u00A78.\n\u00A7b2nd\u00A78: \u00A7dType \u00A78'\u00A7a/trigger RTP set 1\u00A78' \u00A7dto get randomly teleported\u00A78.\n\u00A7b3rd\u00A78: \u00A7dType \u00A78'\u00A7a/trigger SpawnPoint set 1\u00A78' \u00A7dto set your spawn\u00A78.","color":"light_purple"},{"text":"\n\u00A7cIf you wish to view other pages, just type \u00A78'\u00A7a/trigger \u00A7aTutorial \u00A7aset \u00A78' \u00A7cthen put the page number you wish to view.","color":"red"}]
execute as @s[tag=Tut1] run tellraw @a[tag=OP] [{"text":"Tutorial System","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Just showed ","color":"red"},{"selector":"@s"},{"text":" Tutorial Page 1 of 4!","color":"red"}]

execute as @s[tag=Tut2] run tellraw @s [{"text":"\u00A77-- Tutorial Page 2 of 4 --\n\u00A7dThis is strictly a \u00A7csurvival \u00A77server\u00A78; \u00A7dthis means you can only play survival\u00A78.\n\u00A7dPlease\u00A78, \u00A7ddo not ask for creative or items from creative\u00A78.\n\u00A7dHow do you play \u00A7csurvival\u00A78?\n\u00A7dYou use the steps on the previous page\u00A78, \u00A7dthen harvest materials\u00A78, \u00A7dbuild a house\u00A78, \u00A7dand enjoy the server\u00A78!","color":"light_purple"},{"text":"\n\u00A7cIf you wish to view other pages, just type \u00A78'\u00A7a/trigger \u00A7aTutorial \u00A7aset \u00A78' \u00A7cthen put the page number you wisou wish to view.","color":"red"}]
execute as @s[tag=Tut2] run tellraw @a[tag=OP] [{"text":"Tutorial System","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Just showed ","color":"red"},{"selector":"@s"},{"text":" Tutorial Page 2 of 4!","color":"red"}]

execute as @s[tag=Tut3] run tellraw @s [{"text":"\u00A77-- Tutorial Page 3 of 4 --\n\u00A7dYou get \u00A7cKarma \u00A7das you play\u00A78: \u00A7dEvery \u00A765 \u00A7dminutes you get \u00A762 \u00A7cKarma Points\u00A78.\n\u00A7dYou also rank up as you play\u00A78: \u00A7dYou get \u00A7aNew \u00A7aComer \u00A7dupon join\u00A78, \u00A7dyou get \u00A78Warrior \u00A7dat \u00A767 \u00A7dhours\u00A78, \u00A7dExplorer at \u00A7617 \u00A7dhours\u00A78, \u00A75Master \u00A7dat \u00A7622 \u00A7dhours\u00A78, \u00A79Knight \u00A7dat \u00A7644 \u00A7dhours\u00A78, \u00A76Magician \u00A7dat \u00A7688 \u00A7dhours\u00A78, \u00A74High \u00A74King \u00A7dat \u00A76168 \u00A7dhours \u00A78(\u00A761 \u00A7dweek\u00A78)\u00A78, \u00A7dand \u00A77Custom \u00A7dat \u00A76336 \u00A7dhours \u00A78(\u00A762 \u00A7dweeks\u00A78).","color":"light_purple"},{"text":"\n\u00A7cIf you wish to view other pages, just type \u00A78'\u00A7a/trigger \u00A7aTutorial \u00A7aset \u00A78' \u00A7cthen put the page number you wisou wish to view.","color":"red"}]
execute as @s[tag=Tut3] run tellraw @a[tag=OP] [{"text":"Tutorial System","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Just showed ","color":"red"},{"selector":"@s"},{"text":" Tutorial Page 3 of 4!","color":"red"}]

execute as @s[tag=Tut4] run tellraw @s [{"text":"\u00A77-- Tutorial Page 4 of 4 --\n\u00A7dHow I become a \u00A7rYou\u00A74Tuber \u00A7dor \u00A75Streamer\u00A78?\n\u00A7dIf you make a video of the server with the IP in the description, 'Templex' in the title and \u00A7670\u00A78+ \u00A7dsubscribers\u00A78, \u00A7dyou can get the \u00A7eYT \u00A7drank\u00A78.\n\u00A7dIf you have less than \u00A7670 \u00A7dsubscribers\u00A78, \u00A7dbut still meet the other requirements\u00A78, \u00A7dyou can get \u00A7eJrYT\u00A78.\n\u00A7dIf you only do \u00A75Twitch \u00A7dand you have \u00A7660\u00A78+ \u00A7dfollowers\u00A78, \u00A7dthen you can get the \u00A7eStreamer \u00A7drank\u00A78.\n\u00A7dIf you have less than \u00A7660 \u00A7dfollowers\u00A78, \u00A7dbut still meet the other requirements\u00A78, \u00A7dthen you can get the \u00A7eJrStreamer \u00A7drank\u00A78.","color":"light_purple"},{"text":"\n\u00A7cIf you wish to view other pages, just type \u00A78'\u00A7a/trigger \u00A7aTutorial \u00A7aset \u00A78' \u00A7cthen put the page number you wisou wish to view.","color":"red"}]
execute as @s[tag=Tut4] run tellraw @a[tag=OP] [{"text":"Tutorial System","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Just showed ","color":"red"},{"selector":"@s"},{"text":" Tutorial Page 4 of 4!","color":"red"}]

execute as @s[tag=WTut] run tellraw @s [{"text":"\u00A77-- Tutorial Page 0 of 4 --\n\u00A7dYou need to do \u00A78'\u00A7a/trigger Tutorial set \u00A78' \u00A7dthen put a number between \u00A761 \u00A7dand \u00A763\u00A78. \u00A7dThanks\u00A78.","color":"light_purple"}]
execute as @s[tag=WTut] run tellraw @a[tag=OP] [{"text":"Tutorial System","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Tried to show ","color":"red"},{"selector":"@s"},{"text":" a Tutorial, but they put a number higher than 3... It needs to be between 1 and 3.","color":"red"}]

tag @s remove Tut1
tag @s remove Tut2
tag @s remove Tut3
tag @s remove Tut4
tag @s remove WTut

scoreboard players set @s Tutorial 0
scoreboard players enable @a Tutorial
