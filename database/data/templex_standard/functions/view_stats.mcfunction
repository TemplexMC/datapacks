# Doers.
execute as @s[tag=hasElf] run scoreboard players set MULT UpgradeClass 3
execute as @s[tag=hasElf] run scoreboard players set DIV UpgradeClass 2
execute as @s[tag=hasElf] run scoreboard players set ADD UpgradeClass 500
execute as @s[tag=hasElf] run scoreboard players operation RAM UpgradeClass = @s ElvenLevel
execute as @s[tag=hasElf] run scoreboard players operation RAM UpgradeClass *= MULT UpgradeClass
execute as @s[tag=hasElf] run scoreboard players operation RAM UpgradeClass /= DIV UpgradeClass
execute as @s[tag=hasElf] run scoreboard players operation RAM UpgradeClass += ADD UpgradeClass
execute as @s[tag=hasElf] run scoreboard players operation @s ElvenUpgradeCost = RAM UpgradeClass
# Tellers.
tellraw @s [{"text":"\u00A77--- \u00A72Class Stats \u00A77---"}]
tellraw @s[tag=hasElf] [{"text":"\u00A7aElf\u00A78:"}]
tellraw @s[tag=hasElf] [{"text":"\u00A74> \u00A7dLevel\u00A78: "},{"score":{"name":"@s","objective":"ElvenLevel"},"color":"gold"}]
tellraw @s[tag=hasElf] [{"text":"\u00A74> \u00A7dUpgrade Cost\u00A78: "},{"score":{"name":"@s","objective":"ElvenUpgradeCost"},"color":"gold"}]
tellraw @s[tag=!hasElf] [{"text":"\u00A72Elf\u00A78: \u00A74NOT UNLOCKED!"}]

tellraw @a[tag=OP] [{"text":"\u00A76Class Stats \u00A78: "},{"selector":"@s","color":"green"},{"text":" was just shown their stats.","color":"red"}]
# Resetters.
scoreboard players reset @s ViewStats
scoreboard players enable @s ViewStats
