## None.
#  Teller.
execute as @s[scores={UpgradeClass=1}] run tellraw @s [{"text":"\u00A7cSpecify different classes\u00A78: \u00A762 \u00A77--> \u00A7aElf\u00A78, \u00A763 \u00A77--> \u00A70Dwarf\u00A78, \u00A764 \u00A77--> \u00A7bGiant\u00A78."}]
execute as @s[scores={UpgradeClass=1}] run tellraw @a[tag=OP] [{"text":"\u00A76Class Upgrader \u00A78: "},{"selector":"@s","color":"green"},{"text":" was just shown a list of upgradable classes.","color":"red"}]
## Elf.
#  Not enough.
execute as @s[scores={UpgradeClass=2}] as @s[tag=!hasElf] run tellraw @s [{"text":"I'm sorry, but you do not have the Elf Class...","color":"red"}]
execute as @s[scores={UpgradeClass=2}] as @s[tag=!hasElf] run tellraw @a[tag=OP] [{"text":"\u00A76Class Upgrader \u00A78: "},{"selector":"@s","color":"green"},{"text":" just tried upgrading the Elf Class, but didn't have that class...","color":"red"}]
execute as @s[scores={UpgradeClass=2}] as @s[tag=hasElf] run scoreboard players set MULT UpgradeClass 3
execute as @s[scores={UpgradeClass=2}] as @s[tag=hasElf] run scoreboard players set DIV UpgradeClass 2
execute as @s[scores={UpgradeClass=2}] as @s[tag=hasElf] run scoreboard players set ADD UpgradeClass 500
execute as @s[scores={UpgradeClass=2}] as @s[tag=hasElf] run scoreboard players operation RAM UpgradeClass = @s ElvenLevel
execute as @s[scores={UpgradeClass=2}] as @s[tag=hasElf] run scoreboard players operation RAM UpgradeClass *= MULT UpgradeClass
execute as @s[scores={UpgradeClass=2}] as @s[tag=hasElf] run scoreboard players operation RAM UpgradeClass /= DIV UpgradeClass
execute as @s[scores={UpgradeClass=2}] as @s[tag=hasElf] run scoreboard players operation RAM UpgradeClass += ADD UpgradeClass
execute as @s[scores={UpgradeClass=2}] as @s[tag=hasElf] run scoreboard players operation FIN UpgradeClass = @s TC
execute as @s[scores={UpgradeClass=2}] as @s[tag=hasElf] run scoreboard players operation FIN UpgradeClass -= RAM UpgradeClass
execute as @s[scores={UpgradeClass=2}] as @s[tag=hasElf] run scoreboard players operation @e[name=Proxy1,type=armor_stand] UpgradeClass = FIN UpgradeClass
execute as @s[scores={UpgradeClass=2}] as @s[tag=hasElf] if entity @e[name=Proxy1,type=armor_stand,limit=1,scores={UpgradeClass=..-1}] run tellraw @s [{"text":"You don't have enough to upgrade your Elf Class...","color":"red"}]
execute as @s[scores={UpgradeClass=2}] as @s[tag=hasElf] if entity @e[name=Proxy1,type=armor_stand,limit=1,scores={UpgradeClass=..-1}] run tellraw @a[tag=OP] [{"text":"\u00A76Class Upgrader \u00A78: "},{"selector":"@s","color":"green"},{"text":" just tried to upgrade their Elf Class, but didn't have enough TC...","color":"red"}]
execute as @s[scores={UpgradeClass=2}] as @s[tag=hasElf] if entity @e[name=Proxy1,type=armor_stand,limit=1,scores={UpgradeClass=0..}] run scoreboard players add @s ElvenLevel 1
execute as @s[scores={UpgradeClass=2}] as @s[tag=hasElf] if entity @e[name=Proxy1,type=armor_stand,limit=1,scores={UpgradeClass=0..}] run scoreboard players operation @s TC -= RAM UpgradeClass
execute as @s[scores={UpgradeClass=2}] as @s[tag=hasElf] if entity @e[name=Proxy1,type=armor_stand,limit=1,scores={UpgradeClass=0..}] run tellraw @s [{"text":"Successfully upgraded your Elf Class! You are now level ","color":"green"},{"score":{"name":"@s","objective":"ElvenLevel"},"color":"gold"},{"text":".","color":"green"}]
execute as @s[scores={UpgradeClass=2}] as @s[tag=hasElf] if entity @e[name=Proxy1,type=armor_stand,limit=1,scores={UpgradeClass=0..}] run tellraw @a[tag=OP] [{"text":"\u00A76Class Upgrader \u00A78: "},{"selector":"@s","color":"green"},{"text":" just upgraded thier Elf Class to level ","color":"red"},{"score":{"name":"@s","objective":"ElvenLevel"},"color":"gold"},{"text":".","color":"red"}]

execute as @s[scores={UpgradeClass=2}] as @s[tag=hasElf] run scoreboard players set MULT UpgradeClass 3
execute as @s[scores={UpgradeClass=2}] as @s[tag=hasElf] run scoreboard players set DIV UpgradeClass 2
execute as @s[scores={UpgradeClass=2}] as @s[tag=hasElf] run scoreboard players set ADD UpgradeClass 500
execute as @s[scores={UpgradeClass=2}] as @s[tag=hasElf] run scoreboard players operation RAM UpgradeClass = @s ElvenLevel
execute as @s[scores={UpgradeClass=2}] as @s[tag=hasElf] run scoreboard players operation RAM UpgradeClass *= MULT UpgradeClass
execute as @s[scores={UpgradeClass=2}] as @s[tag=hasElf] run scoreboard players operation RAM UpgradeClass /= DIV UpgradeClass
execute as @s[scores={UpgradeClass=2}] as @s[tag=hasElf] run scoreboard players operation RAM UpgradeClass += ADD UpgradeClass
execute as @s[scores={UpgradeClass=2}] as @s[tag=hasElf] run scoreboard players operation @s ElvenUpgradeCost = RAM UpgradeClass
## Dwarf.
#  Not enough.
execute as @s[scores={UpgradeClass=3}] as @s[tag=!hasDwarf] run tellraw @s [{"text":"I'm sorry, but you do not have the Dwarf Class...","color":"red"}]
execute as @s[scores={UpgradeClass=3}] as @s[tag=!hasDwarf] run tellraw @a[tag=OP] [{"text":"\u00A76Class Upgrader \u00A78: "},{"selector":"@s","color":"green"},{"text":" just tried upgrading the Dwarf Class, but didn't have that class...","color":"red"}]
execute as @s[scores={UpgradeClass=3}] as @s[tag=hasDwarf] run scoreboard players set MULT UpgradeClass 3
execute as @s[scores={UpgradeClass=3}] as @s[tag=hasDwarf] run scoreboard players set DIV UpgradeClass 2
execute as @s[scores={UpgradeClass=3}] as @s[tag=hasDwarf] run scoreboard players set ADD UpgradeClass 500
execute as @s[scores={UpgradeClass=3}] as @s[tag=hasDwarf] run scoreboard players operation RAM UpgradeClass = @s DwarvenLevel
execute as @s[scores={UpgradeClass=3}] as @s[tag=hasDwarf] run scoreboard players operation RAM UpgradeClass *= MULT UpgradeClass
execute as @s[scores={UpgradeClass=3}] as @s[tag=hasDwarf] run scoreboard players operation RAM UpgradeClass /= DIV UpgradeClass
execute as @s[scores={UpgradeClass=3}] as @s[tag=hasDwarf] run scoreboard players operation RAM UpgradeClass += ADD UpgradeClass
execute as @s[scores={UpgradeClass=3}] as @s[tag=hasDwarf] run scoreboard players operation FIN UpgradeClass = @s TC
execute as @s[scores={UpgradeClass=3}] as @s[tag=hasDwarf] run scoreboard players operation FIN UpgradeClass -= RAM UpgradeClass
execute as @s[scores={UpgradeClass=3}] as @s[tag=hasDwarf] run scoreboard players operation @e[name=Proxy1,type=armor_stand] UpgradeClass = FIN UpgradeClass
execute as @s[scores={UpgradeClass=3}] as @s[tag=hasDwarf] if entity @e[name=Proxy1,type=armor_stand,limit=1,scores={UpgradeClass=..-1}] run tellraw @s [{"text":"You don't have enough to upgrade your Dwarf Class...","color":"red"}]
execute as @s[scores={UpgradeClass=3}] as @s[tag=hasDwarf] if entity @e[name=Proxy1,type=armor_stand,limit=1,scores={UpgradeClass=..-1}] run tellraw @a[tag=OP] [{"text":"\u00A76Class Upgrader \u00A78: "},{"selector":"@s","color":"green"},{"text":" just tried to upgrade their Dwarf Class, but didn't have enough TC...","color":"red"}]
execute as @s[scores={UpgradeClass=3}] as @s[tag=hasDwarf] if entity @e[name=Proxy1,type=armor_stand,limit=1,scores={UpgradeClass=0..}] run scoreboard players add @s DwarvenLevel 1
execute as @s[scores={UpgradeClass=3}] as @s[tag=hasDwarf] if entity @e[name=Proxy1,type=armor_stand,limit=1,scores={UpgradeClass=0..}] run scoreboard players operation @s TC -= RAM UpgradeClass
execute as @s[scores={UpgradeClass=3}] as @s[tag=hasDwarf] if entity @e[name=Proxy1,type=armor_stand,limit=1,scores={UpgradeClass=0..}] run tellraw @s [{"text":"Successfully upgraded your Dwarf Class! You are now level ","color":"green"},{"score":{"name":"@s","objective":"DwarvenLevel"},"color":"gold"},{"text":".","color":"green"}]
execute as @s[scores={UpgradeClass=3}] as @s[tag=hasDwarf] if entity @e[name=Proxy1,type=armor_stand,limit=1,scores={UpgradeClass=0..}] run tellraw @a[tag=OP] [{"text":"\u00A76Class Upgrader \u00A78: "},{"selector":"@s","color":"green"},{"text":" just upgraded thier Dwarf Class to level ","color":"red"},{"score":{"name":"@s","objective":"DwarvenLevel"},"color":"gold"},{"text":".","color":"red"}]

execute as @s[scores={UpgradeClass=3}] as @s[tag=hasDwarf] run scoreboard players set MULT UpgradeClass 3
execute as @s[scores={UpgradeClass=3}] as @s[tag=hasDwarf] run scoreboard players set DIV UpgradeClass 2
execute as @s[scores={UpgradeClass=3}] as @s[tag=hasDwarf] run scoreboard players set ADD UpgradeClass 500
execute as @s[scores={UpgradeClass=3}] as @s[tag=hasDwarf] run scoreboard players operation RAM UpgradeClass = @s DwarvenLevel
execute as @s[scores={UpgradeClass=3}] as @s[tag=hasDwarf] run scoreboard players operation RAM UpgradeClass *= MULT UpgradeClass
execute as @s[scores={UpgradeClass=3}] as @s[tag=hasDwarf] run scoreboard players operation RAM UpgradeClass /= DIV UpgradeClass
execute as @s[scores={UpgradeClass=3}] as @s[tag=hasDwarf] run scoreboard players operation RAM UpgradeClass += ADD UpgradeClass
execute as @s[scores={UpgradeClass=3}] as @s[tag=hasDwarf] run scoreboard players operation @s DwarvUpgradeCost = RAM UpgradeClass
## More.
execute as @s[scores={UpgradeClass=4..}] run tellraw @s [{"text":"\u00A7cThat is not a class!"}]
execute as @s[scores={UpgradeClass=4..}] run tellraw @s [{"text":"\u00A7cSpecify different classes\u00A78: \u00A7aElf \u00A77is \u00A762\u00A78."}]
execute as @s[scores={UpgradeClass=4..}] run tellraw @s [{"text":"\u00A76Class Upgrader \u00A78: "},{"selector":"@s","color":"green"},{"text":" just tried to upgrade a class that didn't exist...","color":"red"}]
## Resetters.
scoreboard players reset @s UpgradeClass
scoreboard players enable @s UpgradeClass
