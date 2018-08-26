scoreboard players add Rejoins Stats 1
scoreboard players set @s TriggerReset 1
tellraw @a [{"text":"Welcome back to ","color":"red"},{"text":"Templex","color":"dark_aqua"},{"text":", ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":"!","color":"dark_gray"}]
execute store result score Players-Online Stats run execute if entity @a
execute store result score YouTubers-Online Stats run execute if entity @a[tag=YT]
execute as @a at @s run playsound minecraft:block.note.xylophone master @s
scoreboard players add @a Karma 30
scoreboard players add @a TC 15
scoreboard players reset @s Login
# Team Fix.
#function templex_standard:ts
