tellraw @s[scores={Karma=..14999}] [{"text":"Put that down! You don't have enough to buy that!","color":"red"}]
execute as @s[scores={Karma=..14999}] run tellraw @a[tag=OP] [{"text":"Store","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":" just tried to buy 1000 TC (\u00A7615000 \u00A7cKarma), but only had ","color":"red"},{"score":{"name":"@s","objective":"Karma"},"color":"gold"},{"text":" Karma Points...","color":"red"}]
scoreboard players add @s[scores={Karma=15000..}] TC 1000
tellraw @s[scores={Karma=15000..}] [{"text":"Successfully bought 1000 Templex Credits for 15000 Karma!","color":"green"},{"text":"\nYou now have ","color":"aqua"},{"score":{"name":"@s","objective":"TC"},"color":"gold"},{"text":" Templex Credits","color":"dark_purple"},{"text":" on your profile!","color":"aqua"}]
execute as @s[scores={Karma=15000..}] run tellraw @a[tag=OP] [{"text":"Store","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s"},{"text":" just bought 1000 Templex Credits for 15000 Karma!","color":"red"}]
playsound minecraft:block.note.xylophone master @s[scores={Karma=15000..}]
scoreboard players remove @s[scores={Karma=15000..}] Karma 15000
scoreboard players reset @s Buy_1000TC
scoreboard players enable @a Buy_1000TC
