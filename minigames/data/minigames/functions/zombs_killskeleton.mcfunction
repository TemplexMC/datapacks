# Same Scores.
execute as @a[tag=InZombs,scores={ZKillZombie=1..}] run scoreboard players add @e[type=armor_stand,name=ZombsCurrStats] ZKillZombie 1
execute as @a[tag=InZombs,scores={ZKillZombie=1..}] run scoreboard players reset @s ZKillZombie
execute as @a[tag=InZombs,scores={ZKillSkeleton=1..}] run scoreboard players add @e[type=armor_stand,name=ZombsCurrStats] ZKillSkeleton 1
execute as @a[tag=InZombs,scores={ZKillSkeleton=1..}] run scoreboard players reset @s ZKillSkeleton
execute as @a[tag=InZombs,scores={ZKillEndermite=1..}] run scoreboard players add @e[type=armor_stand,name=ZombsCurrStats] ZKillEndermite 1
execute as @a[tag=InZombs,scores={ZKillEndermite=1..}] run scoreboard players reset @s ZKillEndermite
# Testing.
execute as @s[tag=InZombs] run scoreboard players add @s ZombsSkeleKills 1
execute as @s[tag=InZombs] run tellraw @s [{"text":"+\u00A761 \u00A74Skeleton \u00A74Kill \u00A7ato your stats!","color":"green"}]
execute as @s[tag=InZombs] run tellraw @s [{"text":"Skeletons\u00A78: ","color":"dark_purple"},{"score":{"name":"@e[type=armor_stand,name=ZombsCurrStats]","objective":"ZKillSkeleton"},"color":"gold"},{"text":"\u00A78/\u00A7620 \u00A7aneeded","color":"green"}]
# Resetting.
advancement revoke @s only minigames:zombs_skeletonkills
