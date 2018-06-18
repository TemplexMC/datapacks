# Tellers.
tellraw @a[distance=..10] [{"text":"Your ","color":"light_purple"},{"selector":"@s","color":"green"},{"text":" has just been un-summoned.","color":"light_purple"}]
tellraw @a[tag=OP] [{"text":"\u00A76Farms \u00A78: "},{"selector":"@p","color":"green"},{"text":" just un-summoned their ","color":"red"},{"selector":"@s","color":"green"},{"text":".","color":"red"}]
# Doers.
execute as @s[name=GoldFarm] run give @p minecraft:endermite_spawn_egg{display:{Name:"{\"text\":\"GoldFarm\",\"color\":\"gold\"}",Lore:["Place this where you want the farm to be."]}}
execute as @s[name=IronFarm] run give @p minecraft:endermite_spawn_egg{display:{Name:"{\"text\":\"IronFarm\",\"color\":\"gold\"}",Lore:["Place this where you want the farm to be."]}}
execute as @s[name=CoalFarm] run give @p minecraft:endermite_spawn_egg{display:{Name:"{\"text\":\"CoalFarm\",\"color\":\"gold\"}",Lore:["Place this where you want the farm to be."]}}
execute as @s[name=SlimeFarm] run give @p minecraft:endermite_spawn_egg{display:{Name:"{\"text\":\"SlimeFarm\",\"color\":\"gold\"}",Lore:["Place this where you want the farm to be."]}}
kill @s
