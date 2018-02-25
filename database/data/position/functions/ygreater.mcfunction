# Notifications.
title @s actionbar [{"text":"Teleporting back to original position...","color":"aqua"}]
## Teleportation ##
# > 100
execute if entity @e[name=Proxy1,type=armor_stand,scores={yPos=100..}] run teleport @s ~ ~100 ~
execute as @e[name=Proxy1,type=armor_stand,scores={yPos=100..}] run scoreboard players remove @s yPos 100
# > 10
execute if entity @e[name=Proxy1,type=armor_stand,scores={yPos=10..}] run teleport @s ~ ~10 ~
execute as @e[name=Proxy1,type=armor_stand,scores={yPos=10..}] run scoreboard players remove @s yPos 10
# > 1
execute if entity @e[name=Proxy1,type=armor_stand,scores={yPos=1..}] run teleport @s ~ ~1 ~
execute as @e[name=Proxy1,type=armor_stand,scores={yPos=1..}] run scoreboard players remove @s yPos 1
