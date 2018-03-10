execute as @p[gamemode=survival,distance=..100] run function templex_standard:protection
tp @e[type=!player,type=!item,type=!armor_stand,distance=..200,tag=!ZombsNK] ~ ~-270 ~
#tp @e[name=Snowball,distance=..100] ~ ~-270 ~
execute if entity @p[distance=..100,gamemode=adventure] as @e[limit=1,name=Zombies,distance=..10,type=armor_stand,tag=Zombs] at @s run function minigames:zombs_engine
