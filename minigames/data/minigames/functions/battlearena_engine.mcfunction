# Resets.
scoreboard players reset @a[tag=!OP,distance=..100] Survival
# Timer.
scoreboard players add @e[name=BattleSpawn,type=armor_stand] Database 1
execute as @e[name=BattleSpawn,type=armor_stand,scores={Database=101..}] as @e[name=Blazes,tag=BA] run scoreboard players add @s Database 1
scoreboard players reset @e[name=BattleSpawn,type=armor_stand,scores={Database=101..}] Database
# Summons.
execute as @e[name=BattleSpawn,type=armor_stand,scores={Database=100}] as @e[name=Blazes,type=armor_stand,tag=BA] at @s run summon blaze ~ ~ ~ {CustomNameVisible:1b,CustomName:"{\"text\":\"Blix\",\"color\":\"gold\"}"}
execute as @e[name=BattleSpawn,type=armor_stand,scores={Database=100}] as @e[name=Zombies,type=armor_stand,tag=BA] at @s run summon zombie ~ ~ ~ {CustomNameVisible:1b,CustomName:"{\"text\":\"Zomborg\",\"color\":\"gold\"}"}
#execute as @e[name=BattleSpawn,type=armor_stand,scores={Database=66}] as @e[name=Zombies,type=armor_stand,tag=BA] at @s run summon zombie ~ ~ ~ {CustomNameVisible:1b,CustomName:"{\"text\":\"Zomborg\",\"color\":\"gold\"}"}
#execute as @e[name=BattleSpawn,type=armor_stand,scores={Database=33}] as @e[name=Zombies,type=armor_stand,tag=BA] at @s run summon zombie ~ ~ ~ {CustomNameVisible:1b,CustomName:"{\"text\":\"Zomborg\",\"color\":\"gold\"}"}
execute as @e[name=BattleSpawn,type=armor_stand,scores={Database=100}] as @e[name=Skeletons,type=armor_stand,tag=BA] at @s run summon skeleton ~ ~ ~ {CustomNameVisible:1b,CustomName:"{\"text\":\"Skelitron\",\"color\":\"gold\"}"}
#execute as @e[name=BattleSpawn,type=armor_stand,scores={Database=80}] as @e[name=Skeletons,type=armor_stand,tag=BA] at @s run summon skeleton ~ ~ ~ {CustomNameVisible:1b,CustomName:"{\"text\":\"Skelitron\",\"color\":\"gold\"}"}
#execute as @e[name=BattleSpawn,type=armor_stand,scores={Database=60}] as @e[name=Skeletons,type=armor_stand,tag=BA] at @s run summon skeleton ~ ~ ~ {CustomNameVisible:1b,CustomName:"{\"text\":\"Skelitron\",\"color\":\"gold\"}"}
#execute as @e[name=BattleSpawn,type=armor_stand,scores={Database=40}] as @e[name=Skeletons,type=armor_stand,tag=BA] at @s run summon skeleton ~ ~ ~ {CustomNameVisible:1b,CustomName:"{\"text\":\"Skelitron\",\"color\":\"gold\"}"}
#execute as @e[name=BattleSpawn,type=armor_stand,scores={Database=20}] as @e[name=Skeletons,type=armor_stand,tag=BA] at @s run summon skeleton ~ ~ ~ {CustomNameVisible:1b,CustomName:"{\"text\":\"Skelitron\",\"color\":\"gold\"}"}
# Fills / Clears.
execute as @e[name=BattleSpawn,type=armor_stand,scores={Database=100}] run fill -920890 33 277308 -920830 46 277343 air replace fire
execute as @e[name=BattleSpawn,type=armor_stand,scores={Database=100}] run fill -920828 33 277307 -920808 46 277343 air replace fire
execute as @e[name=BattleSpawn,type=armor_stand,scores={Database=100}] as @e[name=Blazes,type=armor_stand,tag=BA] at @s run teleport @e[type=item] ~ ~-270 ~
execute as @e[name=Blazes,type=armor_stand,scores={Database=12..}] run teleport @e[type=!player,type=!armor_stand,distance=..100] ~ ~-270 ~
execute as @e[name=Blazes,type=armor_stand,scores={Database=12..}] run scoreboard players reset @s Database
