gamemode s @s
tellraw @a[tag=OP] [{"text":"Survival Trigger","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Just set ","color":"red"},{"selector":"@s"},{"text":"'s gamemode to Survival","color":"red"}]
tellraw @s [{"text":"There you go!","color":"blue"}]
scoreboard players enable @a Survival
scoreboard players set @s Survival 0
