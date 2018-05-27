# Counter.
scoreboard players add @s Database 1
# Tellers.
execute as @s[scores={Database=50..}] run tellraw @a [{"text":"<"},{"selector":"@p[name=xNitrate]"},{"text":"> Welcome to Templex, "},{"selector":"@s","color":"white"},{"text":"!"}]
# Reset.
execute as @s[scores={Database=50..}] run tag @s remove AutoScript
execute as @s[scores={Database=50..}] run scoreboard players reset @s Database
