# Start opportunity_engine
# Getters.
execute as @p[tag=!InOP,distance=..200] as @s[gamemode=survival] run function templex_standard:protection
execute as @p[tag=!InOP,distance=..200] as @s[gamemode=adventure] run tag @s add EO
execute as @p[tag=!InOP,distance=..200] as @s[gamemode=adventure] run effect clear @s
execute as @p[tag=!InOP,distance=..200] as @s[gamemode=adventure] as @s[tag=selElf] run give @s bow{display:{Name:"{\"text\":\"Elven Bow\",\"color\":\"green\"}"},Enchantments:[{id:"infinity",lvl:1},{id:"unbreaking",lvl:10},{id:"power",lvl:25},{id:"punch",lvl:1}]} 1
execute as @p[tag=!InOP,distance=..200] as @s[gamemode=adventure] as @s[tag=selElf] run give @s iron_sword{display:{Name:"{\"text\":\"Elven Daggar\",\"color\":\"green\"}"},Enchantments:[{id:"sharpness",lvl:45},{id:"unbreaking",lvl:10},{id:"smite",lvl:20}]} 1
execute as @p[tag=!InOP,distance=..200] as @s[gamemode=adventure] as @s[tag=selElf] run give @s diamond_chestplate{display:{Name:"{\"text\":\"Mithril\",\"\":\"green\"}"},Enchantments:[{id:"protection",lvl:100},{id:"projectile_protection",lvl:100},{id:"unbreaking",lvl:100},{id:"fire_protection",lvl:80}]}
execute as @p[tag=!InOP,distance=..200] as @s[gamemode=adventure] as @s[tag=selElf] run give @s arrow 1
execute as @p[tag=!InOP,distance=..200] as @s[gamemode=adventure] as @s[tag=selDwarf] run give @s diamond_axe{display:{Name:"{\"text\":\"Dwarven Axe\",\"color\":\"black\"}"},Enchantments:[{id:"sharpness",lvl:40},{id:"unbreaking",lvl:10},{id:"knockback",lvl:1}]} 1
execute as @p[tag=!InOP,distance=..200] as @s[gamemode=adventure] as @s[tag=selDwarf] run give @s diamond_chestplate{display:{Name:"{\"text\":\"Dark Steel\",\"\":\"black\"}"},Enchantments:[{id:"protection",lvl:100},{id:"fire_protection",lvl:100},{id:"unbreaking",lvl:100},{id:"projectile_protection",lvl:80}]}
execute as @p[tag=!InOP,distance=..200] as @s[gamemode=adventure] as @s[tag=selDwarf] run give @s shield{display:{Name:"{\"text\":\"Dwarven Sheild\",\"color\":\"black\"}"},Enchantments:[{id:"unbreaking",lvl:100}]} 1
execute as @p[tag=!InOP,distance=..200] as @s[gamemode=adventure] as @s[tag=pizzaCutter] run give @s diamond_sword{display:{Name:"{\"text\":\"Pizza Cutter\",\"color\":\"dark_red\"}"},Enchantments:[{id:"sharpness",lvl:120},{id:"smite",lvl:500}]}
execute as @p[tag=!InOP,distance=..200] as @s[gamemode=adventure] run tag @s add InOP
# Dead.
execute as @a[tag=InOP] as @s[scores={Health=0}] run tag @s add OPDead
execute as @a[tag=InOP] as @s[tag=OPDead,distance=201..] as @s[tag=!StuffRemoved] run scoreboard players enable @s Survival
execute as @a[tag=InOP] as @s[tag=OPDead,distance=201..] as @s[tag=!StuffRemoved] run scoreboard players enable @s Home
execute as @a[tag=InOP] as @s[tag=OPDead,distance=201..] as @s[tag=!StuffRemoved] run scoreboard players enable @s SetHome
execute as @a[tag=InOP] as @s[tag=OPDead,distance=201..] as @s[tag=!StuffRemoved] run clear @s bow{display:{Name:"{\"text\":\"Elven Bow\",\"color\":\"green\"}"}}
execute as @a[tag=InOP] as @s[tag=OPDead,distance=201..] as @s[tag=!StuffRemoved] run clear @s iron_sword{display:{Name:"{\"text\":\"Elven Daggar\",\"color\":\"green\"}"}}
execute as @a[tag=InOP] as @s[tag=OPDead,distance=201..] as @s[tag=!StuffRemoved] run clear @s arrow 3
execute as @a[tag=InOP] as @s[tag=OPDead,distance=201..] as @s[tag=!StuffRemoved] run clear @s diamond_chestplate{display:{Name:"{\"text\":\"Mithril\",\"\":\"green\"}"}}
execute as @a[tag=InOP] as @s[tag=OPDead,distance=201..] as @s[tag=!StuffRemoved] run clear @s diamond_chestplate{display:{Name:"{\"text\":\"Dark Steel\",\"\":\"black\"}"}}
execute as @a[tag=InOP] as @s[tag=OPDead,distance=201..] as @s[tag=!StuffRemoved] run clear @s diamond_axe{display:{Name:"{\"text\":\"Dwarven Axe\",\"color\":\"black\"}"}}
execute as @a[tag=InOP] as @s[tag=OPDead,distance=201..] as @s[tag=!StuffRemoved] run clear @s shield{display:{Name:"{\"text\":\"Dwarven Sheild\",\"color\":\"black\"}"}}
execute as @a[tag=InOP] as @s[tag=OPDead,distance=201..] as @s[tag=!StuffRemoved] run clear @s diamond_sword{display:{Name:"{\"text\":\"Pizza Cutter\",\"color\":\"dark_red\"}"}}
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
### ELF
# Money.
execute as @a[tag=InOP] as @s[tag=selElf] as @s[scores={ElvenSpeed=1..5}] as @s[nbt=!{ActiveEffects:[{Id:1b}]}] run scoreboard players add @s TC 50
execute as @a[tag=InOP] as @s[tag=selElf] as @s[scores={ElvenSpeed=1..5}] as @s[nbt=!{ActiveEffects:[{Id:1b}]}] run tellraw @s [{"text":"\u00A7aYou just got \u00A7650 \u00A7aTC!"}]
execute as @a[tag=InOP] as @s[tag=selElf] as @s[scores={ElvenSpeed=6..10}] as @s[nbt=!{ActiveEffects:[{Id:1b}]}] run scoreboard players add @s TC 100
execute as @a[tag=InOP] as @s[tag=selElf] as @s[scores={ElvenSpeed=6..10}] as @s[nbt=!{ActiveEffects:[{Id:1b}]}] run tellraw @s [{"text":"\u00A7aYou just got \u00A76100 \u00A7aTC!"}]
execute as @a[tag=InOP] as @s[tag=selElf] as @s[scores={ElvenSpeed=11..15}] as @s[nbt=!{ActiveEffects:[{Id:1b}]}] run scoreboard players add @s TC 150
execute as @a[tag=InOP] as @s[tag=selElf] as @s[scores={ElvenSpeed=11..15}] as @s[nbt=!{ActiveEffects:[{Id:1b}]}] run tellraw @s [{"text":"\u00A7aYou just got \u00A76150 \u00A7aTC!"}]
execute as @a[tag=InOP] as @s[tag=selElf] as @s[scores={ElvenSpeed=16..20}] as @s[nbt=!{ActiveEffects:[{Id:1b}]}] run scoreboard players add @s TC 200
execute as @a[tag=InOP] as @s[tag=selElf] as @s[scores={ElvenSpeed=16..20}] as @s[nbt=!{ActiveEffects:[{Id:1b}]}] run tellraw @s [{"text":"\u00A7aYou just got \u00A76200 \u00A7aTC!"}]
execute as @a[tag=InOP] as @s[tag=selElf] as @s[scores={ElvenSpeed=21..25}] as @s[nbt=!{ActiveEffects:[{Id:1b}]}] run scoreboard players add @s TC 250
execute as @a[tag=InOP] as @s[tag=selElf] as @s[scores={ElvenSpeed=21..25}] as @s[nbt=!{ActiveEffects:[{Id:1b}]}] run tellraw @s [{"text":"\u00A7aYou just got \u00A76250 \u00A7aTC!"}]
execute as @a[tag=InOP] as @s[tag=selElf] as @s[scores={ElvenSpeed=26..30}] as @s[nbt=!{ActiveEffects:[{Id:1b}]}] run scoreboard players add @s TC 300
execute as @a[tag=InOP] as @s[tag=selElf] as @s[scores={ElvenSpeed=26..30}] as @s[nbt=!{ActiveEffects:[{Id:1b}]}] run tellraw @s [{"text":"\u00A7aYou just got \u00A76300 \u00A7aTC!"}]
execute as @a[tag=InOP] as @s[tag=selElf] as @s[scores={ElvenSpeed=31..}] as @s[nbt=!{ActiveEffects:[{Id:1b}]}] run scoreboard players add @s TC 500
execute as @a[tag=InOP] as @s[tag=selElf] as @s[scores={ElvenSpeed=31..}] as @s[nbt=!{ActiveEffects:[{Id:1b}]}] run tellraw @s [{"text":"\u00A7aYou just got \u00A76500 \u00A7aTC!"}]
# Perk.
execute as @a[tag=InOP] as @s[tag=selElf] as @s[scores={ElvenSpeed=1..5}] as @s[nbt=!{ActiveEffects:[{Id:1b}]}] run tellraw @s [{"text":"\u00A7dYour \u00A72Elf \u00A77Class \u00A7dgives you \u00A7fSpeed \u00A76I"}]
execute as @a[tag=InOP] as @s[tag=selElf] as @s[scores={ElvenSpeed=1..5}] as @s[nbt=!{ActiveEffects:[{Id:1b}]}] run effect give @s speed 32
execute as @a[tag=InOP] as @s[tag=selElf] as @s[scores={ElvenSpeed=6..10}] as @s[nbt=!{ActiveEffects:[{Id:1b}]}] run tellraw @s [{"text":"\u00A7dYour \u00A72Elf \u00A77Class \u00A7dgives you \u00A7fSpeed \u00A76II"}]
execute as @a[tag=InOP] as @s[tag=selElf] as @s[scores={ElvenSpeed=6..10}] as @s[nbt=!{ActiveEffects:[{Id:1b}]}] run effect give @s speed 32 1
execute as @a[tag=InOP] as @s[tag=selElf] as @s[scores={ElvenSpeed=11..15}] as @s[nbt=!{ActiveEffects:[{Id:1b}]}] run tellraw @s [{"text":"\u00A7dYour \u00A72Elf \u00A77Class \u00A7dgives you \u00A7fSpeed \u00A76III"}]
execute as @a[tag=InOP] as @s[tag=selElf] as @s[scores={ElvenSpeed=11..15}] as @s[nbt=!{ActiveEffects:[{Id:1b}]}] run effect give @s speed 32 2
execute as @a[tag=InOP] as @s[tag=selElf] as @s[scores={ElvenSpeed=16..20}] as @s[nbt=!{ActiveEffects:[{Id:1b}]}] run tellraw @s [{"text":"\u00A7dYour \u00A72Elf \u00A77Class \u00A7dgives you \u00A7fSpeed \u00A76IV"}]
execute as @a[tag=InOP] as @s[tag=selElf] as @s[scores={ElvenSpeed=16..20}] as @s[nbt=!{ActiveEffects:[{Id:1b}]}] run effect give @s speed 32 3
execute as @a[tag=InOP] as @s[tag=selElf] as @s[scores={ElvenSpeed=21..25}] as @s[nbt=!{ActiveEffects:[{Id:1b}]}] run tellraw @s [{"text":"\u00A7dYour \u00A72Elf \u00A77Class \u00A7dgives you \u00A7fSpeed \u00A76V"}]
execute as @a[tag=InOP] as @s[tag=selElf] as @s[scores={ElvenSpeed=21..25}] as @s[nbt=!{ActiveEffects:[{Id:1b}]}] run effect give @s speed 32 4
execute as @a[tag=InOP] as @s[tag=selElf] as @s[scores={ElvenSpeed=26..30}] as @s[nbt=!{ActiveEffects:[{Id:1b}]}] run tellraw @s [{"text":"\u00A7dYour \u00A72Elf \u00A77Class \u00A7dgives you \u00A7fSpeed \u00A76VI"}]
execute as @a[tag=InOP] as @s[tag=selElf] as @s[scores={ElvenSpeed=26..30}] as @s[nbt=!{ActiveEffects:[{Id:1b}]}] run effect give @s speed 32 5
execute as @a[tag=InOP] as @s[tag=selElf] as @s[scores={ElvenSpeed=31..}] as @s[nbt=!{ActiveEffects:[{Id:1b}]}] run tellraw @s [{"text":"\u00A7dYour \u00A72Elf \u00A77Class \u00A7dgives you \u00A7fSpeed \u00A76VII"}]
execute as @a[tag=InOP] as @s[tag=selElf] as @s[scores={ElvenSpeed=31..}] as @s[nbt=!{ActiveEffects:[{Id:1b}]}] run effect give @s speed 32 6
### DWARF
# Money.
execute as @a[tag=InOP] as @s[tag=selDwarf] as @s[scores={DwarvenStrength=1..5}] as @s[nbt=!{ActiveEffects:[{Id:5b}]}] run scoreboard players add @s TC 50
execute as @a[tag=InOP] as @s[tag=selDwarf] as @s[scores={DwarvenStrength=1..5}] as @s[nbt=!{ActiveEffects:[{Id:5b}]}] run tellraw @s [{"text":"\u00A7aYou just got \u00A7650 \u00A7aTC!"}]
execute as @a[tag=InOP] as @s[tag=selDwarf] as @s[scores={DwarvenStrength=6..10}] as @s[nbt=!{ActiveEffects:[{Id:5b}]}] run scoreboard players add @s TC 100
execute as @a[tag=InOP] as @s[tag=selDwarf] as @s[scores={DwarvenStrength=6..10}] as @s[nbt=!{ActiveEffects:[{Id:5b}]}] run tellraw @s [{"text":"\u00A7aYou just got \u00A76100 \u00A7aTC!"}]
execute as @a[tag=InOP] as @s[tag=selDwarf] as @s[scores={DwarvenStrength=11..15}] as @s[nbt=!{ActiveEffects:[{Id:5b}]}] run scoreboard players add @s TC 150
execute as @a[tag=InOP] as @s[tag=selDwarf] as @s[scores={DwarvenStrength=11..15}] as @s[nbt=!{ActiveEffects:[{Id:5b}]}] run tellraw @s [{"text":"\u00A7aYou just got \u00A76150 \u00A7aTC!"}]
execute as @a[tag=InOP] as @s[tag=selDwarf] as @s[scores={DwarvenStrength=16..20}] as @s[nbt=!{ActiveEffects:[{Id:5b}]}] run scoreboard players add @s TC 200
execute as @a[tag=InOP] as @s[tag=selDwarf] as @s[scores={DwarvenStrength=16..20}] as @s[nbt=!{ActiveEffects:[{Id:5b}]}] run tellraw @s [{"text":"\u00A7aYou just got \u00A76200 \u00A7aTC!"}]
execute as @a[tag=InOP] as @s[tag=selDwarf] as @s[scores={DwarvenStrength=21..25}] as @s[nbt=!{ActiveEffects:[{Id:5b}]}] run scoreboard players add @s TC 250
execute as @a[tag=InOP] as @s[tag=selDwarf] as @s[scores={DwarvenStrength=21..25}] as @s[nbt=!{ActiveEffects:[{Id:5b}]}] run tellraw @s [{"text":"\u00A7aYou just got \u00A76250 \u00A7aTC!"}]
execute as @a[tag=InOP] as @s[tag=selDwarf] as @s[scores={DwarvenStrength=26..30}] as @s[nbt=!{ActiveEffects:[{Id:5b}]}] run scoreboard players add @s TC 300
execute as @a[tag=InOP] as @s[tag=selDwarf] as @s[scores={DwarvenStrength=26..30}] as @s[nbt=!{ActiveEffects:[{Id:5b}]}] run tellraw @s [{"text":"\u00A7aYou just got \u00A76300 \u00A7aTC!"}]
execute as @a[tag=InOP] as @s[tag=selDwarf] as @s[scores={DwarvenStrength=31..}] as @s[nbt=!{ActiveEffects:[{Id:5b}]}] run scoreboard players add @s TC 500
execute as @a[tag=InOP] as @s[tag=selDwarf] as @s[scores={DwarvenStrength=31..}] as @s[nbt=!{ActiveEffects:[{Id:5b}]}] run tellraw @s [{"text":"\u00A7aYou just got \u00A76500 \u00A7aTC!"}]
# Perk.
execute as @a[tag=InOP] as @s[tag=selDwarf] as @s[scores={DwarvenStrength=1..5}] as @s[nbt=!{ActiveEffects:[{Id:5b}]}] run tellraw @s [{"text":"\u00A7dYour \u00A72Dwarf \u00A77Class \u00A7dgives you \u00A74Strength \u00A76I"}]
execute as @a[tag=InOP] as @s[tag=selDwarf] as @s[scores={DwarvenStrength=1..5}] as @s[nbt=!{ActiveEffects:[{Id:5b}]}] run effect give @s strength 32
execute as @a[tag=InOP] as @s[tag=selDwarf] as @s[scores={DwarvenStrength=6..10}] as @s[nbt=!{ActiveEffects:[{Id:5b}]}] run tellraw @s [{"text":"\u00A7dYour \u00A72Dwarf \u00A77Class \u00A7dgives you \u00A74Strength \u00A76II"}]
execute as @a[tag=InOP] as @s[tag=selDwarf] as @s[scores={DwarvenStrength=6..10}] as @s[nbt=!{ActiveEffects:[{Id:5b}]}] run effect give @s strength 32 1
execute as @a[tag=InOP] as @s[tag=selDwarf] as @s[scores={DwarvenStrength=11..15}] as @s[nbt=!{ActiveEffects:[{Id:5b}]}] run tellraw @s [{"text":"\u00A7dYour \u00A72Dwarf \u00A77Class \u00A7dgives you \u00A74Strength \u00A76III"}]
execute as @a[tag=InOP] as @s[tag=selDwarf] as @s[scores={DwarvenStrength=11..15}] as @s[nbt=!{ActiveEffects:[{Id:5b}]}] run effect give @s strength 32 2
execute as @a[tag=InOP] as @s[tag=selDwarf] as @s[scores={DwarvenStrength=16..20}] as @s[nbt=!{ActiveEffects:[{Id:5b}]}] run tellraw @s [{"text":"\u00A7dYour \u00A72Dwarf \u00A77Class \u00A7dgives you \u00A74Strength \u00A76IV"}]
execute as @a[tag=InOP] as @s[tag=selDwarf] as @s[scores={DwarvenStrength=16..20}] as @s[nbt=!{ActiveEffects:[{Id:5b}]}] run effect give @s strength 32 3
execute as @a[tag=InOP] as @s[tag=selDwarf] as @s[scores={DwarvenStrength=21..25}] as @s[nbt=!{ActiveEffects:[{Id:5b}]}] run tellraw @s [{"text":"\u00A7dYour \u00A72Dwarf \u00A77Class \u00A7dgives you \u00A74Strength \u00A76V"}]
execute as @a[tag=InOP] as @s[tag=selDwarf] as @s[scores={DwarvenStrength=21..25}] as @s[nbt=!{ActiveEffects:[{Id:5b}]}] run effect give @s strength 32 4
execute as @a[tag=InOP] as @s[tag=selDwarf] as @s[scores={DwarvenStrength=26..30}] as @s[nbt=!{ActiveEffects:[{Id:5b}]}] run tellraw @s [{"text":"\u00A7dYour \u00A72Dwarf \u00A77Class \u00A7dgives you \u00A74Strength \u00A76VI"}]
execute as @a[tag=InOP] as @s[tag=selDwarf] as @s[scores={DwarvenStrength=26..30}] as @s[nbt=!{ActiveEffects:[{Id:5b}]}] run effect give @s strength 32 5
execute as @a[tag=InOP] as @s[tag=selDwarf] as @s[scores={DwarvenStrength=31..}] as @s[nbt=!{ActiveEffects:[{Id:5b}]}] run tellraw @s [{"text":"\u00A7dYour \u00A72Dwarf \u00A77Class \u00A7dgives you \u00A74Strength \u00A76VII"}]
execute as @a[tag=InOP] as @s[tag=selDwarf] as @s[scores={DwarvenStrength=31..}] as @s[nbt=!{ActiveEffects:[{Id:5b}]}] run effect give @s strength 32 6
# Constants.
execute as @a[tag=InOP,distance=..200] run scoreboard players reset @s Survival
execute as @a[tag=InOP,distance=..200] run scoreboard players reset @s Home
execute as @a[tag=InOP,distance=..200] run scoreboard players reset @s SetHome
execute as @a[tag=InOP,distance=..200] run scoreboard players reset @s Spawn
execute as @a[tag=InOP,distance=..200] run effect give @s saturation 1 1
teleport @e[type=!player,type=!item,type=!armor_stand,type=!trident,type=!arrow,distance=..200] ~ ~-270 ~
##### /summon minecraft:armor_stand -75630 135 -304967 {CustomName:"{\"text\":\"Opportunity\"}",Invisible:1b,Invulnerable:1b,NoGravity:1b}
