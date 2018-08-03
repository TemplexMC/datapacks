# hasDwarf
execute as @s[tag=hasDwarf] run tellraw @s [{"text":"Sorry, but you already have that Class!","color":"red"}]
execute as @s[tag=hasDwarf] run tellraw @a[tag=OP] [{"text":"\u00A76Store \u00A78: "},{"selector":"@s","color":"green"},{"text":" just tried to buy an Dwarf Class, but already had one...","color":"red"}]
# !Enough.
execute as @s[tag=!hasDwarf] run tellraw @s[scores={TC=..299}] [{"text":"Put that down! You don't have enough to buy that!","color":"red"}]
execute as @s[tag=!hasDwarf] as @s[scores={TC=..299}] run tellraw @a[tag=OP] [{"text":"Store","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":" just tried to buy an Dwarf Class \u00A78(\u00A76300 \u00A7cTemplex Credits), but only had ","color":"red"},{"score":{"name":"@s","objective":"TC"},"color":"gold"},{"text":" Templex Credits...","color":"red"}]
# Enough.
execute as @s[tag=!hasDwarf] run tag @s[scores={TC=300..}] add buyingD
execute as @s[tag=buyingD] run tag @s[scores={TC=300..}] add hasDwarf
execute as @s[tag=buyingD] run tag @s[scores={TC=300..}] add hasClass
execute as @s[tag=buyingD] run scoreboard players set @s DwarvenLevel 1
execute as @s[tag=buyingD] run scoreboard players set @s DwarvenEff 1
execute as @s[tag=buyingD] run scoreboard players set @s DwarvenStrength 1
execute as @s[tag=buyingD] run tellraw @s[scores={TC=300..}] [{"text":"Successfully bought the Dwarf Class for 300 Templex Credits!","color":"green"},{"text":"\nYou now have ","color":"aqua"},{"score":{"name":"@s","objective":"TC"},"color":"gold"},{"text":" Templex Credits","color":"dark_purple"},{"text":" on your profile!","color":"aqua"}]
execute as @s[tag=buyingD] run execute as @s[scores={TC=300..}] run tellraw @a[tag=OP] [{"text":"Store","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s"},{"text":" just bought the Dwarf Class for 300 Templex Credits!","color":"red"}]
execute as @s[tag=buyingD] run playsound minecraft:block.note.xylophone master @s[scores={TC=300..}]
execute as @s[tag=buyingD] run scoreboard players remove @s[scores={TC=300..}] TC 300
execute as @s[tag=buyingD] run tag @s remove buyingD
# Resetters.
scoreboard players reset @s Buy_Class_Dwarf
scoreboard players enable @a Buy_Class_Dwarf
