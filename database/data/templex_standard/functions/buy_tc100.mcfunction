tellraw @s[scores={Karma=..1500}] [{"text":"Put that down! You don't have enough to buy that!","color":"red"}]
scoreboard players add @s[scores={Karma=1500..}] TC 100
tellraw @s[scores={Karma=1500..}] [{"text":"Successfully bought 100 Templex Credits for 1500 Karma!","color":"green"},{"text":"\nYou now have ","color":"aqua"},{"score":{"name":"@s","objective":"TC"},"color":"gold"},{"text":" Templex Credits","color":"dark_purple"},{"text":" on your profile!","color":"aqua"}]
execute as @s[scores={Karma=1500..}] run tellraw @a[tag=OP] [{"text":"Store","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s"},{"text":" just bought 100 Templex Credits for 1500 Karma!","color":"red"}]
scoreboard players remove @s[scores={Karma=1500..}] Karma 1500
playsound minecraft:block.note.xylophone master @s[scores={Karma=1500..}]
scoreboard players set @s Buy100TC 0
scoreboard players enable @a Buy100TC
