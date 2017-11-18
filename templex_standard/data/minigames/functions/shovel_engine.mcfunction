#### You need to have "@p[r=100,m=!1,tag=!SWinner]" in the repeating command block for the game to work correctly!
scoreboard players operation @s Dummy = Z Shovel

execute @a[tag=!InShovel,r=100,m=2] ~ ~ ~ scoreboard players reset @s Inputter
execute @a[tag=!InShovel,r=100,m=2] ~ ~ ~ scoreboard players set Z Shovel 0
execute @a[tag=!InShovel,r=100,m=2] ~ ~ ~ scoreboard players tag @a remove ShovelAdded
scoreboard players tag @a[tag=!InShovel,r=100,m=2] add InShovel
execute @a[r=100,tag=!ShovelAdded] ~ ~ ~ scoreboard players add Z Shovel 1
execute @a[r=100,tag=!ShovelAdded] ~ ~ ~ scoreboard players tag @s add ShovelAdded

execute @a[tag=InShovel,r=100] ~ ~ ~ detect ~ ~ ~ water 0 scoreboard players set @s Dummy2 -1
execute @a[tag=InShovel,r=100] ~ ~ ~ detect ~ ~ ~ water 0 scoreboard players tag @s add Fallen
execute @a[tag=InShovel,r=100] ~ ~ ~ detect ~ ~ ~ water 0 tellraw @a [{"text":"Shovel Minigame","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s"},{"text":" has been eliminated from the spleef game!","color":"red"}]
execute @a[tag=InShovel,r=100] ~ ~ ~ detect ~ ~ ~ water 0 tp @s -1136959 15 -1956251 -45 0

execute @s[score_Dummy_min=3,score_Dummy=16,tag=!Started] ~ ~ ~ scoreboard players add @s Dummy3 1

execute @s[score_Dummy_min=0,score_Dummy=2] ~ ~ ~ title @a[tag=InShovel,r=100] actionbar [{"text":"Waiting for players...","color":"red"}]

execute @s[score_Dummy3_min=0,score_Dummy3=0] ~ ~ ~ title @a[tag=InShovel,r=100] actionbar [{"text":"Game starts in ","color":"green"},{"text":"5","color":"gold"},{"text":"...","color":"green"}]
execute @s[score_Dummy3_min=20,score_Dummy3=20] ~ ~ ~ title @a[tag=InShovel,r=100] actionbar [{"text":"Game starts in ","color":"green"},{"text":"4","color":"gold"},{"text":"...","color":"green"}]
execute @s[score_Dummy3_min=40,score_Dummy3=40] ~ ~ ~ title @a[tag=InShovel,r=100] actionbar [{"text":"Game starts in ","color":"green"},{"text":"3","color":"gold"},{"text":"...","color":"green"}]
execute @s[score_Dummy3_min=60,score_Dummy3=60] ~ ~ ~ title @a[tag=InShovel,r=100] actionbar [{"text":"Game starts in ","color":"green"},{"text":"2","color":"gold"},{"text":"...","color":"green"}]
execute @s[score_Dummy3_min=80,score_Dummy3=80] ~ ~ ~ title @a[tag=InShovel,r=100] actionbar [{"text":"Game starts in ","color":"green"},{"text":"1","color":"gold"},{"text":"...","color":"green"}]
execute @s[score_Dummy3_min=100,score_Dummy3=100] ~ ~ ~ title @a[tag=InShovel,r=100] actionbar [{"text":"Game starts in ","color":"green"},{"text":"0","color":"gold"},{"text":"...","color":"green"}]
execute @s[score_Dummy3_min=100,score_Dummy3=100] ~ ~ ~ give @a[tag=InShovel,r=100] diamond_shovel 1 0 {display:{LocName:"Pooper Scooper",Lore:["Only for spleef!"]},CanDestroy:["minecraft:snow"],Unbreakable:1}
execute @s[score_Dummy3_min=100,score_Dummy3=100] ~ ~ ~ title @a[tag=InShovel,r=100] title [{"text":"Now Starting!","color":"green"}]
execute @s[score_Dummy3_min=100,score_Dummy3=100] ~ ~ ~ tp @a[tag=InShovel,r=100] -1136939 11 -1956231
execute @s[score_Dummy3_min=100,score_Dummy3=100] ~ ~ ~ scoreboard players tag @a[tag=InShovel,r=100] add Started
execute @s[score_Dummy3_min=100,score_Dummy3=100] ~ ~ ~ scoreboard players reset @a[tag=InShovel,r=100] Dummy3

# scoreboard players set @e[type=Item] Dummy 1 {Item:{id:snowball,Count:1}}
tp @e[r=100,type=Item,name=item.item.snowball] ~ ~-270 ~
tp @e[r=100,type=Ender_Pearl] ~ ~-270 ~
effect @a[tag=InShovel,r=100] minecraft:saturation 3 20 true

execute @p[tag=Fallen,score_Dummy2_min=-1,score_Dummy2=-1] ~ ~ ~ scoreboard players set W Shovel 0
execute @p[tag=Fallen,score_Dummy2_min=-1,score_Dummy2=-1] ~ ~ ~ execute @a[tag=!Fallen,r=100] ~ ~ ~ scoreboard players add W Shovel 1
execute @p[tag=Fallen,score_Dummy2_min=-1,score_Dummy2=-1] ~ ~ ~ scoreboard players operation @s Dummy2 = W Shovel
execute @p[score_Dummy2_min=1,score_Dummy2=1] ~ ~ ~ scoreboard players tag @p[r=100,m=2,tag=!Fallen] add SWinner

execute @a[tag=SWinner,r=100] ~ ~ ~ title @a[tag=InShovel,r=100] actionbar [{"selector":"@s"},{"text":" has won!","color":"green"}]
execute @a[tag=SWinner,r=100] ~ ~ ~ scoreboard players add @s Dummy 1

execute @a[score_Dummy_min=20,score_Dummy=20,tag=InShovel] ~ ~ ~ tellraw @a[r=100] [{"text":"Shovel Minigame","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Returning all players to Spawn in 5 seconds...","color":"red"}]
execute @a[score_Dummy_min=120,score_Dummy=120,tag=InShovel] ~ ~ ~ scoreboard players set Z Shovel 0
execute @a[score_Dummy_min=120,score_Dummy=120,tag=InShovel] ~ ~ ~ tellraw @a[r=100] [{"text":"Shovel Minigame","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Returning all players to Spawn...","color":"red"}]
execute @a[score_Dummy_min=120,score_Dummy=120,tag=InShovel] ~ ~ ~ tellraw @a [{"text":"Shovel Minigame","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@a[tag=SWinner,r=100]"},{"text":" has just won a game of the Shovel Minigame!","color":"red"}]
execute @a[score_Dummy_min=120,score_Dummy=120,tag=InShovel] ~ ~ ~ scoreboard players add @a[tag=SWinner,r=100] TC 195
execute @a[score_Dummy_min=120,score_Dummy=120,tag=InShovel] ~ ~ ~ scoreboard players add @a[tag=SWinner,r=100] Karma 95
execute @a[score_Dummy_min=120,score_Dummy=120,tag=InShovel] ~ ~ ~ scoreboard players add @a[tag=InShovel,r=100] TC 5
execute @a[score_Dummy_min=120,score_Dummy=120,tag=InShovel] ~ ~ ~ scoreboard players add @a[tag=InShovel,r=100] Karma 5
execute @a[score_Dummy_min=120,score_Dummy=120,tag=InShovel] ~ ~ ~ clear @a[tag=InShovel,r=100] minecraft:diamond_shovel 0 64 {display:{LocName:"Pooper Scooper",Lore:["Only for spleef!"]},CanDestroy:["minecraft:snow"],Unbreakable:1}
execute @a[score_Dummy_min=120,score_Dummy=120,tag=InShovel] ~ ~ ~ fill -1136959 10 -1956211 -1136919 10 -1956251 minecraft:snow
execute @a[score_Dummy_min=120,score_Dummy=120,tag=InShovel] ~ ~ ~ scoreboard players set @a[r=100,m=2,tag=InShovel] Spawn 1
execute @a[score_Dummy_min=120,score_Dummy=120,tag=InShovel] ~ ~ ~ scoreboard players tag @a[r=100] remove Started
execute @a[score_Dummy_min=120,score_Dummy=120,tag=InShovel] ~ ~ ~ scoreboard players tag @a remove SWinner
execute @a[score_Dummy_min=120,score_Dummy=120,tag=InShovel] ~ ~ ~ scoreboard players tag @a remove Fallen
execute @a[score_Dummy_min=120,score_Dummy=120,tag=InShovel] ~ ~ ~ scoreboard players tag @a remove InShovel
execute @a[score_Dummy_min=120,score_Dummy=120,r=100] ~ ~ ~ gamemode s @a[r=100,m=2]
execute @a[score_Dummy_min=120,score_Dummy=120,r=100] ~ ~ ~ scoreboard players reset @a[r=100,tag=InShovel,m=0] Dummy2
execute @a[score_Dummy_min=120,score_Dummy=120,r=100] ~ ~ ~ scoreboard players reset @a[r=100,tag=InShovel,m=0] Dummy

scoreboard players set @a[r=100,tag=!Started] Inputter 1 {Tags:["InShovel"]}

execute @a[score_Inputter_min=1,r=100] ~ ~ ~ detect ~ ~ ~ stone_pressure_plate 1 trigger Spawn set 1
execute @a[score_Inputter_min=1,r=100] ~ ~ ~ detect ~ ~ ~ stone_pressure_plate 1 scoreboard players add @s[tag=!betaTester] ShovelTick 1
execute @a[score_Inputter_min=1,r=100] ~ ~ ~ detect ~ ~ ~ stone_pressure_plate 1 scoreboard players tag @s remove InShovel
execute @a[score_Inputter_min=1,r=100] ~ ~ ~ detect ~ ~ ~ stone_pressure_plate 1 scoreboard players remove Z Shovel 1
