tellraw @s[scores={Karma=..199}] [{"text":"Put that down! You don't have enough to buy that!","color":"red"}]
give @s[scores={Karma=200..}] iron_ingot 4
tellraw @s[scores={Karma=200..}] [{"text":"Successfully bought 4 iron for 200 Karma!","color":"green"},{"text":"\nYou now have ","color":"aqua"},{"score":{"name":"@s","objective":"TC"},"color":"gold"},{"text":" Templex Credits","color":"dark_purple"},{"text":" on your profile!","color":"aqua"}]
execute as @s[scores={Karma=200..}] run tellraw @a[tag=OP] [{"text":"Store","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s"},{"text":" just bought 4 coal for 200 Karma!","color":"red"}]
scoreboard players remove @s[scores={Karma=200..}] Karma 200
playsound minecraft:block.note.xylophone master @s[scores={Karma=200..}]
scoreboard players set @s Buy_Iron 0
scoreboard players enable @a Buy_Iron
