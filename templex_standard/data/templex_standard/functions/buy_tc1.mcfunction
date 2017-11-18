tellraw @s[score_Karma=15] [{"text":"Put that down! You don't have enough to buy that!","color":"red"}]
scoreboard players add @s[score_Karma_min=15] TC 1
tellraw @s[score_Karma_min=15] [{"text":"Added one Templex Credit to your profile!","color":"green"},{"text":"\nYou now have ","color":"aqua"},{"score":{"name":"@s","objective":"TC"},"color":"gold"},{"text":" Templex Credits","color":"dark_purple"},{"text":" on your profile!","color":"aqua"}]
execute @s[score_Karma_min=15] ~ ~ ~ tellraw @a[tag=OP] [{"text":"Store","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s"},{"text":" just bought 1 TC for 15 Karma","color":"red"}]
scoreboard players remove @s[score_Karma_min=15] Karma 15
playsound minecraft:block.note.xylophone master @s[score_Karma_min=15]
scoreboard players set @s Buy1TC 0
scoreboard players enable @a Buy1TC
