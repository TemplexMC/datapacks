## Timely
execute store result score Players-Online Stats run execute if entity @a
execute store result score YouTubers-Online Stats run execute if entity @a[tag=YT]
# Timers
scoreboard players add Seconds Database 1
execute if score Seconds Database matches 60 run function templex_standard:mob_rate
execute if score Timer Database matches 20 as @a at @s run function templex_standard:level_check
execute if score Seconds Database matches 60 run scoreboard players add Minutes Database 1
execute if score Seconds Database matches 60 run scoreboard players set Seconds Database 0
### KP
execute if score Minutes Database matches 5 if score Seconds Database matches 0 run function templex_standard:karma
execute if score Minutes Database matches 10 if score Seconds Database matches 0 run function templex_standard:karma
execute if score Minutes Database matches 15 if score Seconds Database matches 0 run function templex_standard:karma
execute if score Minutes Database matches 20 if score Seconds Database matches 0 run function templex_standard:karma
execute if score Minutes Database matches 25 if score Seconds Database matches 0 run function templex_standard:karma
execute if score Minutes Database matches 30 if score Seconds Database matches 0 run function templex_standard:karma
execute if score Minutes Database matches 35 if score Seconds Database matches 0 run function templex_standard:karma
execute if score Minutes Database matches 40 if score Seconds Database matches 0 run function templex_standard:karma
execute if score Minutes Database matches 45 if score Seconds Database matches 0 run function templex_standard:karma
execute if score Minutes Database matches 50 if score Seconds Database matches 0 run function templex_standard:karma
execute if score Minutes Database matches 55 if score Seconds Database matches 0 run function templex_standard:karma
execute if score Minutes Database matches 60 if score Seconds Database matches 0 run function templex_standard:karma
### TC
execute if score Minutes Database matches 20 if score Seconds Database matches 0 run function templex_standard:tc
execute if score Minutes Database matches 40 if score Seconds Database matches 0 run function templex_standard:tc
execute if score Minutes Database matches 60 if score Seconds Database matches 0 run function templex_standard:tc
execute if score Minutes Database matches 60 run scoreboard players add Hours Database 1
execute if score Minutes Database matches 60 run scoreboard players set Minutes Database 0
### Has to be last.
scoreboard players set Timer Database 0
