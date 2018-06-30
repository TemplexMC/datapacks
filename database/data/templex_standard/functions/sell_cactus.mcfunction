execute as @s[nbt={Inventory:[{id:"minecraft:cactus"}]}] run tag @s add HasItems
execute as @s[tag=HasItems] store result score @s SellItems run clear @s cactus 0
execute as @s[tag=!HasItems] run tellraw @s [{"text":"No deal! You do not have enough of that to sell!","color":"red"}]
execute as @s[tag=!HasItems] run tellraw @a[tag=OP] [{"text":"Store","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":" just tried to sell 4 cactus (\u00A76100 \u00A7cKarma), but didn't have any...","color":"red"}]
execute as @s[scores={SellItems=1..3}] run tellraw @s [{"text":"No deal! You do not have enough of that to sell!","color":"red"}]
execute as @s[scores={SellItems=1..3}] run tellraw @a[tag=OP] [{"text":"Store","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":" just tried to sell 4 cactus (\u00A76100 \u00A7cKarma), but only had ","color":"red"},{"score":{"name":"@s","objective":"SellItem"},"color":"gold"},{"text":" cactus...","color":"red"}]
execute as @s[scores={SellItems=4..}] run scoreboard players add @s Karma 100
execute as @s[scores={SellItems=4..}] run tellraw @s [{"text":"Successfully sold 4 cactus for 100 Karma!","color":"green"},{"text":"\nYou now have ","color":"aqua"},{"score":{"name":"@s","objective":"Karma"},"color":"gold"},{"text":" Karma","color":"dark_purple"},{"text":" on your profile!","color":"aqua"}]
execute as @s[scores={SellItems=4..}] run tellraw @a[tag=OP] [{"text":"Store","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s"},{"text":" just sold 4 cactus for 100 Karma!","color":"red"}]
execute as @s[scores={SellItems=4..}] run clear @s cactus 4
execute as @s[scores={SellItems=4..}] run playsound minecraft:block.note.xylophone master @s
scoreboard players reset @s Sell_Cactus
scoreboard players enable @a Sell_Cactus
scoreboard players set @s SellItems 0
tag @s remove HasItems
