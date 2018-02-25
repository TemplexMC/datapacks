# Notifications.
title @s actionbar [{"text":"Teleporting back to original position...","color":"aqua"}]
## Teleportation ##
# > 10,000,000
execute if entity @e[name=Proxy1,type=armor_stand,scores={zPos=10000000..}] run teleport @s ~ ~ ~10000000
execute as @e[name=Proxy1,type=armor_stand,scores={zPos=10000000..}] run scoreboard players remove @s zPos 10000000
# > 1,000,000
execute if entity @e[name=Proxy1,type=armor_stand,scores={zPos=1000000..}] run teleport @s ~ ~ ~1000000
execute as @e[name=Proxy1,type=armor_stand,scores={zPos=1000000..}] run scoreboard players remove @s zPos 1000000
# > 100,000
execute if entity @e[name=Proxy1,type=armor_stand,scores={zPos=100000..}] run teleport @s ~ ~ ~100000
execute as @e[name=Proxy1,type=armor_stand,scores={zPos=100000..}] run scoreboard players remove @s zPos 100000
# > 10,000
execute if entity @e[name=Proxy1,type=armor_stand,scores={zPos=10000..}] run teleport @s ~ ~ ~10000
execute as @e[name=Proxy1,type=armor_stand,scores={zPos=10000..}] run scoreboard players remove @s zPos 10000
# > 1,000
execute if entity @e[name=Proxy1,type=armor_stand,scores={zPos=1000..}] run teleport @s ~ ~ ~1000
execute as @e[name=Proxy1,type=armor_stand,scores={zPos=1000..}] run scoreboard players remove @s zPos 1000
# > 100
execute if entity @e[name=Proxy1,type=armor_stand,scores={zPos=100..}] run teleport @s ~ ~ ~100
execute as @e[name=Proxy1,type=armor_stand,scores={zPos=100..}] run scoreboard players remove @s zPos 100
# > 10
execute if entity @e[name=Proxy1,type=armor_stand,scores={zPos=10..}] run teleport @s ~ ~ ~10
execute as @e[name=Proxy1,type=armor_stand,scores={zPos=10..}] run scoreboard players remove @s zPos 10
# > 1
execute if entity @e[name=Proxy1,type=armor_stand,scores={zPos=1..}] run teleport @s ~ ~ ~1
execute as @e[name=Proxy1,type=armor_stand,scores={zPos=1..}] run scoreboard players remove @s zPos 1
