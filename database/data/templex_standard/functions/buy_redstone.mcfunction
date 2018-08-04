tellraw @s[scores={Karma=..399}] [{"text":"Put that down! You don't have enough to buy that!","color":"red"}]
execute as @s[scores={Karma=..399}] run tellraw @a[tag=OP] [{"text":"Store","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":" just tried to buy 4 redstone (\u00A76400 \u00A7cKarma), but only had ","color":"red"},{"score":{"name":"@s","objective":"Karma"},"color":"gold"},{"text":" Karma Points...","color":"red"}]
give @s[scores={Karma=400..}] redstone 4
tellraw @s[scores={Karma=400..}] [{"text":"Successfully bought 4 redstone for 400 Karma!","color":"green"},{"text":"\nYou now have ","color":"aqua"},{"score":{"name":"@s","objective":"Karma"},"color":"gold"},{"text":" Karma","color":"dark_purple"},{"text":" on your profile!","color":"aqua"}]
execute as @s[scores={Karma=400..}] run tellraw @a[tag=OP] [{"text":"Store","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s"},{"text":" just bought 4 redstone for 400 Karma!","color":"red"}]
scoreboard players remove @s[scores={Karma=400..}] Karma 400
playsound minecraft:block.note.xylophone master @s[scores={Karma=400..}]
scoreboard players reset @s Buy_Redstone
scoreboard players enable @a Buy_Redstone
