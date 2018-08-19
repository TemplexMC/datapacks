tellraw @s[scores={Karma=..19999}] [{"text":"Put that down! You don't have enough to buy that!","color":"red"}]
execute as @s[scores={Karma=..19999}] run tellraw @a[tag=OP] [{"text":"Store","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":" just tried to buy the Boots of Light (\u00A7620,000 \u00A7cKarma Points), but only had ","color":"red"},{"score":{"name":"@s","objective":"Karma"},"color":"gold"},{"text":" Karma Points...","color":"red"}]
give @s[scores={Karma=20000..}] minecraft:diamond_boots{display:{Name:"{\"text\":\"Boots of Light\",\"color\":\"green\"}",Lore:["This is the lamp unto your feet!"]},Enchantments:[{id:"mending",lvl:1},{id:"unbreaking",lvl:50},{id:"protection",lvl:50},{id:"blast_protection",lvl:15},{id:"fire_protection",lvl:20},{id:"projectile_protection",lvl:25},{id:"depth_strider",lvl:100},{id:"feather_falling",lvl:100}]}
tellraw @s[scores={Karma=20000..}] [{"text":"Successfully bought the Boots of Light for 20,000 Karma Points!","color":"green"},{"text":"\nYou now have ","color":"aqua"},{"score":{"name":"@s","objective":"Karma"},"color":"gold"},{"text":" Karma","color":"dark_purple"},{"text":" on your profile!","color":"aqua"}]
execute as @s[scores={Karma=20000..}] run tellraw @a[tag=OP] [{"text":"Store","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":" just bought the Boots of Light for 20,000 Karma Points!","color":"red"}]
playsound minecraft:block.note.xylophone master @s[scores={Karma=20000..}]
scoreboard players remove @s[scores={Karma=20000..}] Karma 20000
scoreboard players reset @s Buy_OP_BT
scoreboard players enable @a Buy_OP_BT
