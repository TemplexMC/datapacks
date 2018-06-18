## Doers.
#  Spawning.
execute as @s[scores={PlayTime=15..}] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:coal",Count:1b}}
execute as @s[scores={PlayTime=15..}] at @s run scoreboard players reset @s
