# Notifications.
title @s actionbar [{"text":"Finding / Storing Pos... Do not move your mouse...","color":"aqua"}]
# X
execute as @s[tag=QIII,tag=!10milTaggedX] run teleport @s ~10000000 ~ ~
execute as @s[tag=QIII,tag=!10milTaggedX] run scoreboard players remove @s xPos 10000000
execute as @s[tag=QIII,tag=QII,tag=!10milTaggedX] run teleport @s ~-10000000 ~ ~
execute as @s[tag=QIII,tag=QII,tag=!10milTaggedX] run tag @s add 10milTaggedX

execute as @s[tag=QIII,tag=10milTaggedX,tag=!1milTaggedX] run teleport @s ~1000000 ~ ~
execute as @s[tag=QIII,tag=!1milTaggedX] run scoreboard players remove @s xPos 1000000
execute as @s[tag=QIII,tag=QII,tag=!1milTaggedX] run teleport @s ~-1000000 ~ ~
execute as @s[tag=QIII,tag=QII,tag=!1milTaggedX] run tag @s add 1milTaggedX

execute as @s[tag=QIII,tag=1milTaggedX,tag=!100kTaggedX] run teleport @s ~100000 ~ ~
execute as @s[tag=QIII,tag=!100kTaggedX] run scoreboard players remove @s xPos 100000
execute as @s[tag=QIII,tag=QII,tag=!100kTaggedX] run teleport @s ~-100000 ~ ~
execute as @s[tag=QIII,tag=QII,tag=!100kTaggedX] run tag @s add 100kTaggedX

execute as @s[tag=QIII,tag=100kTaggedX,tag=!10kTaggedX] run teleport @s ~10000 ~ ~
execute as @s[tag=QIII,tag=!10kTaggedX] run scoreboard players remove @s xPos 10000
execute as @s[tag=QIII,tag=QII,tag=!10kTaggedX] run teleport @s ~-1000000 ~ ~
execute as @s[tag=QIII,tag=QII,tag=!10kTaggedX] run tag @s add 10kTaggedX

execute as @s[tag=QIII,tag=10kTaggedX,tag=!1kTaggedX] run teleport @s ~1000 ~ ~
execute as @s[tag=QIII,tag=!1kTaggedX] run scoreboard players remove @s xPos 1000
execute as @s[tag=QIII,tag=QII,tag=!1kTaggedX] run teleport @s ~-1000 ~ ~
execute as @s[tag=QIII,tag=QII,tag=!1kTaggedX] run tag @s add 1kTaggedX

execute as @s[tag=QIII,tag=1kTaggedX,tag=!100TaggedX] run teleport @s ~100 ~ ~
execute as @s[tag=QIII,tag=!100TaggedX] run scoreboard players remove @s xPos 100
execute as @s[tag=QIII,tag=QII,tag=!100TaggedX] run teleport @s ~-100 ~ ~
execute as @s[tag=QIII,tag=QII,tag=!100TaggedX] run tag @s add 100TaggedX

execute as @s[tag=QIII,tag=100TaggedX,tag=!10TaggedX] run teleport @s ~10 ~ ~
execute as @s[tag=QIII,tag=!10TaggedX] run scoreboard players remove @s xPos 10
execute as @s[tag=QIII,tag=QII,tag=!10TaggedX] run teleport @s ~-10 ~ ~
execute as @s[tag=QIII,tag=QII,tag=!10TaggedX] run tag @s add 10TaggedX

execute as @s[tag=QIII,tag=10TaggedX,tag=!1TaggedX] run teleport @s ~1 ~ ~
execute as @s[tag=QIII,tag=!1TaggedX] run scoreboard players remove @s xPos 1
execute as @s[tag=QIII,tag=!1TaggedX,x=0] run tag @s add 1TaggedX
# Z
execute as @s[tag=QIII,tag=!10milTaggedZ,tag=1TaggedX] run teleport @s ~ ~ ~10000000
execute as @s[tag=QIII,tag=!10milTaggedZ] run scoreboard players remove @s zPos 10000000
execute as @s[tag=QIII,tag=QIV,tag=!10milTaggedZ] run teleport @s ~ ~ ~-10000000
execute as @s[tag=QIII,tag=QIV,tag=!10milTaggedZ] run tag @s add 10milTaggedZ

execute as @s[tag=QIII,tag=10milTaggedZ,tag=!1milTaggedZ] run teleport @s ~ ~ ~1000000
execute as @s[tag=QIII,tag=!1milTaggedZ] run scoreboard players remove @s zPos 1000000 
execute as @s[tag=QIII,tag=QIV,tag=!1milTaggedZ] run teleport @s ~ ~ ~-1000000
execute as @s[tag=QIII,tag=QIV,tag=!1milTaggedZ] run tag @s add 1milTaggedZ

execute as @s[tag=QIII,tag=1milTaggedZ,tag=!100kTaggedZ] run teleport @s ~ ~ ~100000
execute as @s[tag=QIII,tag=!100kTaggedZ] run scoreboard players remove @s zPos 100000
execute as @s[tag=QIII,tag=QIV,tag=!100kTaggedZ] run teleport @s ~ ~ ~-100000
execute as @s[tag=QIII,tag=QIV,tag=!100kTaggedZ] run tag @s add 100kTaggedZ

execute as @s[tag=QIII,tag=100kTaggedZ,tag=!10kTaggedZ] run teleport @s ~ ~ ~10000
execute as @s[tag=QIII,tag=!10kTaggedZ] run scoreboard players remove @s zPos 10000  
execute as @s[tag=QIII,tag=QIV,tag=!10kTaggedZ] run teleport @s ~ ~ ~-10000
execute as @s[tag=QIII,tag=QIV,tag=!10kTaggedZ] run tag @s add 10kTaggedZ

execute as @s[tag=QIII,tag=10kTaggedZ,tag=!1kTaggedZ] run teleport @s ~ ~ ~1000
execute as @s[tag=QIII,tag=!1kTaggedZ] run scoreboard players remove @s zPos 1000 
execute as @s[tag=QIII,tag=QIV,tag=!1kTaggedZ] run teleport @s ~ ~ ~-1000
execute as @s[tag=QIII,tag=QIV,tag=!1kTaggedZ] run tag @s add 1kTaggedZ

execute as @s[tag=QIII,tag=1kTaggedZ,tag=!100TaggedZ] run teleport @s ~ ~ ~100
execute as @s[tag=QIII,tag=!100TaggedZ] run scoreboard players remove @s zPos 100    
execute as @s[tag=QIII,tag=QIV,tag=!100TaggedZ] run teleport @s ~ ~ ~-100
execute as @s[tag=QIII,tag=QIV,tag=!100TaggedZ] run tag @s add 100TaggedZ

execute as @s[tag=QIII,tag=100TaggedZ,tag=!10TaggedZ] run teleport @s ~ ~ ~10
execute as @s[tag=QIII,tag=!10TaggedZ] run scoreboard players remove @s zPos 10     
execute as @s[tag=QIII,tag=QIV,tag=!10TaggedZ] run teleport @s ~ ~ ~-10
execute as @s[tag=QIII,tag=QIV,tag=!10TaggedZ] run tag @s add 10TaggedZ

execute as @s[tag=QIII,tag=10TaggedZ,tag=!1TaggedZ] run teleport @s ~ ~ ~1
execute as @s[tag=QIII,tag=!1TaggedZ] run scoreboard players remove @s zPos 1 
execute as @s[tag=QIII,tag=!1TaggedZ,z=0] run tag @s add 1TaggedZ
# Y
execute as @s[tag=QIII,tag=!100TaggedY,tag=1TaggedZ] run teleport @s ~ ~-100 ~
execute as @s[tag=QIII,tag=!100TaggedY] run scoreboard players add @s yPos 100
execute as @s[tag=QIII,tag=BelowZero,tag=!100TaggedY] run teleport @s ~ ~ ~100
execute as @s[tag=QIII,tag=BelowZero,tag=!100TaggedY] run tag @s add 100TaggedY

execute as @s[tag=QIII,tag=100TaggedY,tag=!10TaggedY] run teleport @s ~ ~ ~-10
execute as @s[tag=QIII,tag=!10TaggedY] run scoreboard players add @s yPos 10
execute as @s[tag=QIII,tag=BelowZero,tag=!10TaggedY] run teleport @s ~ ~ ~10
execute as @s[tag=QIII,tag=BelowZero,tag=!10TaggedY] run tag @s add 10TaggedY

execute as @s[tag=QIII,tag=10TaggedY,tag=!1TaggedY] run teleport @s ~ ~ ~-1
execute as @s[tag=QIII,tag=!1TaggedY] run scoreboard players add @s zPos 1
execute as @s[tag=QIII,tag=!1TaggedY,y=0] run tag @s add 1TaggedY
