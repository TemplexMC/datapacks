# Triers.
execute as @s[tag=hasClass] as @s[scores={TC=10..}] at @s run function templex_standard:mission_go

execute as @s[tag=hasClass] as @s[scores={TC=..9}] at @s run tellraw @s [{"text":"You don't have the funds to go on a mission... Sorry...","color":"red"}]

execute as @s[tag=!hasClass] at @s run tellraw @s [{"text":"You don't have a class...!","color":"red"}]
# Resetters.
scoreboard players reset @s DoMission
scoreboard players enable @a DoMission
