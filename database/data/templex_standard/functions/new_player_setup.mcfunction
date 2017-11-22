tp @s -1761682 21 865266
execute as @s[tag=!OP,m=0] run spawnpoint @s
scoreboard players set @s RTPs 5
#scoreboard players set @s RunTick 0
scoreboard players set @s TriggerReset 1
scoreboard players add Players-All-Time Stats 1
tellraw @a [{"selector":"@s","color":"green"},{"text":" is a new player","color":"red"},{"text":"!","color":"dark_gray"},{"text":"\nWelcome to ","color":"red"},{"text":"Templex","color":"dark_aqua"},{"text":", ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":"!","color":"dark_gray"},{"text":"\nWe have now had ","color":"red"},{"score":{"name":"Players-All-Time","objective":"Stats"},"color":"gold"},{"text":" players join this version of ","color":"red"},{"text":"Templex","color":"dark_aqua"},{"text":"!","color":"dark_gray"}]
