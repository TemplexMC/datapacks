### NO KILL CROPS ###45382 132 -897278
execute as @a[tag=t.ingame] at @s if block ~ ~1 ~ wheat run setblock ~ ~3 ~ barrier
#execute as @a[tag=t.ingame] at @s if block ~ ~1 ~ wheat run setblock ~ ~3 ~ air
### TAGS ###
execute as @a[x=838530,y=64,z=135745,distance=..1000,tag=!t.ingame] run tag @s add t.ingame
#execute as @a[x=838530,y=64,z=135745,distance=1001..,tag=t.ingame] run gamemode survival @s
execute as @a[x=838530,y=64,z=135745,distance=1001..,tag=t.ingame] run tag @s remove t.ingame
### UUIDS ###
execute if entity @e[tag=t.stand,name=t.main] as @a[tag=!t.uuided] run function terr-main:uuid
### NPCS ###
execute as @e[tag=t.stand,name=Enn] at @s as @p[distance=..0.2] run function terr-npcs:enn-traveler
#execute as @a[tag=t.c.enn] run function terr-npcs:enn-traveler
# Counter
execute as @a[scores={t.db=0..200},tag=!t.talking] run scoreboard players add @s t.db 1
execute as @a[tag=t.talking] run scoreboard players add @s t.db 1
execute as @a[scores={t.db=200..}] run function terr-npcs:counter
### FORWARDERS ###
execute as @a[scores={t.join=1..}] run function terr-commands:join
execute as @a[scores={t.refresh=1..}] run function terr-commands:refresh
execute as @a[scores={t.stats=1..}] run function terr-commands:stats
execute as @a[scores={t.store=1..}] run function terr-main:todo
# NPCs
execute as @a[scores={t.red=1..}] run function terr-npcs:red
execute as @a[scores={t.yellow=1..}] run function terr-npcs:yellow
execute as @a[scores={t.green=1..}] run function terr-npcs:green
