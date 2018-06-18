tellraw @s[scores={Karma=..14999}] [{"text":"Put that down! You don't have enough to buy that!","color":"red"}]
execute as @s[scores={Karma=..14999}] run tellraw @a[tag=OP] [{"text":"Store","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":" just tried to buy an Iron Farm (\u00A7615,000 \u00A7cKarma Points), but only had ","color":"red"},{"score":{"name":"@s","objective":"Karma"},"color":"gold"},{"text":" Karma Points...","color":"red"}]
give @s[scores={Karma=15000..}] minecraft:endermite_spawn_egg{display:{Name:"{\"text\":\"IronFarm\",\"color\":\"gold\"}",Lore:["Place this where you want the farm to be."]}}
tellraw @s[scores={Karma=15000..}] [{"text":"Successfully bought an Iron Farm for 15,000 Karma Points!","color":"green"},{"text":"\nYou now have ","color":"aqua"},{"score":{"name":"@s","objective":"Karma"},"color":"gold"},{"text":" Karma","color":"dark_purple"},{"text":" on your profile!","color":"aqua"}]
execute as @s[scores={Karma=15000..}] run tellraw @a[tag=OP] [{"text":"Store","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":" just bought an Iron Farm for 15,000 Karma Points!","color":"red"}]
playsound minecraft:block.note.xylophone master @s[scores={Karma=15000..}]
scoreboard players remove @s[scores={Karma=15000..}] Karma 15000
scoreboard players reset @s Buy_IronFarm
scoreboard players enable @a Buy_IronFarm
