## Doers.
#  Trading.
execute as @e[distance=..0.5,type=item,name=Obsidian,nbt={Item:{id:"minecraft:obsidian",Count:1b}}] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:iron_ingot",Count:16b}}
execute as @e[distance=..0.5,type=item,name=Obsidian,nbt={Item:{id:"minecraft:obsidian",Count:1b}}] at @s run teleport @s ~ ~-270 ~
#  Spawning.
execute as @s[scores={WalkTime=30..}] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:iron_ingot",Count:1b}}
execute as @s[scores={WalkTime=30..}] at @s run scoreboard players reset @s
