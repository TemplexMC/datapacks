tellraw @s[scores={TC=..5599}] [{"text":"Put that down! You don't have enough to buy that!","color":"red"}]
give @s[scores={TC=5600..}] minecraft:player_head{SkullOwner:"Nitrate1"} 1
tellraw @s[scores={TC=5600..}] [{"text":"Successfully bought Nitrate's head for 5600 Karma!","color":"green"},{"text":"\nYou now have ","color":"aqua"},{"score":{"name":"@s","objective":"TC"},"color":"gold"},{"text":" Templex Credits","color":"dark_purple"},{"text":" on your profile!","color":"aqua"}]
execute as @s[scores={TC=5600..}] run tellraw @a[tag=OP] [{"text":"Store","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s"},{"text":" just bought Nitrate's head for 5600 Templex Credits!","color":"red"}]
scoreboard players remove @s[scores={TC=5600..}] TC 5600
playsound minecraft:block.note.xylophone master @s[scores={TC=5600..}]
scoreboard players set @s BuyHead_Nitrate 0
scoreboard players enable @a BuyHead_Nitrate
