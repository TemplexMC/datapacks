tellraw @s[scores={Karma=..59999}] [{"text":"Put that down! You don't have enough to buy that!","color":"red"}]
execute as @s[scores={Karma=..59999}] run tellraw @a[tag=OP] [{"text":"Store","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":" just tried to buy the Holy Trident (\u00A7660,000 \u00A7cKarma Points), but only had ","color":"red"},{"score":{"name":"@s","objective":"Karma"},"color":"gold"},{"text":" Karma Points...","color":"red"}]
give @s[scores={Karma=60000..}] minecraft:trident{display:{Name:"{\"text\":\"Holy Trident\",\"color\":\"dark_aqua\"}",Lore:["Harnest the power of the sea!"]},ench:[{id:65,lvl:3},{id:66,lvl:5},{id:68,lvl:1},{id:70,lvl:1},{id:16,lvl:50},{id:20,lvl:10},{id:21,lvl:10}]}
tellraw @s[scores={Karma=60000..}] [{"text":"Successfully bought the Holy Trident for 60,000 Karma Points!","color":"green"},{"text":"\nYou now have ","color":"aqua"},{"score":{"name":"@s","objective":"Karma"},"color":"gold"},{"text":" Karma","color":"dark_purple"},{"text":" on your profile!","color":"aqua"}]
execute as @s[scores={Karma=60000..}] run tellraw @a[tag=OP] [{"text":"Store","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":" just bought the Holy Trident for 60,000 Karma Points!","color":"red"}]
playsound minecraft:block.note.xylophone master @s[scores={Karma=60000..}]
scoreboard players remove @s[scores={Karma=60000..}] Karma 60000
scoreboard players set @s Buy_HolyTrident 0
scoreboard players enable @a Buy_HolyTrident
