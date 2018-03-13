# Resets.
scoreboard players reset @a[distance=..200,gamemode=adventure] Survival
# Set up.
execute as @a[distance=..200,gamemode=adventure,tag=!InZombs] run tag @s add InZombs
execute as @a[distance=200..,tag=InZombs] run tag @s remove InZombs
# Timer.
scoreboard players add @a[tag=InZombs] Database 1
scoreboard players reset @a[tag=InZombs,scores={Database=1201..}] Database
# Spawns.
execute as @a[tag=InZombs] at @s run scoreboard players add @e[type=armor_stand,tag=Zombs,distance=..200] Database 1
execute as @e[tag=Zombs,type=armor_stand,scores={Database=100..},name=Skeletons] run summon skeleton ~ ~ ~ {CustomName:"{\"text\":\"Ultimate Bowman\",\"color\":\"gold\"}",CustomNameVisible:1b}
execute as @e[tag=Zombs,type=armor_stand,scores={Database=100..},name=Zombies] run summon zombie ~ ~ ~ {CustomName:"{\"text\":\"Want Hugs?\",\"color\":\"gold\"}",CustomNameVisible:1b}
execute as @e[tag=Zombs,type=armor_stand,scores={Database=100..},name=Endermites] run summon endermite ~ ~ ~ {CustomName:"{\"text\":\"Purple Pest\",\"color\":\"gold\"}",CustomNameVisible:1b}
execute as @e[tag=Zombs,type=armor_stand,scores={Database=100..},name=Boss,tag=!Summoned] run summon wither_skeleton ~ ~ ~ {CustomName:"{\"text\":\"NitrateOrigins\",\"color\":\"aqua\"}",CustomNameVisible:1b}
execute as @e[tag=Zombs,type=armor_stand,scores={Database=100..},name=Boss,tag=!Summoned] run tellraw @a [{"text":"Zombs","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"\u00A74WARNING! \u00A7bThe boss has spawned!","color":"aqua"}]
execute as @e[tag=Zombs,type=armor_stand,scores={Database=100..},name=Boss,tag=!Summoned] run tag @e[name=ZombsBoolean,type=armor_stand,tag=!true] add true
execute as @e[tag=Zombs,type=armor_stand,scores={Database=100..},name=Boss,tag=!Summoned] run tag @s add Summoned
execute as @e[tag=Zombs,type=armor_stand,scores={Database=100..}] run scoreboard players reset @s Database
# Boss.
execute as @e[name=ZombsBoolean,type=armor_stand,tag=true] as @e[tag=Zombs,type=armor_stand,name=Boss] at @s run title @a[tag=InZombs] actionbar [{"text":"The boss is still alive!","color":"red"}]
execute as @e[name=ZombsBoolean,type=armor_stand,tag=true] as @e[tag=Zombs,type=armor_stand,name=Boss] at @s as @a[tag=InZombs,distance=..200,scores={BossKill=1..}] run tag @s add BossKiller
execute as @e[name=ZombsBoolean,type=armor_stand,tag=true] as @e[tag=Zombs,type=armor_stand,name=Boss] at @s as @a[tag=InZombs,distance=..200,scores={BossKill=1..}] run tellraw @a [{"text":"Zombs","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":" has just killed the Zombs Boss!","color":"aqua"}]
execute as @p[tag=BossKiller] run tag @e[name=ZombsBoolean,type=armor_stand,tag=true] remove true
# BossKiller.
execute as @p[tag=BossKiller] run scoreboard players add @e[name=ZombsEndTimer,type=armor_stand] Database 1
execute as @p[tag=BossKiller] as @e[name=ZombsEndTimer,type=armor_stand,scores={Database=1}] run title @a[tag=InZombs] actionbar [{"text":"Teleporting to Spawn in 10 seconds...","color":"aqua"}]
execute as @p[tag=BossKiller] as @e[name=ZombsEndTimer,type=armor_stand,scores={Database=100}] run title @a[tag=InZombs] actionbar [{"text":"Teleporting to Spawn in 5 seconds...","color":""aqua}]
execute as @p[tag=BossKiller] as @e[name=ZombsEndTimer,type=armor_stand,scores={Database=200}] run title @a[tag=InZombs] actionbar [{"text":"Teleporting to Spawn now!","color":"aqua"}]
execute as @p[tag=BossKiller] as @e[name=ZombsEndTimer,type=armor_stand,scores={Database=200}] run fill -923150 35 -300141 -923152 37 -300141 minecraft:iron_bars replace air
execute as @p[tag=BossKiller] as @e[name=ZombsEndTimer,type=armor_stand,scores={Database=200}] run fill -923150 35 -300141 -923152 37 -300141 minecraft:iron_bars replace air
execute as @p[tag=BossKiller] as @e[name=ZombsEndTimer,type=armor_stand,scores={Database=200}] run fill -923155 45 -300138 -923155 46 -300137 minecraft:iron_bars replace air
execute as @p[tag=BossKiller] as @e[name=ZombsEndTimer,type=armor_stand,scores={Database=200}] as @p[tag=BossKiller] run scoreboard players add @s TC 80
execute as @p[tag=BossKiller] as @e[name=ZombsEndTimer,type=armor_stand,scores={Database=200}] as @p[tag=BossKiller] run scoreboard players add @a[tag=InZombs] TC 70
execute as @p[tag=BossKiller] as @e[name=ZombsEndTimer,type=armor_stand,scores={Database=200}] as @p[tag=BossKiller] run scoreboard players add @s Karma 300
execute as @p[tag=BossKiller] as @e[name=ZombsEndTimer,type=armor_stand,scores={Database=200}] as @p[tag=BossKiller] run scoreboard players add @a[tag=InZombs] Karma 200
execute as @p[tag=BossKiller] as @e[name=ZombsEndTimer,type=armor_stand,scores={Database=200}] as @p[tag=BossKiller] run scoreboard players add @a[tag=InZombs] ZombsWins 1
execute as @p[tag=BossKiller] as @e[name=ZombsEndTimer,type=armor_stand,scores={Database=200}] as @p[tag=BossKiller] run tag @a remove ZTold
execute as @p[tag=BossKiller] as @e[name=ZombsEndTimer,type=armor_stand,scores={Database=200}] as @p[tag=BossKiller] run tag @a remove STold
execute as @p[tag=BossKiller] as @e[name=ZombsEndTimer,type=armor_stand,scores={Database=200}] as @p[tag=BossKiller] run tag @a remove ETold
execute as @p[tag=BossKiller] as @e[name=ZombsEndTimer,type=armor_stand,scores={Database=200}] as @p[tag=BossKiller] at @s run teleport @e[tag=Zombs,tag=!ZombsNK,type=!armor_stand,type=!item,type=!player] ~ ~-270 ~
execute as @p[tag=BossKiller] as @e[name=ZombsEndTimer,type=armor_stand,scores={Database=200}] as @p[tag=BossKiller] run fill -923128 57 -300173 -923110 22 -300133 air replace #minecraft:wool
execute as @p[tag=BossKiller] as @e[name=ZombsEndTimer,type=armor_stand,scores={Database=200}] as @p[tag=BossKiller] run fill -923095 57 -300173 -923111 22 -300133 air replace #minecraft:wool
execute as @p[tag=BossKiller] as @e[name=ZombsEndTimer,type=armor_stand,scores={Database=200}] as @p[tag=BossKiller] run clear @a[tag=InZombs] minecraft:cyan_wool{display:{Name:"{\"text\":\"Zombs Barriers\",\"color\":\"aqua\"}"},CanPlaceOn:["minecraft:stone","minecraft:black_stained_glass","minecraft:stone_bricks","minecraft:stone_brick_slab","minecraft:stone_brick_stairs","minecraft:gravel","minecraft:andesite","minecraft:cobblestone","minecraft:red_dead_coral","minecraft:blue_dead_coral"]}
execute as @p[tag=BossKiller] as @e[name=ZombsEndTimer,type=armor_stand,scores={Database=200}] as @p[tag=BossKiller] run clear @a[tag=InZombs] minecraft:shears{display:{Name:"{\"text\":\"Barrier Breaker\",\"color\":\"aqua\"}"},CanDestroy:["minecraft:cyan_wool"]}
execute as @p[tag=BossKiller] as @e[name=ZombsEndTimer,type=armor_stand,scores={Database=200}] as @p[tag=BossKiller] run scoreboard players add @s Spawn 1
execute as @p[tag=BossKiller] as @e[name=ZombsEndTimer,type=armor_stand,scores={Database=200}] as @p[tag=BossKiller] run gamemode survival @a[tag=InZombs]
execute as @p[tag=BossKiller] as @e[name=ZombsEndTimer,type=armor_stand,scores={Database=200}] as @p[tag=BossKiller] run tag @a[tag=InZombs] remove InZombs
execute as @p[tag=BossKiller] as @e[name=ZombsEndTimer,type=armor_stand,scores={Database=200}] as @p[tag=BossKiller] run tag @s remove BossKiller
execute as @e[name=ZombsEndTimer,type=armor_stand,scores={Database=200}] run scoreboard players reset @s Database
# Progressing to next level.
execute as @a[tag=InZombs,scores={ZKillZombie=20},tag=!ZTold] run tellraw @s [{"text":"Zombs","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"You have reached the correct amount of \u00A7cZombies \u00A7bfor the next level\u00A78!","color":"aqua"}]
execute as @a[tag=InZombs,scores={ZKillZombie=20},tag=!ZTold] run tag @s add ZTold
execute as @a[tag=InZombs,scores={ZKillSkeleton=20},tag=!STold] run tellraw @s [{"text":"Zombs","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"You have reached the correct amount of \u00A7cSkeletons \u00A7bfor the next level\u00A78!","color":"aqua"}]
execute as @a[tag=InZombs,scores={ZKillSkeleton=20},tag=!STold] run tag @s add STold
execute as @a[tag=InZombs,scores={ZKillEndermite=10},tag=!ETold] run tellraw @s [{"text":"Zombs","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"You have reached the correct amount of \u00A7cEndermites \u00A7bfor the next level\u00A78!","color":"aqua"}]
execute as @a[tag=InZombs,scores={ZKillEndermite=10},tag=!ETold] run tag @s add ETold
execute as @a[tag=InZombs,tag=ZTold,tag=STold,tag=ETold] run tellraw @a[tag=InZombs] [{"text":"Zombs","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":" has just reached the \u00A7650 \u00A7bMob Kills trigger. They have just received a pick to break down the next barrier. All players' kill stats have been reset.","color":"aqua"},{"text":"\nIn a later release you might be able to view these stats...","color":"red"}]
execute as @a[tag=InZombs,tag=ZTold,tag=STold,tag=ETold] run give @s wooden_pickaxe{display:"{\"text\":\"Bar Breaker\",\"color\":\"aqua\"}",CanBreak:["minecraft:iron_bars"],Damage:57} 1
execute as @a[tag=InZombs,tag=ZTold,tag=STold,tag=ETold] run scoreboard players reset @a ZKillZombie
execute as @a[tag=InZombs,tag=ZTold,tag=STold,tag=ETold] run scoreboard players reset @a ZKillSkeleton
execute as @a[tag=InZombs,tag=ZTold,tag=STold,tag=ETold] run scoreboard players reset @a ZKillEndermite
execute as @a[tag=InZombs,tag=ZTold,tag=STold,tag=ETold] run tag @s add ZombsRemoveTags
execute as @a[tag=ZombsRemoveTags] run tag @a remove ZTold
execute as @a[tag=ZombsRemoveTags] run tag @a remove STold
execute as @a[tag=ZombsRemoveTags] run tag @a remove ETold
execute as @a[tag=ZombsRemoveTags] run tag @a remove ZombsRemoveTags
# Clears.
execute as @p[tag=InZombs,scores={Database=1200..}] as @e[type=!player,type=!item,type=!armor_stand,tag=Zombs,distance=..200] at @s run teleport @s ~ ~-270 ~
execute as @p[tag=InZombs,scores={Database=1200..}] as @e[type=item,distance=..200] at @s run teleport @s ~ ~-270 ~
