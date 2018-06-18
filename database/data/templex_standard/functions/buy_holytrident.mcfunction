tellraw @s[scores={Karma=..29999}] [{"text":"Put that down! You don't have enough to buy that!","color":"red"}]
execute as @s[scores={Karma=..29999}] run tellraw @a[tag=OP] [{"text":"Store","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":" just tried to buy the Holy Trident (\u00A7630,000 \u00A7cKarma Points), but only had ","color":"red"},{"score":{"name":"@s","objective":"Karma"},"color":"gold"},{"text":" Karma Points...","color":"red"}]
give @s[scores={Karma=30000..}] minecraft:trident{display:{Name:"{\"text\":\"Holy Trident\",\"color\":\"dark_aqua\"}",Lore:["Harnest the power of the sea!"]},Enchantments:[{id:"impaling",lvl:3},{id:"loyalty",lvl:5},{id:"channeling",lvl:1},{id:"mending",lvl:1},{id:"sharpness",lvl:50},{id:"fire_aspect",lvl:10},{id:"looting",lvl:10},{id:"unbreaking",lvl:5}]}
tellraw @s[scores={Karma=30000..}] [{"text":"Successfully bought the Holy Trident for 30,000 Karma Points!","color":"green"},{"text":"\nYou now have ","color":"aqua"},{"score":{"name":"@s","objective":"Karma"},"color":"gold"},{"text":" Karma","color":"dark_purple"},{"text":" on your profile!","color":"aqua"}]
execute as @s[scores={Karma=30000..}] run tellraw @a[tag=OP] [{"text":"Store","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":" just bought the Holy Trident for 30,000 Karma Points!","color":"red"}]
playsound minecraft:block.note.xylophone master @s[scores={Karma=30000..}]
scoreboard players remove @s[scores={Karma=30000..}] Karma 30000
scoreboard players reset @s Buy_HolyTrident
scoreboard players enable @a Buy_HolyTrident
