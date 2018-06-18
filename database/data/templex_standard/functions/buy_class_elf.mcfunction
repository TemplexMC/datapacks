tellraw @s[scores={TC=..299}] [{"text":"Put that down! You don't have enough to buy that!","color":"red"}]
execute as @s[scores={TC=..299}] run tellraw @a[tag=OP] [{"text":"Store","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":" just tried to buy an Elf Class \u00A78(\u00A76300 \u00A7cTemplex Credits), but only had ","color":"red"},{"score":{"name":"@s","objective":"TC"},"color":"gold"},{"text":" Templex Credits...","color":"red"}]
tag @s[scores={TC=300..}] add hasElf
scoreboard players set @s[scores={TC=300..}] ElfenLevel 1
tellraw @s[scores={TC=300..}] [{"text":"Successfully bought the Elf Class for 300 Templex Credits!","color":"green"},{"text":"\nYou now have ","color":"aqua"},{"score":{"name":"@s","objective":"TC"},"color":"gold"},{"text":" Templex Credits","color":"dark_purple"},{"text":" on your profile!","color":"aqua"}]
execute as @s[scores={TC=300..}] run tellraw @a[tag=OP] [{"text":"Store","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s"},{"text":" just bought the Elf Class for 300 Templex Credits!","color":"red"}]
scoreboard players remove @s[scores={TC=300..}] TC 300
playsound minecraft:block.note.xylophone master @s[scores={TC=300..}]
scoreboard players reset @s Buy_Class_Elf
scoreboard players enable @a Buy_Class_Elf
