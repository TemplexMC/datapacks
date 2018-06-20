# Doers.
execute as @s[tag=hasElf] run scoreboard players set MULT UpgradeClass 3
execute as @s[tag=hasElf] run scoreboard players set DIV UpgradeClass 2
execute as @s[tag=hasElf] run scoreboard players set ADD UpgradeClass 500
execute as @s[tag=hasElf] run scoreboard players operation RAM UpgradeClass = @s ElvenLevel
execute as @s[tag=hasElf] run scoreboard players operation RAM UpgradeClass *= MULT UpgradeClass
execute as @s[tag=hasElf] run scoreboard players operation RAM UpgradeClass /= DIV UpgradeClass
execute as @s[tag=hasElf] run scoreboard players operation RAM UpgradeClass += ADD UpgradeClass
execute as @s[tag=hasElf] run scoreboard players operation ElvenUpgradeCost UpgradeClass = RAM UpgradeClass

execute as @s[tag=hasElf] run scoreboard players set MULT Up_Elf_Eff 3
execute as @s[tag=hasElf] run scoreboard players set DIV Up_Elf_Eff 2
execute as @s[tag=hasElf] run scoreboard players set ADD Up_Elf_Eff 500
execute as @s[tag=hasElf] run scoreboard players operation RAM Up_Elf_Eff = @s ElvenEff  
execute as @s[tag=hasElf] run scoreboard players operation RAM Up_Elf_Eff *= MULT Up_Elf_Eff
execute as @s[tag=hasElf] run scoreboard players operation RAM Up_Elf_Eff /= DIV Up_Elf_Eff
execute as @s[tag=hasElf] run scoreboard players operation RAM Up_Elf_Eff += ADD Up_Elf_Eff
execute as @s[tag=hasElf] run scoreboard players operation ElvenEffUpCost Up_Elf_Eff = RAM Up_Elf_Eff

execute as @s[tag=hasElf] run scoreboard players set MULT Up_Elf_Sp 3
execute as @s[tag=hasElf] run scoreboard players set DIV Up_Elf_Sp 2
execute as @s[tag=hasElf] run scoreboard players set ADD Up_Elf_Sp 500
execute as @s[tag=hasElf] run scoreboard players operation RAM Up_Elf_Sp = @s ElvenSpeed
execute as @s[tag=hasElf] run scoreboard players operation RAM Up_Elf_Sp *= MULT Up_Elf_Sp
execute as @s[tag=hasElf] run scoreboard players operation RAM Up_Elf_Sp /= DIV Up_Elf_Sp
execute as @s[tag=hasElf] run scoreboard players operation RAM Up_Elf_Sp += ADD Up_Elf_Sp
execute as @s[tag=hasElf] run scoreboard players operation ElvenSpUpCost Up_Elf_Sp = RAM Up_Elf_Sp
# Tellers.
tellraw @s [{"text":"\u00A77--- \u00A72Class Stats \u00A77---"}]
tellraw @s[tag=hasElf] [{"text":"\u00A7aElf\u00A78:"}]
tellraw @s[tag=hasElf] [{"text":"\u00A74> \u00A7dLevel\u00A78: "},{"score":{"name":"@s","objective":"ElvenLevel"},"color":"gold"}]
tellraw @s[tag=hasElf] [{"text":"\u00A74> \u00A7dUpgrade Cost\u00A78: "},{"score":{"name":"ElvenUpgradeCost","objective":"UpgradeClass"},"color":"gold"}]
tellraw @s[tag=hasElf] [{"text":"\u00A74> \u00A7dEfficiency\u00A78: "},{"score":{"name":"@s","objective":"ElvenEff"},"color":"gold"}]
tellraw @s[tag=hasElf] [{"text":"\u00A74> \u00A7dEfficiency Upgrade Cost\u00A78: "},{"score":{"name":"ElvenEffUpCost","objective":"Up_Elf_Eff"},"color":"gold"}]
tellraw @s[tag=hasElf] [{"text":"\u00A74> \u00A7dSpeed\u00A78: "},{"score":{"name":"@s","objective":"ElvenSpeed"},"color":"gold"}]
tellraw @s[tag=hasElf] [{"text":"\u00A74> \u00A7dSpeed Upgrade Cost\u00A78: "},{"score":{"name":"ElvenSpUpCost","objective":"Up_Elf_Sp"},"color":"gold"}]
tellraw @s[tag=!hasElf] [{"text":"\u00A72Elf\u00A78: \u00A74NOT UNLOCKED!"}]

tellraw @a[tag=OP] [{"text":"\u00A76Class Stats \u00A78: "},{"selector":"@s","color":"green"},{"text":" was just shown their stats.","color":"red"}]
# Resetters.
scoreboard players reset @s ViewStats
scoreboard players enable @s ViewStats
