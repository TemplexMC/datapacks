tellraw @s[scores={Karma=..199}] [{"text":"Put that down! You don't have enough to buy that!","color":"red"}]
give @s[scores={Karma=200..}] arrow 16
tellraw @s[scores={Karma=200..}] [{"text":"Successfully bought 16 arrows for 200 Karma!","color":"green"},{"text":"\nYou now have ","color":"aqua"},{"score":{"name":"@s","objective":"TC"},"color":"gold"},{"text":" Templex Credits","color":"dark_purple"},{"text":" on your profile!","color":"aqua"}]
execute as @s[scores={Karma=200..}] run tellraw @a[tag=OP] [{"text":"Store","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s"},{"text":" just bought 16 arrows for 200 Karma!","color":"red"}]
scoreboard players remove @s[scores={Karma=200..}] Karma 200
playsound minecraft:block.note.xylophone master @s[scores={Karma=200..}]
scoreboard players set @s Buy_Arrow 0
scoreboard players enable @a Buy_Arrow
