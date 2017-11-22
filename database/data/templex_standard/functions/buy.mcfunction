execute as @s[scores={Buy=..100}] run tellraw @s [{"text":"If you don't see any other text besides this, stand closer to the sign.","color":"red"}]
scoreboard players set @s[scores={Buy=..100}] Buy 101
scoreboard players add @s Buy 1
execute as @s[scores={Buy=102..}] run scoreboard players set @s Score 1
execute as @s[scores={Buy=102..}] run scoreboard players reset @s Buy
execute as @s[scores={Buy=102..}] run scoreboard players enable @a Buy
