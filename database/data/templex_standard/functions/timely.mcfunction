## Timely
scoreboard players set Players-Online Stats 0
execute as @a run scoreboard players add Players-Online Stats 1

# Timers
scoreboard players add @e[name=Seconds] Database 1
execute as @e[name=Seconds,scores={Database=60..}] run scoreboard players add @e[name=Minutes] Database 1
execute as @e[name=Seconds,scores={Database=60..}] run scoreboard players set @s Database 0
execute as @e[name=Minutes,scores={Database=5}] run execute as @e[name=Seconds,scores={Database=0}] run scoreboard players set @e[name=KarmaBoolean] Database 1
execute as @e[name=Minutes,scores={Database=10}] run execute as @e[name=Seconds,scores={Database=0}] run scoreboard players set @e[name=KarmaBoolean] Database 1
execute as @e[name=Minutes,scores={Database=15}] run execute as @e[name=Seconds,scores={Database=0}] run scoreboard players set @e[name=KarmaBoolean] Database 1
execute as @e[name=Minutes,scores={Database=20}] run execute as @e[name=Seconds,scores={Database=0}] run scoreboard players set @e[name=KarmaBoolean] Database 1
execute as @e[name=Minutes,scores={Database=25}] run execute as @e[name=Seconds,scores={Database=0}] run scoreboard players set @e[name=KarmaBoolean] Database 1
execute as @e[name=Minutes,scores={Database=30}] run execute as @e[name=Seconds,scores={Database=0}] run scoreboard players set @e[name=KarmaBoolean] Database 1
execute as @e[name=Minutes,scores={Database=35}] run execute as @e[name=Seconds,scores={Database=0}] run scoreboard players set @e[name=KarmaBoolean] Database 1
execute as @e[name=Minutes,scores={Database=40}] run execute as @e[name=Seconds,scores={Database=0}] run scoreboard players set @e[name=KarmaBoolean] Database 1
execute as @e[name=Minutes,scores={Database=45}] run execute as @e[name=Seconds,scores={Database=0}] run scoreboard players set @e[name=KarmaBoolean] Database 1
execute as @e[name=Minutes,scores={Database=50}] run execute as @e[name=Seconds,scores={Database=0}] run scoreboard players set @e[name=KarmaBoolean] Database 1
execute as @e[name=Minutes,scores={Database=55}] run execute as @e[name=Seconds,scores={Database=0}] run scoreboard players set @e[name=KarmaBoolean] Database 1
execute as @e[name=Minutes,scores={Database=60}] run execute as @e[name=Seconds,scores={Database=0}] run scoreboard players set @e[name=KarmaBoolean] Database 1
execute as @e[name=Minutes,scores={Database=60..}] run scoreboard players add @e[name=Hours] Database 1
execute as @e[name=Minutes,scores={Database=60..}] run scoreboard players remove @s Database 60

### Has to be last.
scoreboard players set @e[name=Timer] Database 0
