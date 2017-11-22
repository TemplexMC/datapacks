## Timely
scoreboard players set Players-Online Stats 0
execute @a ~ ~ ~ scoreboard players add Players-Online Stats 1

# Timers
scoreboard players add @e[name=Seconds] Database 1
execute @e[name=Seconds,score_Database_min=60] ~ ~ ~ scoreboard players add @e[name=Minutes] Database 1
execute @e[name=Seconds,score_Database_min=60] ~ ~ ~ scoreboard players set @s Database 0
execute @e[name=Minutes,score_Database_min=5] ~ ~ ~ execute @e[name=Seconds,score_Database=0] ~ ~ ~ scoreboard players set @e[name=KarmaBoolean] Database 1
execute @e[name=Minutes,score_Database_min=60] ~ ~ ~ scoreboard players set @s Database 0

### Has to be last.
scoreboard players set @e[name=Timer] Database 0
