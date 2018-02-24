tellraw @s[scores={Karma=..2399}] [{"text":"Put that down! You don't have enough to buy that!","color":"red"}]
execute as @s[scores={Karma=..2399}] run tellraw @a[tag=OP] [{"text":"Store","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":" just tried to buy 4 emeralds (\u00A762400 \u00A7cKarma), but only had ","color":"red"},{"score":{"name":"@s","objective":"Karma"},"color":"gold"},{"text":" Karma Points...","color":"red"}]
give @s[scores={Karma=2400..}] emerald 4
tellraw @s[scores={Karma=2400..}] [{"text":"Successfully bought 4 emeralds for 2400 Karma!","color":"green"},{"text":"\nYou now have ","color":"aqua"},{"score":{"name":"@s","objective":"TC"},"color":"gold"},{"text":" Templex Credits","color":"dark_purple"},{"text":" on your profile!","color":"aqua"}]
execute as @s[scores={Karma=2400..}] run tellraw @a[tag=OP] [{"text":"Store","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s"},{"text":" just bought 4 emeralds for 2400 Karma!","color":"red"}]
scoreboard players remove @s[scores={Karma=2400..}] Karma 2400
playsound minecraft:block.note.xylophone master @s[scores={Karma=2400..}]
scoreboard players set @s Buy_Emeralds 0
scoreboard players enable @a Buy_Emeralds
