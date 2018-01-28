tp @s -1761682 21 865266
execute as @s[tag=!OP,gamemode=survival] run trigger SpawnPoint
scoreboard players set @s RTPs 5
#scoreboard players set @s Tick 0
scoreboard players set @s Tutorial 1
scoreboard players set @s TriggerReset 1
scoreboard players add @a Karma 200
scoreboard players add Players-All-Time Stats 1
scoreboard players operation @e[name=Proxy1,type=armor_stand] Database = Players-All-Time Stats
tellraw @a [{"selector":"@s","color":"green"},{"text":" is a new player","color":"red"},{"text":"!","color":"dark_gray"},{"text":"\nWelcome to ","color":"red"},{"text":"Templex","color":"dark_aqua"},{"text":", ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":"!","color":"dark_gray"},{"text":"\nWe have now had ","color":"red"},{"score":{"name":"@e[name=Proxy1]","objective":"Database"},"color":"gold"},{"text":" players join this version of ","color":"red"},{"text":"Templex","color":"dark_aqua"},{"text":"!","color":"dark_gray"}]
