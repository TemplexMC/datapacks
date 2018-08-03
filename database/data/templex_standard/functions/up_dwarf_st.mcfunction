# Getters.
execute as @s[tag=hasDwarf] run tag @s add buyable
execute as @s[tag=hasDwarf] if score @s DwarvenStrength = @s DwarvenLevel run tag @s remove buyable
execute as @s[tag=hasDwarf] if score @s DwarvenStrength >= @s DwarvenLevel run tag @s remove buyable
# Doers.
execute as @s[tag=!hasDwarf] run tellraw @s [{"text":"I'm sorry, but you do not have the Dwarf Class...","color":"red"}]
execute as @s[tag=!hasDwarf] run tellraw @a[tag=OP] [{"text":"\u00A76Class Upgrader \u00A78: "},{"selector":"@s","color":"green"},{"text":" just tried upgrading the Dwarf Class, but didn't have that class...","color":"red"}]

execute as @s[tag=hasDwarf] as @s[tag=!buyable] run tellraw @s [{"text":"I'm sorry, but you have maxed out your Dwarven Strength for your current Dwarven Level... Please upgrade your Dwarven Level and then come back!","color":"red"}]

execute as @s[tag=hasDwarf] as @s[tag=buyable] run scoreboard players set MULT Up_Dwarf_St 3
execute as @s[tag=hasDwarf] as @s[tag=buyable] run scoreboard players set DIV Up_Dwarf_St 2
execute as @s[tag=hasDwarf] as @s[tag=buyable] run scoreboard players set ADD Up_Dwarf_St 500
execute as @s[tag=hasDwarf] as @s[tag=buyable] run scoreboard players operation RAM Up_Dwarf_St = @s DwarvenStrength
execute as @s[tag=hasDwarf] as @s[tag=buyable] run scoreboard players operation RAM Up_Dwarf_St *= MULT Up_Dwarf_St
execute as @s[tag=hasDwarf] as @s[tag=buyable] run scoreboard players operation RAM Up_Dwarf_St /= DIV Up_Dwarf_St
execute as @s[tag=hasDwarf] as @s[tag=buyable] run scoreboard players operation RAM Up_Dwarf_St += ADD Up_Dwarf_St
execute as @s[tag=hasDwarf] as @s[tag=buyable] run scoreboard players operation FIN Up_Dwarf_St = @s TC
execute as @s[tag=hasDwarf] as @s[tag=buyable] run scoreboard players operation FIN Up_Dwarf_St -= RAM Up_Dwarf_St
execute as @s[tag=hasDwarf] as @s[tag=buyable] run scoreboard players operation @e[name=Proxy1,type=armor_stand] Up_Dwarf_St = FIN Up_Dwarf_St
execute as @s[tag=hasDwarf] as @s[tag=buyable] if entity @e[name=Proxy1,type=armor_stand,limit=1,scores={Up_Dwarf_St=..-1}] run tellraw @s [{"text":"You don't have enough to upgrade your Dwarf Strength...","color":"red"}]
execute as @s[tag=hasDwarf] as @s[tag=buyable] if entity @e[name=Proxy1,type=armor_stand,limit=1,scores={Up_Dwarf_St=..-1}] run tellraw @a[tag=OP] [{"text":"\u00A76Class Upgrader \u00A78: "},{"selector":"@s","color":"green"},{"text":" just tried to upgrade their Dwarf Strength, but didn't have enough TC...","color":"red"}]
execute as @s[tag=hasDwarf] as @s[tag=buyable] if entity @e[name=Proxy1,type=armor_stand,limit=1,scores={Up_Dwarf_St=0..}] run scoreboard players add @s DwarvenStrength 1
execute as @s[tag=hasDwarf] as @s[tag=buyable] if entity @e[name=Proxy1,type=armor_stand,limit=1,scores={Up_Dwarf_St=0..}] run scoreboard players operation @s TC -= RAM Up_Dwarf_St
execute as @s[tag=hasDwarf] as @s[tag=buyable] if entity @e[name=Proxy1,type=armor_stand,limit=1,scores={Up_Dwarf_St=0..}] run tellraw @s [{"text":"Successfully upgraded your Dwarf Strength! You now have Strength level of ","color":"green"},{"score":{"name":"@s","objective":"DwarvenStrength"},"color":"gold"},{"text":".","color":"green"}]
execute as @s[tag=hasDwarf] as @s[tag=buyable] if entity @e[name=Proxy1,type=armor_stand,limit=1,scores={Up_Dwarf_St=0..}] run tellraw @a[tag=OP] [{"text":"\u00A76Class Upgrader \u00A78: "},{"selector":"@s","color":"green"},{"text":" just upgraded thier Dwarf Strength to level ","color":"red"},{"score":{"name":"@s","objective":"DwarvenStrength"},"color":"gold"},{"text":".","color":"red"}]

execute as @s[tag=hasDwarf] as @s[tag=buyable] run scoreboard players set MULT Up_Dwarf_St 3
execute as @s[tag=hasDwarf] as @s[tag=buyable] run scoreboard players set DIV Up_Dwarf_St 2
execute as @s[tag=hasDwarf] as @s[tag=buyable] run scoreboard players set ADD Up_Dwarf_St 500
execute as @s[tag=hasDwarf] as @s[tag=buyable] run scoreboard players operation RAM Up_Dwarf_St = @s DwarvenStrength
execute as @s[tag=hasDwarf] as @s[tag=buyable] run scoreboard players operation RAM Up_Dwarf_St *= MULT Up_Dwarf_St
execute as @s[tag=hasDwarf] as @s[tag=buyable] run scoreboard players operation RAM Up_Dwarf_St /= DIV Up_Dwarf_St
execute as @s[tag=hasDwarf] as @s[tag=buyable] run scoreboard players operation RAM Up_Dwarf_St += ADD Up_Dwarf_St
execute as @s[tag=hasDwarf] as @s[tag=buyable] run scoreboard players operation DwarvenStUpCost Up_Dwarf_St = RAM Up_Dwarf_St
## Resetters.
scoreboard players reset @s Up_Dwarf_St
scoreboard players enable @s Up_Dwarf_St
