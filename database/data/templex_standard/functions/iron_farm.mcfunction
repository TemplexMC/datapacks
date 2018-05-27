## Doers.
#  Spawning.
execute as @s[scores={PlayTime=30..}] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:iron_ingot",Count:1b}}
execute as @s[scores={PlayTime=30..}] at @s run scoreboard players reset @s
