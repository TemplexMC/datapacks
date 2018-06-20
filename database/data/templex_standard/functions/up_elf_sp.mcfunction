# Doers.
execute as @s[tag=!hasElf] run tellraw @s [{"text":"I'm sorry, but you do not have the Elf Clas...","color":"red"}]
execute as @s[tag=!hasElf] run tellraw @a[tag=OP] [{"text":"\u00A76Class Upgrader \u00A78: "},{"selector":"@s","color":"green"},{"text":" just tried upgrading the Elf Class, but didn't have that class...","color":"red"}]
execute as @s[tag=hasElf] run scoreboard players set MULT Up_Elf_Sp 3
execute as @s[tag=hasElf] run scoreboard players set DIV Up_Elf_Sp 2
execute as @s[tag=hasElf] run scoreboard players set ADD Up_Elf_Sp 500
execute as @s[tag=hasElf] run scoreboard players operation RAM Up_Elf_Sp = @s ElvenSpeed
execute as @s[tag=hasElf] run scoreboard players operation RAM Up_Elf_Sp *= MULT Up_Elf_Sp
execute as @s[tag=hasElf] run scoreboard players operation RAM Up_Elf_Sp /= DIV Up_Elf_Sp
execute as @s[tag=hasElf] run scoreboard players operation RAM Up_Elf_Sp += ADD Up_Elf_Sp
execute as @s[tag=hasElf] run scoreboard players operation FIN Up_Elf_Sp = @s TC
execute as @s[tag=hasElf] run scoreboard players operation FIN Up_Elf_Sp -= RAM Up_Elf_Sp
execute as @s[tag=hasElf] run scoreboard players operation @e[name=Proxy1,type=armor_stand] Up_Elf_Sp = FIN Up_Elf_Sp
execute as @s[tag=hasElf] if entity @e[name=Proxy1,type=armor_stand,limit=1,scores={Up_Elf_Sp=..-1}] run tellraw @s [{"text":"You don't have enough to upgrade your Elf Speed...","color":"red"}]
execute as @s[tag=hasElf] if entity @e[name=Proxy1,type=armor_stand,limit=1,scores={Up_Elf_Sp=..-1}] run tellraw @a[tag=OP] [{"text":"\u00A76Class Upgrader \u00A78: "},{"selector":"@s","color":"green"},{"text":" just tried to upgrade their Elf Speed, but didn't have enough TC...","color":"red"}]
execute as @s[tag=hasElf] if entity @e[name=Proxy1,type=armor_stand,limit=1,scores={Up_Elf_Sp=0..}] run scoreboard players add @s ElvenSpeed 1
execute as @s[tag=hasElf] if entity @e[name=Proxy1,type=armor_stand,limit=1,scores={Up_Elf_Sp=0..}] run scoreboard players operation @s TC -= RAM Up_Elf_Sp
execute as @s[tag=hasElf] if entity @e[name=Proxy1,type=armor_stand,limit=1,scores={Up_Elf_Sp=0..}] run tellraw @s [{"text":"Successfully upgraded your Elf Speed! You now have speed level of ","color":"green"},{"score":{"name":"@s","objective":"ElvenSpeed"},"color":"gold"},{"text":".","color":"green"}]
execute as @s[tag=hasElf] if entity @e[name=Proxy1,type=armor_stand,limit=1,scores={Up_Elf_Sp=0..}] run tellraw @a[tag=OP] [{"text":"\u00A76Class Upgrader \u00A78: "},{"selector":"@s","color":"green"},{"text":" just upgraded thier Elf Speed to level ","color":"red"},{"score":{"name":"@s","objective":"ElvenSpeed"},"color":"gold"},{"text":".","color":"red"}]

execute as @s[tag=hasElf] run scoreboard players set MULT Up_Elf_Sp 3
execute as @s[tag=hasElf] run scoreboard players set DIV Up_Elf_Sp 2
execute as @s[tag=hasElf] run scoreboard players set ADD Up_Elf_Sp 500
execute as @s[tag=hasElf] run scoreboard players operation RAM Up_Elf_Sp = @s ElvenSpeed
execute as @s[tag=hasElf] run scoreboard players operation RAM Up_Elf_Sp *= MULT Up_Elf_Sp
execute as @s[tag=hasElf] run scoreboard players operation RAM Up_Elf_Sp /= DIV Up_Elf_Sp
execute as @s[tag=hasElf] run scoreboard players operation RAM Up_Elf_Sp += ADD Up_Elf_Sp
execute as @s[tag=hasElf] run scoreboard players operation ElvenSpUpCost Up_Elf_Sp = RAM Up_Elf_Sp
## Resetters.
scoreboard players reset @s Up_Elf_Sp
scoreboard players enable @s Up_Elf_Sp
