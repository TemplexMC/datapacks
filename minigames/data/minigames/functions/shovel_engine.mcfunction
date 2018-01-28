## Upon join
#  Resets InShovel's "Database" score, then adds one to InShovel's "Database" score for everyone already in the game,
#  then adds one to InShovel's "Database" score for the joining player, then tags the joining player with "InShovel"
execute as @a[tag=!InShovel,distance=..100,gamemode=adventure] run scoreboard players set @e[name=InShovel,type=armor_stand] Database 0
execute if entity @a[tag=!InShovel,distance=..100,gamemode=adventure] as @a[tag=InShovel] run scoreboard players add @e[name=InShovel,type=armor_stand] Database 1
execute as @a[tag=!InShovel,distance=..100,gamemode=adventure] run scoreboard players add @e[name=InShovel,type=armor_stand] Database 1
execute as @a[tag=!InShovel,distance=..100,gamemode=adventure] run tag @s add InShovel

## When someone gets eliminated
#  When somone falls into the water, it tags them with "Fallen" then removes one from ShovelAlive's "Database" score,
#  then tells everyone online that the "Fallen" player has been eliminated, then teleports the fallen player to the viewing area
execute as @a[tag=InShovel,distance=..100] if block ~ ~ ~ minecraft:water run tag @s add Fallen
execute as @a[tag=InShovel,distance=..100] if block ~ ~ ~ minecraft:water run scoreboard players remove @e[name=ShovelAlive,type=armor_stand] Database 1
execute as @a[tag=InShovel,distance=..100] if block ~ ~ ~ minecraft:water run tellraw @a [{"text":"Shovel Minigame","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s"},{"text":" has been eliminated from the Shovel game!","color":"red"}]
execute as @a[tag=InShovel,distance=..100] if block ~ ~ ~ minecraft:water run tp @s -1095071 44 344556 -45 0

## Before starting the game
#  Testing for 3 to 16 players, then starts count down to begin
execute as @e[name=InShovel,type=armor_stand,tag=!ShovelStarted] as @s[scores={Database=3..16}] run scoreboard players add @e[name=ShovelStartCount] Database 1
#  Testing for 0 to 2 players. If so, says "waiting for players on action bar"
execute as @e[name=InShovel,type=armor_stand,tag=!ShovelStarted] as @s[scores={Database=..2}] as @e[name=Shovel,type=armor_stand] run title @a[tag=InShovel,distance=..100] actionbar [{"text":"Waiting for players...","color":"red"}]

## Starting the game
#  Counts down, then give everyone in the game a tagged shovel, then tells them it is "Now Starting!", then teleports them to the spawn area,
#  then tags the armor stand that the game started, then reset the count down timer
execute as @e[name=ShovelStartCount,type=armor_stand] as @s[scores={Database=0}] run title @a[tag=InShovel,distance=..100] actionbar [{"text":"Game starts in ","color":"green"},{"text":"5","color":"gold"},{"text":"...","color":"green"}]
execute as @e[name=ShovelStartCount,type=armor_stand] as @s[scores={Database=20}] run title @a[tag=InShovel,distance=..100] actionbar [{"text":"Game starts in ","color":"green"},{"text":"4","color":"gold"},{"text":"...","color":"green"}]
execute as @e[name=ShovelStartCount,type=armor_stand] as @s[scores={Database=40}] run title @a[tag=InShovel,distance=..100] actionbar [{"text":"Game starts in ","color":"green"},{"text":"3","color":"gold"},{"text":"...","color":"green"}]
execute as @e[name=ShovelStartCount,type=armor_stand] as @s[scores={Database=60}] run title @a[tag=InShovel,distance=..100] actionbar [{"text":"Game starts in ","color":"green"},{"text":"2","color":"gold"},{"text":"...","color":"green"}]
execute as @e[name=ShovelStartCount,type=armor_stand] as @s[scores={Database=80}] run title @a[tag=InShovel,distance=..100] actionbar [{"text":"Game starts in ","color":"green"},{"text":"1","color":"gold"},{"text":"...","color":"green"}]
execute as @e[name=ShovelStartCount,type=armor_stand] as @s[scores={Database=100}] run title @a[tag=InShovel,distance=..100] actionbar [{"text":"Game starts now!","color":"green"}]
execute as @e[name=ShovelStartCount,type=armor_stand] as @s[scores={Database=100}] run give @a[tag=InShovel,distance=..100] diamond_shovel{display:{LocName:"Pooper Scooper",Lore:["Only for spleef!"]},CanDestroy:["minecraft:snow_block"],Unbreakable:1} 1
execute as @e[name=ShovelStartCount,type=armor_stand] as @s[scores={Database=100}] run title @a[tag=InShovel,distance=..100] title [{"text":"Now Starting!","color":"green"}]
execute as @e[name=ShovelStartCount,type=armor_stand] as @s[scores={Database=100}] run tp @a[tag=InShovel,distance=..100] -1095054 36 344573
execute as @e[name=ShovelStartCount,type=armor_stand] as @s[scores={Database=100}] run tag @e[name=InShovel,type=armor_stand] add ShovelStarted
execute as @e[name=ShovelStartCount,type=armor_stand] as @s[scores={Database=100}] run scoreboard players reset @s Database

## Constants
#  Effects everyone in the game with saturation
effect give @a[tag=InShovel,distance=..100] minecraft:saturation 3 20 true

## Ending the game
#  Tags the player who is still standing, then tells everyone in the game that they won, then starts a counter to reset the game
execute as @e[name=ShovelAlive,type=armor_stand] as @s[scores={Database=1}] as @e[name=Shovel,type=armor_stand] run tag @p[tag=InShovel,tag=!Fallen] add ShovelWinner
execute as @a[tag=ShovelWinner] run title @a[tag=InShovel,distance=..100] actionbar [{"selector":"@s"},{"text":" has won!","color":"green"}]
execute as @p[tag=ShovelWinner] run scoreboard players add @e[name=ShovelEndCount,type=armor_stand] Database 1
#  TL;DR
execute as @e[name=ShovelEndCount,type=armor_stand] as @s[scores={Database=20}] as @e[name=Shovel,type=armor_stand] run tellraw @a[distance=100] [{"text":"Shovel Minigame","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Returning all players to Spawn in 5 seconds...","color":"red"}]
execute as @e[name=ShovelEndCount,type=armor_stand] as @s[scores={Database=120}] run scoreboard players set @e[name=InShovel,type=armor_stand] Database 0
execute as @e[name=ShovelEndCount,type=armor_stand] as @s[scores={Database=120}] as @e[name=Shovel,type=armor_stand] run tellraw @a[distance=100] [{"text":"Shovel Minigame","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Returning all players to Spawn...","color":"red"}]
execute as @e[name=ShovelEndCount,type=armor_stand] as @s[scores={Database=120}] run tellraw @a [{"text":"Shovel Minigame","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@a[tag=ShovelWinner]"},{"text":" has just won a game of the Shovel Minigame!","color":"red"}]
execute as @e[name=ShovelEndCount,type=armor_stand] as @s[scores={Database=120}] run scoreboard players add @a[tag=ShovelWinner] TC 195
execute as @e[name=ShovelEndCount,type=armor_stand] as @s[scores={Database=120}] run scoreboard players add @a[tag=ShovelWinner] Karma 95
execute as @e[name=ShovelEndCount,type=armor_stand] as @s[scores={Database=120}] run scoreboard players add @a[tag=ShovelWinner] ShovelWins 1
execute as @e[name=ShovelEndCount,type=armor_stand] as @s[scores={Database=120}] run scoreboard players add @a[tag=InShovel] TC 5
execute as @e[name=ShovelEndCount,type=armor_stand] as @s[scores={Database=120}] run scoreboard players add @a[tag=InShovel] Karma 5
execute as @e[name=ShovelEndCount,type=armor_stand] as @s[scores={Database=120}] run clear @a[tag=InShovel] minecraft:diamond_shovel{display:{LocName:"Pooper Scooper",Lore:["Only for spleef!"]},CanDestroy:["minecraft:snow_block"],Unbreakable:1} 64
execute as @e[name=ShovelEndCount,type=armor_stand] as @s[scores={Database=120}] run fill -1095037 35 344590 -1095071 35 344556 minecraft:snow_block
execute as @e[name=ShovelEndCount,type=armor_stand] as @s[scores={Database=120}] run scoreboard players set @a[tag=InShovel] Spawn 1
execute as @e[name=ShovelEndCount,type=armor_stand] as @s[scores={Database=120}] run scoreboard players set @a[tag=InShovel] Survival 1
execute as @e[name=ShovelEndCount,type=armor_stand] as @s[scores={Database=120}] run tag @e[name=InShovel,type=armor_stand] remove ShovelStarted
execute as @e[name=ShovelEndCount,type=armor_stand] as @s[scores={Database=120}] run tag @a remove ShovelWinner
execute as @e[name=ShovelEndCount,type=armor_stand] as @s[scores={Database=120}] run tag @a remove Fallen
execute as @e[name=ShovelEndCount,type=armor_stand] as @s[scores={Database=120}] run tag @a remove InShovel
execute as @e[name=ShovelEndCount,type=armor_stand] as @s[scores={Database=120}] run scoreboard players reset @e[name=ShovelAlive,type=armor_stand] Database
execute as @e[name=ShovelEndCount,type=armor_stand] as @s[scores={Database=120}] run scoreboard players reset @s Database

## Plates
#  Sends the player who stepped on the plate to Spawn, then adds a ticket to the player if they don't have the "Fallen" tag, then removes the "InShovel" tag,
#  then removes the "Fallen" tag, then removes one from InShovel's "Database" score, then re-allows the player to use triggers
execute as @a[tag=InShovel,distance=100] if block ~ ~ ~ minecraft:stone_pressure_plate run scoreboard players set @s Spawn 1
execute as @a[tag=InShovel,distance=100] if block ~ ~ ~ minecraft:stone_pressure_plate run scoreboard players add @s[tag=!BetaTester,tag=!Fallen] ShovelTick 1
execute as @a[tag=InShovel,distance=100] if block ~ ~ ~ minecraft:stone_pressure_plate run scoreboard players remove @e[name=InShovel,type=armor_stand] Database 1
execute as @a[tag=InShovel,distance=100] if block ~ ~ ~ minecraft:stone_pressure_plate run scoreboard players set @s TriggerReset 1
execute as @a[tag=InShovel,distance=100] if block ~ ~ ~ minecraft:stone_pressure_plate run tag @s remove Fallen
execute as @a[tag=InShovel,distance=100] if block ~ ~ ~ minecraft:stone_pressure_plate run tag @s remove InShovel
#  Sets Proxy1's "Database" score to 0, then tags the player with "ShowingShovel", then starts a counter, then shows the scoreboard "ShovelWins", then reverts it,
#  then resets timer, then removes the "ShowingShovel" tag
execute as @a[tag=InShovel,distance=100] if block ~ ~ ~ minecraft:spruce_pressure_plate as @s[tag=!ShowingShovel] run scoreboard players set @e[name=Proxy1,type=armor_stand] Database 0
execute as @a[tag=InShovel,distance=100] if block ~ ~ ~ minecraft:spruce_pressure_plate run tag @s add ShowingShovel
execute as @p[tag=ShowingShovel] run scoreboard players add @e[name=Proxy1,type=armor_stand] Database 1
execute as @p[tag=ShowingShovel] as @e[name=Proxy1,type=armor_stand] as @s[scores={Database=1}] run scoreboard objectives setdisplay sidebar ShovelWins
execute as @p[tag=ShowingShovel] as @e[name=Proxy1,type=armor_stand] as @s[scores={Database=100}] run scoreboard objectives setdisplay sidebar Stats
execute as @p[tag=ShowingShovel] run scoreboard players set @e[name=Proxy1,type=armor_stand] Database 0
execute as @p[tag=ShowingShovel] run tag @s remove ShowingShovel

