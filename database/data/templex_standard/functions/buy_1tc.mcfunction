tellraw @s[scores={Karma=..14}] [{"text":"Put that down! You don't have enough to buy that!","color":"red"}]
execute as @s[scores={Karma=..14}] run tellraw @a[tag=OP] [{"text":"Store","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":" just tried to buy 1 TC (\u00A7615 \u00A7cKarma), but only had ","color":"red"},{"score":{"name":"@s","objective":"Karma"},"color":"gold"},{"text":" Karma Points...","color":"red"}]
scoreboard players add @s[scores={Karma=15..}] TC 1
tellraw @s[scores={Karma=15..}] [{"text":"Added one Templex Credit to your profile!","color":"green"},{"text":"\nYou now have ","color":"aqua"},{"score":{"name":"@s","objective":"TC"},"color":"gold"},{"text":" Templex Credits","color":"dark_purple"},{"text":" on your profile!","color":"aqua"}]
execute as @s[scores={Karma=15..}] run tellraw @a[tag=OP] [{"text":"Store","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s"},{"text":" just bought 1 TC for 15 Karma","color":"red"}]
scoreboard players remove @s[scores={Karma=15..}] Karma 15
playsound minecraft:block.note.xylophone master @s[scores={Karma=15..}]
scoreboard players reset @s Buy_1TC
scoreboard players enable @a Buy_1TC
