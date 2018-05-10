# Doers.
execute as @e[type=creeper,limit=10,tag=!NOKILL] at @s run teleport @s ~ ~-270 ~
execute as @e[type=witch,limit=1,tag=!NOKILL] at @s run teleport @s ~ ~-270 ~
execute as @e[type=zombie,limit=20,tag=!NOKILL] at @s run teleport @s ~ ~-270 ~
execute as @e[type=skeleton,limit=15,tag=!NOKILL] at @s run teleport @s ~ ~-270 ~
execute if entity @p[nbt={Dimension:1}] as @e[type=enderman,limit=100,tag=!NOKILL] at @s run teleport @s ~ ~-270 ~
execute as @e[type=enderman,limit=2,tag=!NOKILL] at @s run teleport @s ~ ~-270 ~
execute as @e[type=blaze,limit=15,tag=!NOKILL] at @s run teleport @s ~ ~-270 ~
execute as @e[type=zombie_pigman,limit=15,tag=!NOKILL] at @s run teleport @s ~ ~-270 ~
execute as @e[type=phantom,limit=3,tag=!NOKILL] at @s run teleport @s ~ ~-270 ~
execute as @e[type=squid,limit=25,tag=!NOKILL] at @s run teleport @s ~ ~-270 ~

execute as @e[type=item,limit=20,tag=!NOKILL] run tag @s add mr.item
execute as @e[type=item] at @s as @p[distance=..16] at @s run teleport @e[type=item,distance=..16] @s
execute as @e[tag=mr.item] at @s if entity @p[distance=..16] run tag @s add mr.nokill
execute as @e[tag=mr.item,tag=!mr.nokill] at @s run teleport @s ~ ~-270 ~
execute as @e[tag=mr.item,tag=mr.nokill] at @s run tag @s remove mr.nokill
execute as @e[tag=mr.item] at @s run tag @s remove mr.item

#execute if entity @e[type=chicken,limit=100] as @e[type=chicken,limit=15,tag=!NOKILL] at @s run teleport @s ~ ~-270 ~
# Tellers.
tellraw @a[tag=SO] [{"text":"\u00A76Mob Rate \u00A78: \u00A7aCleared up some entities!","color":"green"}]
tellraw @a[tag=SO] [{"text":"If this caused you to lose some items, please tell a Staff Member!","color":"red"}]
