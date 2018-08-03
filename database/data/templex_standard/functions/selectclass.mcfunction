# Start select_class.mcfunction file
#- No Class.
execute as @s[tag=!hasClass] run tellraw @s [{"text":"Sorry, but you do not have a class!","color":"red"}]
#insert OP Alert here.
#- Has Class.
## HELP
execute as @s[tag=hasClass] as @s[scores={SelectClass=1}] run tellraw @s [{"text":"\u00A7cSpecify different classes\u00A78: \u00A762 \u00A77--> \u00A7aElf\u00A78, \u00A763 \u00A77--> \u00A70Dwarf\u00A78, \u00A764 \u00A77--> \u00A7bGiant\u00A78."}]
## ELF
# Nope.
execute as @s[tag=hasClass] as @s[scores={SelectClass=2}] as @s[tag=!hasElf] run tellraw @s [{"text":"Sorry, but you do not have that class...","color":"red"}]
# Yep.
execute as @s[tag=hasClass] as @s[scores={SelectClass=2}] as @s[tag=hasElf] run tellraw @s [{"text":"\u00A7dSelected \u00A72Elf\u00A78!"}]
execute as @s[tag=hasClass] as @s[scores={SelectClass=2}] as @s[tag=hasElf] run tag @s add selElf
execute as @s[tag=hasClass] as @s[scores={SelectClass=2}] as @s[tag=hasElf] run tag @s remove selDwarf
execute as @s[tag=hasClass] as @s[scores={SelectClass=2}] as @s[tag=hasElf] run tag @s remove selGiant
## ELF
# Nope.
execute as @s[tag=hasClass] as @s[scores={SelectClass=3}] as @s[tag=!hasDwarf] run tellraw @s [{"text":"Sorry, but you do not have that class...","color":"red"}]
# Yep.
execute as @s[tag=hasClass] as @s[scores={SelectClass=3}] as @s[tag=hasDwarf] run tellraw @s [{"text":"\u00A7dSelected \u00A70Dwarf\u00A78!"}]
execute as @s[tag=hasClass] as @s[scores={SelectClass=3}] as @s[tag=hasDwarf] run tag @s remove selElf
execute as @s[tag=hasClass] as @s[scores={SelectClass=3}] as @s[tag=hasDwarf] run tag @s add selDwarf
execute as @s[tag=hasClass] as @s[scores={SelectClass=3}] as @s[tag=hasDwarf] run tag @s remove selGiant
## MORE
# Teller.
execute as @s[tag=hasClass] as @s[scores={SelectClass=4..}] run tellraw @s [{"text":"Sorry, but that is not a current class...","color":"red"}]
#- Reset
scoreboard players reset @s SelectClass
scoreboard players enable @a SelectClass
