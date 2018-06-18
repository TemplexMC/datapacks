tellraw @s[scores={Karma=..1499}] [{"text":"Put that down! You don't have enough to buy that!","color":"red"}]
execute as @s[scores={Karma=..1499}] run tellraw @a[tag=OP] [{"text":"Store","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":" just tried to buy 100 TC (\u00A761500 \u00A7cKarma), but only had ","color":"red"},{"score":{"name":"@s","objective":"Karma"},"color":"gold"},{"text":" Karma Points...","color":"red"}]
scoreboard players add @s[scores={Karma=1500..}] TC 100
tellraw @s[scores={Karma=1500..}] [{"text":"Successfully bought 100 Templex Credits for 1500 Karma!","color":"green"},{"text":"\nYou now have ","color":"aqua"},{"score":{"name":"@s","objective":"TC"},"color":"gold"},{"text":" Templex Credits","color":"dark_purple"},{"text":" on your profile!","color":"aqua"}]
execute as @s[scores={Karma=1500..}] run tellraw @a[tag=OP] [{"text":"Store","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s"},{"text":" just bought 100 Templex Credits for 1500 Karma!","color":"red"}]
playsound minecraft:block.note.xylophone master @s[scores={Karma=1500..}]
scoreboard players remove @s[scores={Karma=1500..}] Karma 1500
scoreboard players reset @s Buy_100TC
scoreboard players enable @a Buy_100TC
