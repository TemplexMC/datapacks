# Teleports to Spawn location.
tp @s -1761682 21 865266
# Sets their spawnpoint to that location.
execute as @s[tag=!OP,gamemode=survival] run trigger SpawnPoint
# Sets off their start scores.
scoreboard players set @s RTPs 5
#scoreboard players set @s Tick 0
scoreboard players set @s Tutorial 1
scoreboard players add @a Karma 200
# Enables triggers for all online players | Needed to allow the new player to be able to do triggers.
scoreboard players set @s TriggerReset 1
# Adds one to Players-All-Time.
scoreboard players add Players-All-Time Stats 1
# Not needed anymore due to bug fixes, but uses a proxy (Proxy1) for tellraw how many players have joined Templex so far this reset.
scoreboard players operation @e[name=Proxy1,type=armor_stand] Database = Players-All-Time Stats
# Tellraws stuff.
tellraw @a [{"selector":"@s","color":"green"},{"text":" is a new player","color":"red"},{"text":"!","color":"dark_gray"},{"text":"\nWelcome to ","color":"red"},{"text":"Templex","color":"dark_aqua"},{"text":", ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":"!","color":"dark_gray"},{"text":"\nWe have now had ","color":"red"},{"score":{"name":"@e[name=Proxy1]","objective":"Database"},"color":"gold"},{"text":" players join this version of ","color":"red"},{"text":"Templex","color":"dark_aqua"},{"text":"!","color":"dark_gray"}]
# Gives starter items.
give @s wooden_sword{display:{Name:"{\"text\":\"Foam Dagger\",\"color\":\"gold\"}",Lore:["Should it bend this much?"]},ench:[{id:16,lvl:3}]} 1
give @s bread{display:{Name:"{\"text\":\"Mana\",\"color\":\"red\"}",Lore:["Tastes stale... :/"]}} 10
give @s white_wool{display:{Name:"{\"text\":\"Cotton Candy\",\"color\":\"red\"}",Lore:["Ew. Tastes like fur!"]}} 3
give @s coal{display:{Name:"{\"text\":\"Chocolate\",\"color\":\"red\"}",Lore:["It's a bit hard..."]}} 8
