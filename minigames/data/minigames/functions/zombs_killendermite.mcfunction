# Testing.
execute as @s[tag=InZombs] run scoreboard players add @s ZombsMiteKills 1
execute as @s[tag=InZombs] run tellraw @s [{"text":"+\u00A761 \u00A74Endermite \u00A74Kill \u00A7ato your stats!","color":"green"}]
# Resetting.
advancement revoke @s only minigames:zombs_endermitekills
