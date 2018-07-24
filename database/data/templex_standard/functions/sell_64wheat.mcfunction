execute as @s[nbt={Inventory:[{id:"minecraft:wheat"}]}] run tag @s add HasItems
execute as @s[tag=HasItems] store result score @s SellItems run clear @s wheat 0
execute as @s[tag=!HasItems] run tellraw @s [{"text":"No deal! You do not have enough of that to sell!","color":"red"}]
execute as @s[tag=!HasItems] run tellraw @a[tag=OP] [{"text":"Store","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":" just tried to sell 64 wheat (\u00A761280 \u00A7cKarma), but didn't have any...","color":"red"}]
execute as @s[scores={SellItems=1..63}] run tellraw @s [{"text":"No deal! You do not have enough of that to sell!","color":"red"}]
execute as @s[scores={SellItems=1..63}] run tellraw @a[tag=OP] [{"text":"Store","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":" just tried to sell 64 wheat (\u00A761280 \u00A7cKarma), but only had ","color":"red"},{"score":{"name":"@s","objective":"SellItem"},"color":"gold"},{"text":" wheat...","color":"red"}]
execute as @s[scores={SellItems=64..}] run scoreboard players add @s Karma 1280
execute as @s[scores={SellItems=64..}] run tellraw @s [{"text":"Successfully sold 64 wheat for 1280 Karma!","color":"green"},{"text":"\nYou now have ","color":"aqua"},{"score":{"name":"@s","objective":"Karma"},"color":"gold"},{"text":" Karma","color":"dark_purple"},{"text":" on your profile!","color":"aqua"}]
execute as @s[scores={SellItems=64..}] run tellraw @a[tag=OP] [{"text":"Store","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s"},{"text":" just sold 64 wheat for 1280 Karma!","color":"red"}]
execute as @s[scores={SellItems=64..}] run clear @s wheat 64
execute as @s[scores={SellItems=64..}] run playsound minecraft:block.note.xylophone master @s
scoreboard players reset @s Sell_64Wheat
scoreboard players enable @a Sell_64Wheat
scoreboard players set @s SellItems 0
tag @s remove HasItems
