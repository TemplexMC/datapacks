# Tellers
tellraw @s [{"text":"\u00A77--- \u00A76Zombs Stats \u00A77---","color":"gold"}]
tellraw @s [{"text":"\u00A75Total Zombie Kills\u00A78: ","color":"dark_purple"},{"score":{"name":"@s","objective":"ZombsZombKills"},"color":"gold"}]
tellraw @s [{"text":"\u00A75Total Skeleton Kills\u00A78: ","color":"dark_purple"},{"score":{"name":"@s","objective":"ZombsSkeleKills"},"color":"gold"}]
tellraw @s [{"text":"\u00A75Total Endermite Kills\u00A78: ","color":"dark_purple"},{"score":{"name":"@s","objective":"ZombsMiteKills"},"color":"gold"}]
tellraw @s [{"text":"\u00A75This Game Zombie Kills\u00A78: ","color":"dark_purple"},{"score":{"name":"@s","objective":"ZKillZombie"},"color":"gold"}]
tellraw @s [{"text":"\u00A75This Game Skeleton Kills\u00A78: ","color":"dark_purple"},{"score":{"name":"@s","objective":"ZKillSkeleton"},"color":"gold"}]
tellraw @s [{"text":"\u00A75This Game Endermite Kills\u00A78: ","color":"dark_purple"},{"score":{"name":"@s","objective":"ZKillEndermite"},"color":"gold"}]
tellraw @a[tag=OP] [{"text":"See Zombs Stats System","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Showed ","color":"red"},{"selector":"@s","color":"green"},{"text":" their Zombs Stats.","color":"red"}]
# Reset
scoreboard players reset @s SeeZombsStats
scoreboard players enable @a SeeZombsStats
