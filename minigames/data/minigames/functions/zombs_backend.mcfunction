#execute as @p[gamemode=survival,distance=..100] run give @s minecraft:cyan_wool{display:{Name:"{\"text\":\"Zombs Barriers\",\"color\":\"aqua\"}"},CanPlaceOn:["minecraft:stone","minecraft:black_stained_glass","minecraft:stone_bricks","minecraft:stone_brick_slab","minecraft:stone_brick_stairs","minecraft:gravel","minecraft:andesite","minecraft:cobblestone","minecraft:red_dead_coral","minecraft:blue_dead_coral"]} 64
#execute as @p[gamemode=survival,distance=..100] run give @s minecraft:shears{display:{Name:"{\"text\":\"Barrier Breaker\",\"color\":\"aqua\"}"},CanDestroy:["minecraft:cyan_wool"]} 1
execute as @p[gamemode=survival,distance=..100] run function templex_standard:protection
tp @e[type=!player,type=!item,type=!armor_stand,type=!trident,type=!arrow,distance=..200,tag=!ZombsNK] ~ ~-270 ~
#tp @e[name=Snowball,distance=..100] ~ ~-270 ~
execute as @p[distance=..200,gamemode=adventure] as @e[limit=1,name=ZombsMain,distance=..200,type=armor_stand,tag=Zombs] at @s run function minigames:zombs_engine
#### /summon minecraft:armor_stand -923151 17 -300169 {CustomName:"{\"text\":\"ZombsMain\",\"color\":\"light_purple\"}",CustomNameVisible:1b,Invulnerable:1b,NoGravity:1b}
