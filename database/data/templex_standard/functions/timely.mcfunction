## Timely
scoreboard players set Players-Online Stats 0
execute as @a run scoreboard players add Players-Online Stats 1
scoreboard players set YouTubers-Online Stats 0
execute as @a[tag=YT,team=!YT] run scoreboard players add YouTubers-Online Stats 1
execute as @a[team=YT] run scoreboard players add YouTubers-Online Stats 1
# Timers
scoreboard players add @e[name=Seconds] Database 1
execute as @e[name=Seconds,scores={Database=60..}] run function templex_standard:mob_rate
execute as @e[name=Timer,scores={Database=20..}] as @a at @s run function templex_standard:level_check
execute as @e[name=Seconds,scores={Database=60..}] run scoreboard players add @e[name=Minutes] Database 1
execute as @e[name=Seconds,scores={Database=60..}] run scoreboard players set @s Database 0
execute as @e[name=Minutes,scores={Database=5}] as @e[name=Seconds,scores={Database=0}] run scoreboard players set @e[name=KarmaBoolean] Database 1
execute as @e[name=Minutes,scores={Database=10}] as @e[name=Seconds,scores={Database=0}] run scoreboard players set @e[name=KarmaBoolean] Database 1
execute as @e[name=Minutes,scores={Database=15}] as @e[name=Seconds,scores={Database=0}] run scoreboard players set @e[name=KarmaBoolean] Database 1
execute as @e[name=Minutes,scores={Database=20}] as @e[name=Seconds,scores={Database=0}] run scoreboard players set @e[name=KarmaBoolean] Database 1
execute as @e[name=Minutes,scores={Database=25}] as @e[name=Seconds,scores={Database=0}] run scoreboard players set @e[name=KarmaBoolean] Database 1
execute as @e[name=Minutes,scores={Database=30}] as @e[name=Seconds,scores={Database=0}] run scoreboard players set @e[name=KarmaBoolean] Database 1
execute as @e[name=Minutes,scores={Database=35}] as @e[name=Seconds,scores={Database=0}] run scoreboard players set @e[name=KarmaBoolean] Database 1
execute as @e[name=Minutes,scores={Database=40}] as @e[name=Seconds,scores={Database=0}] run scoreboard players set @e[name=KarmaBoolean] Database 1
execute as @e[name=Minutes,scores={Database=45}] as @e[name=Seconds,scores={Database=0}] run scoreboard players set @e[name=KarmaBoolean] Database 1
execute as @e[name=Minutes,scores={Database=50}] as @e[name=Seconds,scores={Database=0}] run scoreboard players set @e[name=KarmaBoolean] Database 1
execute as @e[name=Minutes,scores={Database=55}] as @e[name=Seconds,scores={Database=0}] run scoreboard players set @e[name=KarmaBoolean] Database 1
execute as @e[name=Minutes,scores={Database=60}] as @e[name=Seconds,scores={Database=0}] run scoreboard players set @e[name=KarmaBoolean] Database 1
###execute as @e[name=Minutes,scores={Database=5}] as @e[name=Seconds,scores={Database=0}] run function templex_standard:tc
###execute as @e[name=Minutes,scores={Database=10}] as @e[name=Seconds,scores={Database=0}] run function templex_standard:tc
###execute as @e[name=Minutes,scores={Database=15}] as @e[name=Seconds,scores={Database=0}] run function templex_standard:tc
execute as @e[name=Minutes,scores={Database=20}] as @e[name=Seconds,scores={Database=0}] run function templex_standard:tc
###execute as @e[name=Minutes,scores={Database=25}] as @e[name=Seconds,scores={Database=0}] run function templex_standard:tc
###execute as @e[name=Minutes,scores={Database=30}] as @e[name=Seconds,scores={Database=0}] run function templex_standard:tc
###execute as @e[name=Minutes,scores={Database=35}] as @e[name=Seconds,scores={Database=0}] run function templex_standard:tc
execute as @e[name=Minutes,scores={Database=40}] as @e[name=Seconds,scores={Database=0}] run function templex_standard:tc
###execute as @e[name=Minutes,scores={Database=45}] as @e[name=Seconds,scores={Database=0}] run function templex_standard:tc
###execute as @e[name=Minutes,scores={Database=50}] as @e[name=Seconds,scores={Database=0}] run function templex_standard:tc
###execute as @e[name=Minutes,scores={Database=55}] as @e[name=Seconds,scores={Database=0}] run function templex_standard:tc
execute as @e[name=Minutes,scores={Database=60}] as @e[name=Seconds,scores={Database=0}] run function templex_standard:tc
execute as @e[name=Minutes,scores={Database=60}] as @e[name=Seconds,scores={Database=0}] run function templex_standard:hourlykarma
execute as @e[name=Minutes,scores={Database=60..}] run scoreboard players add @e[name=Hours] Database 1
execute as @e[name=Minutes,scores={Database=60..}] run scoreboard players remove @s Database 60
scoreboard players add @e[type=armor_stand,name=GoldFarm] PlayTime 1
scoreboard players add @e[type=armor_stand,name=IronFarm] PlayTime 1
scoreboard players add @e[type=armor_stand,name=CoalFarm] PlayTime 1
scoreboard players add @e[type=armor_stand,name=SlimeFarm] PlayTime 1
### Has to be last.
scoreboard players reset @e[name=Timer] Database
