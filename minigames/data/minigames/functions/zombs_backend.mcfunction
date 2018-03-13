execute as @p[gamemode=survival,distance=..100] run give @s minecraft:cyan_wool{display:{Name:"{\"text\":\"Zombs Barriers\",\"color\":\"aqua\"}"},CanPlaceOn:["minecraft:stone","minecraft:black_stained_glass","minecraft:stone_bricks","minecraft:stone_brick_slab","minecraft:stone_brick_stairs","minecraft:gravel","minecraft:andesite","minecraft:cobblestone","minecraft:red_dead_coral","minecraft:blue_dead_coral"]} 64
execute as @p[gamemode=survival,distance=..100] run give @s minecraft:shears{display:{Name:"{\"text\":\"Barrier Breaker\",\"color\":\"aqua\"}"},CanDestroy:["minecraft:cyan_wool"]} 1
execute as @p[gamemode=survival,distance=..100] run function templex_standard:protection
tp @e[type=!player,type=!item,type=!armor_stand,distance=..200,tag=!ZombsNK] ~ ~-270 ~
#tp @e[name=Snowball,distance=..100] ~ ~-270 ~
execute if entity @p[distance=..100,gamemode=adventure] as @e[limit=1,name=Zombies,distance=..10,type=armor_stand,tag=Zombs] at @s run function minigames:zombs_engine
