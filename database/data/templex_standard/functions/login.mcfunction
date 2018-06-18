scoreboard players add Rejoins Stats 1
scoreboard players set @s TriggerReset 1
tellraw @a [{"text":"Welcome back to ","color":"red"},{"text":"Templex","color":"dark_aqua"},{"text":", ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":"!","color":"dark_gray"}]
scoreboard players set Players-Online Stats 0
execute as @a run scoreboard players add Players-Online Stats 1
playsound minecraft:block.note.xylophone master @a
scoreboard players add @a Karma 30
scoreboard players reset @s Login

# Team Fix.
function templex_standard:ts
