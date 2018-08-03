# Start opportunity_engine
# Getters.
execute as @p[tag=!InOP,distance=..200] as @s[gamemode=survival] run function templex_standard:protection
execute as @p[tag=!InOP,distance=..200] as @s[gamemode=adventure] run tag @s add EO
execute as @p[tag=!InOP,distance=..200] as @s[gamemode=adventure] run effect clear @s
execute as @p[tag=!InOP,distance=..200] as @s[gamemode=adventure] as @s[tag=hasElf] run give @s bow{display:{Name:"{\"text\":\"Elven Bow\",\"color\":\"green\"}"},Enchantments:[{id:"infinity",lvl:1},{id:"unbreaking",lvl:10},{id:"flame",lvl:10}]} 1
execute as @p[tag=!InOP,distance=..200] as @s[gamemode=adventure] as @s[tag=hasElf] run give @s arrow 1
execute as @p[tag=!InOP,distance=..200] as @s[gamemode=adventure] run tag @s add InOP
# Dead.
execute as @a[tag=InOP] as @s[scores={Health=0}] run tag @s add OPDead
execute as @a[tag=InOP] as @s[tag=OPDead,distance=201..] as @s[tag=!StuffRemoved] run scoreboard players enable @s Survival
execute as @a[tag=InOP] as @s[tag=OPDead,distance=201..] as @s[tag=!StuffRemoved] run scoreboard players enable @s Home
execute as @a[tag=InOP] as @s[tag=OPDead,distance=201..] as @s[tag=!StuffRemoved] run scoreboard players enable @s SetHome
execute as @a[tag=InOP] as @s[tag=OPDead,distance=201..] as @s[tag=!StuffRemoved] as @s[tag=hasElf] run clear @s bow{display:{Name:"{\"text\":\"Elven Bow\",\"color\":\"green\"}"},Enchantments:[{id:"infinity",lvl:1},{id:"unbreaking",lvl:10},{id:"flame",lvl:10}]}
execute as @a[tag=InOP] as @s[tag=OPDead,distance=201..] as @s[tag=!StuffRemoved] as @s[tag=hasElf] run clear @s arrow 1
execute as @a[tag=InOP] as @s[tag=OPDead,distance=201..] as @s[tag=!StuffRemoved] run tag @s remove EO
execute as @a[tag=InOP] as @s[tag=OPDead,distance=201..] as @s[tag=!StuffRemoved] run tag @s add RIOP
execute as @a[tag=InOP] as @s[tag=OPDead,distance=201..] as @s[tag=!StuffRemoved] run tag @s add StuffRemoved
execute as @a[tag=RIOP] run tag @s remove InOP
execute as @a[tag=RIOP] run tag @s remove OPDead
execute as @a[tag=RIOP] run tag @s remove RIOP
# Not Dead.
execute as @a[tag=InOP] as @s[scores={Health=1..}] as @s[tag=StuffRemoved] run tag @s add EO
execute as @a[tag=InOP] as @s[scores={Health=1..}] as @s[tag=StuffRemoved] run effect clear @s
execute as @a[tag=InOP] as @s[scores={Health=1..}] as @s[tag=StuffRemoved] run tag @s remove StuffRemoved
# Perk Effects.
execute as @a[tag=InOP] as @s[tag=hasElf] as @s[scores={ElvenSpeed=1..5}] as @s[nbt=!{ActiveEffects:[{Id:1b}]}] run tellraw @s [{"text":"\u00A7dYour \u00A72Elf \u00A77Class \u00A7dgives you \u00A7fSpeed \u00A76I"}]
execute as @a[tag=InOP] as @s[tag=hasElf] as @s[scores={ElvenSpeed=1..5}] as @s[nbt=!{ActiveEffects:[{Id:1b}]}] run effect give @s speed 32
execute as @a[tag=InOP] as @s[tag=hasElf] as @s[scores={ElvenSpeed=6..10}] as @s[nbt=!{ActiveEffects:[{Id:1b}]}] run tellraw @s [{"text":"\u00A7dYour \u00A72Elf \u00A77Class \u00A7dgives you \u00A7fSpeed \u00A76II"}]
execute as @a[tag=InOP] as @s[tag=hasElf] as @s[scores={ElvenSpeed=6..10}] as @s[nbt=!{ActiveEffects:[{Id:1b}]}] run effect give @s speed 32 1
execute as @a[tag=InOP] as @s[tag=hasElf] as @s[scores={ElvenSpeed=11..15}] as @s[nbt=!{ActiveEffects:[{Id:1b}]}] run tellraw @s [{"text":"\u00A7dYour \u00A72Elf \u00A77Class \u00A7dgives you \u00A7fSpeed \u00A76III"}]
execute as @a[tag=InOP] as @s[tag=hasElf] as @s[scores={ElvenSpeed=11..15}] as @s[nbt=!{ActiveEffects:[{Id:1b}]}] run effect give @s speed 32 2
execute as @a[tag=InOP] as @s[tag=hasElf] as @s[scores={ElvenSpeed=16..20}] as @s[nbt=!{ActiveEffects:[{Id:1b}]}] run tellraw @s [{"text":"\u00A7dYour \u00A72Elf \u00A77Class \u00A7dgives you \u00A7fSpeed \u00A76IV"}]
execute as @a[tag=InOP] as @s[tag=hasElf] as @s[scores={ElvenSpeed=16..20}] as @s[nbt=!{ActiveEffects:[{Id:1b}]}] run effect give @s speed 32 3
execute as @a[tag=InOP] as @s[tag=hasElf] as @s[scores={ElvenSpeed=21..25}] as @s[nbt=!{ActiveEffects:[{Id:1b}]}] run tellraw @s [{"text":"\u00A7dYour \u00A72Elf \u00A77Class \u00A7dgives you \u00A7fSpeed \u00A76V"}]
execute as @a[tag=InOP] as @s[tag=hasElf] as @s[scores={ElvenSpeed=21..25}] as @s[nbt=!{ActiveEffects:[{Id:1b}]}] run effect give @s speed 32 4
execute as @a[tag=InOP] as @s[tag=hasElf] as @s[scores={ElvenSpeed=26..30}] as @s[nbt=!{ActiveEffects:[{Id:1b}]}] run tellraw @s [{"text":"\u00A7dYour \u00A72Elf \u00A77Class \u00A7dgives you \u00A7fSpeed \u00A76VI"}]
execute as @a[tag=InOP] as @s[tag=hasElf] as @s[scores={ElvenSpeed=26..30}] as @s[nbt=!{ActiveEffects:[{Id:1b}]}] run effect give @s speed 32 5
execute as @a[tag=InOP] as @s[tag=hasElf] as @s[scores={ElvenSpeed=31..}] as @s[nbt=!{ActiveEffects:[{Id:1b}]}] run tellraw @s [{"text":"\u00A7dYour \u00A72Elf \u00A77Class \u00A7dgives you \u00A7fSpeed \u00A76VII"}]
execute as @a[tag=InOP] as @s[tag=hasElf] as @s[scores={ElvenSpeed=31..}] as @s[nbt=!{ActiveEffects:[{Id:1b}]}] run effect give @s speed 32 6
# Constants.
execute as @a[tag=InOP,distance=..200] run scoreboard players reset @s Survival
execute as @a[tag=InOP,distance=..200] run scoreboard players reset @s Home
execute as @a[tag=InOP,distance=..200] run scoreboard players reset @s SetHome
teleport @e[type=!player,type=!item,type=!armor_stand,type=!arrow,distance=..200] ~ ~-270 ~
##### /summon minecraft:armor_stand -75630 135 -304967 {CustomName:"{\"text\":\"Opportunity\"}",Invisible:1b,Invulnerable:1b,NoGravity:1b}
