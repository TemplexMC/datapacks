# Getters.
execute as @s[tag=hasElf] run tag @s add buyable
execute as @s[tag=hasElf] if score @s ElvenEff = @s ElvenLevel run tag @s remove buyable
execute as @s[tag=hasElf] if score @s ElvenEff >= @s ElvenLevel run tag @s remove buyable
# Doers.
execute as @s[tag=!hasElf] run tellraw @s [{"text":"I'm sorry, but you do not have the Elf Clas...","color":"red"}]
execute as @s[tag=!hasElf] run tellraw @a[tag=OP] [{"text":"\u00A76Class Upgrader \u00A78: "},{"selector":"@s","color":"green"},{"text":" just tried upgrading the Elf Class, but didn't have that class...","color":"red"}]

execute as @s[tag=hasElf] as @s[tag=!buyable] run tellraw @s [{"text":"I'm sorry, but you have maxed out your Elven Efficiency for your current Elven Level... Please upgrade your Elven Level and then come back!","color":"red"}]

execute as @s[tag=hasElf] as @s[tag=buyable] run scoreboard players set MULT Up_Elf_Eff 3
execute as @s[tag=hasElf] as @s[tag=buyable] run scoreboard players set DIV Up_Elf_Eff 2
execute as @s[tag=hasElf] as @s[tag=buyable] run scoreboard players set ADD Up_Elf_Eff 500
execute as @s[tag=hasElf] as @s[tag=buyable] run scoreboard players operation RAM Up_Elf_Eff = @s ElvenEff
execute as @s[tag=hasElf] as @s[tag=buyable] run scoreboard players operation RAM Up_Elf_Eff *= MULT Up_Elf_Eff
execute as @s[tag=hasElf] as @s[tag=buyable] run scoreboard players operation RAM Up_Elf_Eff /= DIV Up_Elf_Eff
execute as @s[tag=hasElf] as @s[tag=buyable] run scoreboard players operation RAM Up_Elf_Eff += ADD Up_Elf_Eff
execute as @s[tag=hasElf] as @s[tag=buyable] run scoreboard players operation FIN Up_Elf_Eff = @s TC
execute as @s[tag=hasElf] as @s[tag=buyable] run scoreboard players operation FIN Up_Elf_Eff -= RAM Up_Elf_Eff
execute as @s[tag=hasElf] as @s[tag=buyable] run scoreboard players operation @e[name=Proxy1,type=armor_stand] Up_Elf_Eff = FIN Up_Elf_Eff
execute as @s[tag=hasElf] as @s[tag=buyable] if entity @e[name=Proxy1,type=armor_stand,limit=1,scores={Up_Elf_Eff=..-1}] run tellraw @s [{"text":"You don't have enough to upgrade your Elf Eff...","color":"red"}]
execute as @s[tag=hasElf] as @s[tag=buyable] if entity @e[name=Proxy1,type=armor_stand,limit=1,scores={Up_Elf_Eff=..-1}] run tellraw @a[tag=OP] [{"text":"\u00A76Class Upgrader \u00A78: "},{"selector":"@s","color":"green"},{"text":" just tried to upgrade their Elf Efficiency, but didn't have enough TC...","color":"red"}]
execute as @s[tag=hasElf] as @s[tag=buyable] if entity @e[name=Proxy1,type=armor_stand,limit=1,scores={Up_Elf_Eff=0..}] run scoreboard players add @s ElvenEff 1
execute as @s[tag=hasElf] as @s[tag=buyable] if entity @e[name=Proxy1,type=armor_stand,limit=1,scores={Up_Elf_Eff=0..}] run scoreboard players operation @s TC -= RAM Up_Elf_Eff
execute as @s[tag=hasElf] as @s[tag=buyable] if entity @e[name=Proxy1,type=armor_stand,limit=1,scores={Up_Elf_Eff=0..}] run tellraw @s [{"text":"Successfully upgraded your Elf Efficiency! You now have efficiency level of ","color":"green"},{"score":{"name":"@s","objective":"ElvenEff"},"color":"gold"},{"text":".","color":"green"}]
execute as @s[tag=hasElf] as @s[tag=buyable] if entity @e[name=Proxy1,type=armor_stand,limit=1,scores={Up_Elf_Eff=0..}] run tellraw @a[tag=OP] [{"text":"\u00A76Class Upgrader \u00A78: "},{"selector":"@s","color":"green"},{"text":" just upgraded thier Elf Efficiency to level ","color":"red"},{"score":{"name":"@s","objective":"ElvenEff"},"color":"gold"},{"text":".","color":"red"}]

execute as @s[tag=hasElf] as @s[tag=buyable] run scoreboard players set MULT Up_Elf_Eff 3
execute as @s[tag=hasElf] as @s[tag=buyable] run scoreboard players set DIV Up_Elf_Eff 2
execute as @s[tag=hasElf] as @s[tag=buyable] run scoreboard players set ADD Up_Elf_Eff 500
execute as @s[tag=hasElf] as @s[tag=buyable] run scoreboard players operation RAM Up_Elf_Eff = @s ElvenEff
execute as @s[tag=hasElf] as @s[tag=buyable] run scoreboard players operation RAM Up_Elf_Eff *= MULT Up_Elf_Eff
execute as @s[tag=hasElf] as @s[tag=buyable] run scoreboard players operation RAM Up_Elf_Eff /= DIV Up_Elf_Eff
execute as @s[tag=hasElf] as @s[tag=buyable] run scoreboard players operation RAM Up_Elf_Eff += ADD Up_Elf_Eff
execute as @s[tag=hasElf] as @s[tag=buyable] run scoreboard players operation ElvenEffUpCost Up_Elf_Eff = RAM Up_Elf_Eff
## Resetters.
scoreboard players reset @s Up_Elf_Eff
scoreboard players enable @s Up_Elf_Eff
