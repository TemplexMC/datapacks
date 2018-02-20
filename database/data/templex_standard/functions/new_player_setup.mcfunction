# Teleports to Spawn location.
scoreboard players set @s Spawn 1
# Sets their spawnpoint to that location.
execute as @s[tag=!OP,gamemode=survival] run trigger SpawnPoint
# Sets off their start scores.
scoreboard players set @s RTPs 5
scoreboard players set @s Tutorial 1
scoreboard players add @a Karma 200
# Enables triggers for all online players | Needed to allow the new player to be able to do triggers.
scoreboard players set @s TriggerReset 1
# Adds players to scoreboard.
scoreboard players add Players-This-Reset Stats 1
scoreboard players add Players-All-Time Stats 1
# Tellraws stuff.
tellraw @a [{"selector":"@s","color":"green"},{"text":" is a new player","color":"red"},{"text":"!","color":"dark_gray"},{"text":"\nWelcome to ","color":"red"},{"text":"Templex","color":"dark_aqua"},{"text":", ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":"!","color":"dark_gray"},{"text":"\nWe have now had ","color":"red"},{"score":{"name":"Players-This-Reset","objective":"Stats"},"color":"gold"},{"text":" players join this version of ","color":"red"},{"text":"Templex","color":"dark_aqua"},{"text":"! \u00A7b(Templex \u00A7bv15)","color":"dark_gray"}]
# Gives starter items.
give @s wooden_sword{display:{Name:"{\"text\":\"Foam Dagger\",\"color\":\"gold\"}",Lore:["Should it bend this much?"]},ench:[{id:16,lvl:3}]} 1
give @s bread{display:{Name:"{\"text\":\"Mana\",\"color\":\"red\"}",Lore:["Tastes stale... :/"]}} 10
give @s white_wool{display:{Name:"{\"text\":\"Cotton Candy\",\"color\":\"green\"}",Lore:["Ew. Tastes like fur!"]}} 3
give @s coal{display:{Name:"{\"text\":\"Chocolate\",\"color\":\"red\"}",Lore:["It's a bit hard..."]}} 8
give @s crafting_table{display:{Name:"{\"text\":\"Bench da la Crafting\",\"color\":\"green\"}",Lore:["Craft things in this."]}} 1
