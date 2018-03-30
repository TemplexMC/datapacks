# Testing.
execute as @s[tag=InZombs] run scoreboard players add @s ZombsZombKills 1
execute as @s[tag=InZombs] run tellraw @s [{"text":"+\u00A761 \u00A74Zombie \u00A74Kill \u00A7ato your stats!","color":"green"}]
execute as @s[tag=InZombs] run tellraw @s [{"text":"Zombies\u00A78: ","color":"dark_purple"},{"score":{"name":"@s","objective","ZKillZombie"},"color":"gold"}{"text":"\u00A78/\u00A7620 \u00A7aneeded","color":"green"}]
# Resetting.
advancement revoke @s only minigames:zombs_zombiekills
