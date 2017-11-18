#### You need to have "@p[r=100,m=!1,tag=!PassIt]" in the repeating command block for the game to work correctly!

scoreboard players operation @s Dummy = Z Pass

execute @a[tag=!InPass,r=100,m=2] ~ ~ ~ scoreboard players reset @s Inputter
execute @a[tag=!InPass,r=100,m=2] ~ ~ ~ scoreboard players set Z Pass 0
execute @a[tag=!InPass,r=100,m=2] ~ ~ ~ scoreboard players tag @a remove PassAdded
scoreboard players tag @a[tag=!InPass,r=100,m=2] add InPass
execute @a[r=100,tag=!PassAdded] ~ ~ ~ scoreboard players add Z Pass 1
execute @a[r=100,tag=!PassAdded] ~ ~ ~ scoreboard players tag @s add PassAdded

execute @s[score_Dummy_min=3,score_Dummy=7,tag=!Started] ~ ~ ~ scoreboard players add @s Dummy3 1

execute @s[score_Dummy_min=0,score_Dummy=2] ~ ~ ~ title @a[tag=InShovel,r=100] actionbar [{"text":"Waiting for players...","color":"red"}]

execute @s[score_Dummy3_min=0,score_Dummy3=0] ~ ~ ~ title @a[tag=InPass,r=100] actionbar [{"text":"Game starts in ","color":"green"},{"text":"5","color":"gold"},{"text":"...","color":"green"}]
execute @s[score_Dummy3_min=20,score_Dummy3=20] ~ ~ ~ title @a[tag=InPass,r=100] actionbar [{"text":"Game starts in ","color":"green"},{"text":"4","color":"gold"},{"text":"...","color":"green"}]
execute @s[score_Dummy3_min=40,score_Dummy3=40] ~ ~ ~ title @a[tag=InPass,r=100] actionbar [{"text":"Game starts in ","color":"green"},{"text":"3","color":"gold"},{"text":"...","color":"green"}]
execute @s[score_Dummy3_min=60,score_Dummy3=60] ~ ~ ~ title @a[tag=InPass,r=100] actionbar [{"text":"Game starts in ","color":"green"},{"text":"2","color":"gold"},{"text":"...","color":"green"}]
execute @s[score_Dummy3_min=80,score_Dummy3=80] ~ ~ ~ title @a[tag=InPass,r=100] actionbar [{"text":"Game starts in ","color":"green"},{"text":"1","color":"gold"},{"text":"...","color":"green"}]
execute @s[score_Dummy3_min=100,score_Dummy3=100] ~ ~ ~ title @a[tag=InPass,r=100] actionbar [{"text":"Game starts in ","color":"green"},{"text":"0","color":"gold"},{"text":"...","color":"green"}]
execute @s[score_Dummy3_min=100,score_Dummy3=100] ~ ~ ~ scoreboard players tag @r[tag=InPass,r=100] add PassIt
execute @s[score_Dummy3_min=100,score_Dummy3=100] ~ ~ ~ title @a[tag=InPass,r=100] title [{"text":"Now Starting!","color":"green"}]
execute @s[score_Dummy3_min=100,score_Dummy3=100] ~ ~ ~ scoreboard players tag @a[tag=InPass,r=100] add Started
execute @s[score_Dummy3_min=100,score_Dummy3=100] ~ ~ ~ scoreboard players reset @a[tag=InPass,r=100] Dummy3

# These things happen once per tick.
tp @e[r=100,type=Ender_Pearl] ~ ~-270 ~
effect @a[tag=InShovel,r=100] minecraft:saturation 3 20 true

# This is the logic part.
execute @a[tag=PassIt,r=100] ~ ~ ~ scoreboard players add @s Dummy3 1
scoreboard players tag @a[r=100,tag=PassIt] add PAOut {Inventory:[{id:"minecraft:snowball",Count:1b}]}
execute @e[r=100,type=Snowball] ~ ~ ~ execute @p[r=1,tag=PassIt] ~ ~ ~ execute @s[tag=PAOut] ~ ~ ~ scoreboard players set @s Dummy3 120

execute @a[tag=PassIt,score_Dummy3_min=200] ~ ~ ~ tellraw @a [{"text":"Pass It Minigame","color":"gold"},{"text":" : "},{"selector":"@s"},{"text":" has just been eliminated from the Pass It minigame!","color":"red"}]
execute @a[tag=PassIt,score_Dummy3_min=200] ~ ~ ~ scoreboard players tag @s add PGone
execute @a[tag=PassIt,score_Dummy3_min=200] ~ ~ ~ scoreboard players set @s Dummy2 -1

execute @e[r=100,type=Snowball] ~ ~ ~ execute @p[r=1,tag=InPass] ~ ~ ~ execute @s[tag=!PassIt] ~ ~ ~ scoreboard players reset @a[r=100] Dummy3
execute @e[r=100,type=Snowball] ~ ~ ~ execute @p[r=1,tag=InPass] ~ ~ ~ execute @s[tag=!PassIt] ~ ~ ~ scoreboard players tag @a[tag=PassIt] remove PassIt
execute @e[r=100,type=Snowball] ~ ~ ~ execute @p[r=1,tag=InPass] ~ ~ ~ execute @s[tag=!PassIt] ~ ~ ~ scoreboard players tag @s add PassIt
execute @e[r=100,type=Snowball] ~ ~ ~ execute @p[r=1,tag=InPass] ~ ~ ~ execute @s[tag=!PassIt] ~ ~ ~ clear @a[tag=InPass,r=100] minecraft:snowball 0 64 {display:{Name:"Throw this at players."}}
execute @e[r=100,type=Snowball] ~ ~ ~ execute @p[r=1,tag=InPass] ~ ~ ~ execute @s[tag=!PassIt] ~ ~ ~ title @a[tag=PassIt] actionbar [{"text":"You are now it!","color":"red"}]
execute @e[r=100,type=Snowball] ~ ~ ~ execute @p[r=1,tag=InPass] ~ ~ ~ execute @s[tag=!PassIt] ~ ~ ~ give @s snowball 3 0 {display:{Name:"Throw this at players."}}

execute @s[tag=PGone,score_Dummy2_min=-1,score_Dummy2=-1] ~ ~ ~ scoreboard players set W Pass 2
execute @s[tag=PGone,score_Dummy2_min=-1,score_Dummy2=-1] ~ ~ ~ execute @s[tag=!PGone,r=100] ~ ~ ~ scoreboard players add W Pass 1
execute @s[tag=PGone,score_Dummy2_min=-1,score_Dummy2=-1] ~ ~ ~ scoreboard players remove W Pass 2
execute @s[tag=PGone,score_Dummy2_min=-1,score_Dummy2=-1] ~ ~ ~ scoreboard players operation @s Dummy2 = W Pass
execute @s[tag=PGone,score_Dummy2_min=1,score_Dummy2=1] ~ ~ ~ scoreboard players tag @a[tag=!PGone] add PWinner

execute @a[tag=PWinner,r=100] ~ ~ ~ title @a[tag=InPass,r=100] actionbar [{"selector":"@s"},{"text":" has won!","color":"green"}]
execute @a[tag=PWinner,r=100] ~ ~ ~ scoreboard players add @s Dummy 1

execute @a[score_Dummy_min=20,score_Dummy=20,tag=InPass] ~ ~ ~ tellraw @a[r=100] [{"text":"Pass It Minigame","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Returning all players to Spawn in 5 seconds...","color":"red"}]
execute @a[score_Dummy_min=120,score_Dummy=120,tag=InPass] ~ ~ ~ scoreboard players set Z Shovel 0
execute @a[score_Dummy_min=120,score_Dummy=120,tag=InPass] ~ ~ ~ tellraw @a[r=100] [{"text":"Pass It Minigame","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Returning all players to Spawn...","color":"red"}]
execute @a[score_Dummy_min=120,score_Dummy=120,tag=InPass] ~ ~ ~ tellraw @a [{"text":"Pass It Minigame","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@a[tag=PWinner,r=100]"},{"text":" has just won a game of the Pass It Minigame!","color":"red"}]
execute @a[score_Dummy_min=120,score_Dummy=120,tag=InPass] ~ ~ ~ scoreboard players add @a[tag=PWinner,r=100] TC 95
execute @a[score_Dummy_min=120,score_Dummy=120,tag=InPass] ~ ~ ~ scoreboard players add @a[tag=PWinner,r=100] Karma 95
execute @a[score_Dummy_min=120,score_Dummy=120,tag=InPass] ~ ~ ~ scoreboard players add @a[tag=InPass,r=100] TC 5
execute @a[score_Dummy_min=120,score_Dummy=120,tag=InPass] ~ ~ ~ scoreboard players add @a[tag=InPass,r=100] Karma 5
execute @a[score_Dummy_min=120,score_Dummy=120,tag=InPass] ~ ~ ~ clear @a[tag=InPass,r=100] minecraft:snowball 0 64 {display:{Name:"Throw this at players."}}
execute @a[score_Dummy_min=120,score_Dummy=120,tag=InPass] ~ ~ ~ scoreboard players set @a[r=100,m=2,tag=InPass] Spawn 1
execute @a[score_Dummy_min=120,score_Dummy=120,tag=InPass] ~ ~ ~ scoreboard players tag @a[r=100] remove Started
execute @a[score_Dummy_min=120,score_Dummy=120,tag=InPass] ~ ~ ~ scoreboard players tag @a remove PWinner
execute @a[score_Dummy_min=120,score_Dummy=120,tag=InPass] ~ ~ ~ scoreboard players tag @a remove PassIt
execute @a[score_Dummy_min=120,score_Dummy=120,tag=InPass] ~ ~ ~ scoreboard players tag @a remove InPass
execute @a[score_Dummy_min=120,score_Dummy=120,r=100] ~ ~ ~ gamemode s @a[r=100,m=2]
execute @a[score_Dummy_min=120,score_Dummy=120,r=100] ~ ~ ~ scoreboard players reset @a[r=100,tag=InShovel,m=0] Dummy2
execute @a[score_Dummy_min=120,score_Dummy=120,r=100] ~ ~ ~ scoreboard players reset @a[r=100,tag=InShovel,m=0] Dummy

scoreboard players set @a[r=100,tag=!Started] Inputter 1 {Tags:["InShovel"]}

execute @a[score_Inputter_min=1,r=100] ~ ~ ~ detect ~ ~ ~ stone_pressure_plate 1 trigger Spawn set 1
execute @a[score_Inputter_min=1,r=100] ~ ~ ~ detect ~ ~ ~ stone_pressure_plate 1 scoreboard players add @s[tag=!betaTester] PassTick 1
execute @a[score_Inputter_min=1,r=100] ~ ~ ~ detect ~ ~ ~ stone_pressure_plate 1 scoreboard players tag @s remove InPass
execute @a[score_Inputter_min=1,r=100] ~ ~ ~ detect ~ ~ ~ stone_pressure_plate 1 scoreboard players remove Z Pass 1
