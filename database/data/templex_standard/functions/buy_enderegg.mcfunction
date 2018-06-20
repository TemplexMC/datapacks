tellraw @s[scores={TC=..4999}] [{"text":"Put that down! You don't have enough to buy that!","color":"red"}]
execute as @s[scores={TC=..4999}] run tellraw @a[tag=OP] [{"text":"Store","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":" just tried to buy an Ender Egg (\u00A765000 \u00A7cTemplex Credits), but only had ","color":"red"},{"score":{"name":"@s","objective":"TC"},"color":"gold"},{"text":" Templex Credits...","color":"red"}]
give @s[scores={TC=5000..}] minecraft:dragon_egg{display:{Name:"{\"text\":\"Only I can be a Dragon Born\",\"color\":\"light_purple\"}",Lore:["MUAHAHAHAHA!"]}}
tellraw @s[scores={TC=5000..}] [{"text":"Successfully bought an Ender Egg for 5000 Templex Credits!","color":"green"},{"text":"\nYou now have ","color":"aqua"},{"score":{"name":"@s","objective":"TC"},"color":"gold"},{"text":" Templex Credits","color":"dark_purple"},{"text":" on your profile!","color":"aqua"}]
execute as @s[scores={TC=5000..}] run tellraw @a[tag=OP] [{"text":"Store","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s"},{"text":" just bought an Ender Egg for 5000 Templex Credits!","color":"red"}]
scoreboard players remove @s[scores={TC=5000..}] TC 5000
playsound minecraft:block.note.xylophone master @s[scores={TC=5000..}]
scoreboard players reset @s Buy_EnderEgg
scoreboard players enable @a Buy_EnderEgg
