## Doers.
#  Trading.
execute as @e[distance=..0.5,type=item,name=Obsidian,nbt={Item:{id:"minecraft:obsidian",Count:1b}}] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:slime_ball",Count:16b}}
execute as @e[distance=..0.5,type=item,name=Obsidian,nbt={Item:{id:"minecraft:obsidian",Count:1b}}] at @s run teleport @s ~ ~-270 ~
#  Spawning.
execute as @s[scores={PlayTime=15..}] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:slime_ball",Count:1b}}
execute as @s[scores={PlayTime=15..}] at @s run scoreboard players reset @s
