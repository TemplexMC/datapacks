# Begin taunt file.
# Doers.
execute as @s[scores={Taunt=1}] run tellraw @s [{"text":"Taunts: \"set 2\" - Shulker, \"set 3\" - Enderman, more to come.","color":"dark_green"}]
execute as @s[scores={Taunt=1}] run tellraw @a[tag=OP] [{"text":"\u00A76Taunt \u00A78: "},{"selector":"@s","color":"green"},{"text":" was just shown the Taunts.","color":"red"}]

execute as @s[scores={Taunt=2}] run tellraw @s [{"text":"Taunting your surroundings as a Shulker!","color":"light_purple"}]
execute as @s[scores={Taunt=2}] run tellraw @a[tag=OP] [{"text":"\u00A76Taunt \u00A78: "},{"selector":"@s","color":"green"},{"text":" just taunted their surroundings as a Shulker.","color":"red"}]
execute as @s[scores={Taunt=2}] at @s as @a[distance=..32] at @s run playsound minecraft:entity.shulker.ambient master @s

execute as @s[scores={Taunt=3}] run tellraw @s [{"text":"Taunting your surroundings as an Enderman!","color":"light_purple"}]
execute as @s[scores={Taunt=3}] run tellraw @a[tag=OP] [{"text":"\u00A76Taunt \u00A78: "},{"selector":"@s","color":"green"},{"text":" just taunted their surroundings as an Enderman.","color":"red"}]
execute as @s[scores={Taunt=3}] at @s as @a[distance=..32] at @s run playsound minecraft:entity.enderman.scream master @s
execute as @s[scores={Taunt=3}] at @s as @a[distance=..32] at @s run playsound minecraft:entity.enderman.stare master @s

execute as @s[scores={Taunt=4..}] run tellraw @s [{"text":"Sorry, but you requested a taunt that I don't know...","color":"red"}]
execute as @s[scores={Taunt=4..}] run tellraw @a[tag=OP] [{"text":"\u00A76Taunt \u00A78: "},{"selector":"@s","color":"green"},{"text":" just requested a taunt I didn't know...","color":"red"}]
# Resetters.
scoreboard players reset @s Taunt
scoreboard players enable @a[tag=special] Taunt
