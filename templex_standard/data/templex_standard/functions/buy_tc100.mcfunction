tellraw @s[score_Karma=1499] [{"text":"Put that down! You don't have enough to buy that!","color":"red"}]
scoreboard players add @s[score_Karma_min=1500] TC 100
tellraw @s[score_Karma_min=1500] [{"text":"Successfully bought 100 Templex Credits for 1500 Karma!","color":"green"},{"text":"\nYou now have ","color":"aqua"},{"score":{"name":"@s","objective":"TC"},"color":"gold"},{"text":" Templex Credits","color":"dark_purple"},{"text":" on your profile!","color":"aqua"}]
execute @s[score_Karma_min=1500] ~ ~ ~ tellraw @a[tag=OP] [{"text":"Store","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s"},{"text":" just bought 100 Templex Credits for 1500 Karma!","color":"red"}]
scoreboard players remove @s[score_Karma_min=1500] Karma 1500
playsound minecraft:block.note.xylophone master @s[score_Karma_min=150]
scoreboard players set @s Buy100TC 0
scoreboard players enable @a Buy100TC
