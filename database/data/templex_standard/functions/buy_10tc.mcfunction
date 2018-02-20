tellraw @s[scores={Karma=..149}] [{"text":"Put that down! You don't have enough to buy that!","color":"red"}]
scoreboard players add @s[scores={Karma=150..}] TC 10
tellraw @s[scores={Karma=150..}] [{"text":"Successfully bought 10 Templex Credits for 150 Karma!","color":"green"},{"text":"\nYou now have ","color":"aqua"},{"score":{"name":"@s","objective":"TC"},"color":"gold"},{"text":" Templex Credits","color":"dark_purple"},{"text":" on your profile!","color":"aqua"}]
execute as @s[scores={Karma=150..}] run tellraw @a[tag=OP] [{"text":"Store","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s"},{"text":" just bought 10 TC for 150 Karma!","color":"red"}]
scoreboard players remove @s[scores={Karma=150..}] Karma 150
playsound minecraft:block.note.xylophone master @s[scores={Karma=150..}]
scoreboard players set @s Buy_10TC 0
scoreboard players enable @a Buy_10TC
