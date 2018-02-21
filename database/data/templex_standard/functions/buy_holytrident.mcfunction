tellraw @s[scores={TC=..3999}] [{"text":"Put that down! You don't have enough to buy that!","color":"red"}]
give @s[scores={TC=4000..}] minecraft:trident{display:{Name:"{\"text\":\"Holy Trident\",\"color\":\"dark_aqua\"}",Lore:["Harnest the power of the sea!"]},ench:[{id:65,lvl:3},{id:66,lvl:5},{id:67,lvl:3},{id:68,lvl:1}]}
tellraw @s[scores={TC=4000..}] [{"text":"Successfully bought the Holy Trident for 4000 Templex Credits!","color":"green"},{"text":"\nYou now have ","color":"aqua"},{"score":{"name":"@s","objective":"TC"},"color":"gold"},{"text":" Templex Credits","color":"dark_purple"},{"text":" on your profile!","color":"aqua"}]
execute as @s[scores={TC=4000..}] run tellraw @a[tag=OP] [{"text":"Store","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":" just bought the Holy Trident for 4000 Templex Credits!","color":"red"}]
playsound minecraft:block.note.xylophone master @s[scores={TC=4000..}]
scoreboard players remove @s[scores={TC=4000..}] TC 4000
scoreboard players set @s Buy_HolyTrident 0
scoreboard players enable @a Buy_HolyTrident
