# Figuring out which quadrant they are in.
execute as @s at @s run teleport @s ~ ~ ~ facing 0 1 0
execute as @s at @s if entity @s[y_rotation=0..90,tag=!QII] run tag @s add QII
execute as @s at @s if entity @s[y_rotation=90..179.9,tag=!QI] run tag @s add QI
execute as @s at @s if entity @s[y_rotation=-90..0,tag=!QIII] run tag @s add QIII
execute as @s at @s if entity @s[y_rotation=-180..-90,tag=!QIV] run tag @s add QIV
execute as @s at @s if entity @s[x_rotation=-90..0,tag=!BelowZero] run tag @s add BelowZero
# Notifications.
execute as @s[tag=!GottenPos] run title @s actionbar [{"text":"Finding / Storing Pos... Do not move your mouse...","color":"aqua"}]
## Quad I
# X
execute as @s[tag=QI,tag=!10milTaggedX] run teleport @s ~-10000000 ~ ~
execute as @s[tag=QI,tag=!10milTaggedX] run scoreboard players add @s xPos 10000000
execute as @s[tag=QI,tag=QIV,tag=!10milTaggedX] run teleport @s ~10000000 ~ ~
execute as @s[tag=QI,tag=QIV,tag=!10milTaggedX] run tag @s add 10milTaggedX

execute as @s[tag=QI,tag=10milTaggedX,tag=!1milTaggedX] run teleport @s ~-1000000 ~ ~
execute as @s[tag=QI,tag=!1milTaggedX] run scoreboard players add @s xPos 1000000
execute as @s[tag=QI,tag=QIV,tag=!1milTaggedX] run teleport @s ~1000000 ~ ~
execute as @s[tag=QI,tag=QIV,tag=!1milTaggedX] run tag @s add 1milTaggedX

execute as @s[tag=QI,tag=1milTaggedX,tag=!100kTaggedX] run teleport @s ~-100000 ~ ~
execute as @s[tag=QI,tag=!100kTaggedX] run scoreboard players add @s xPos 100000
execute as @s[tag=QI,tag=QIV,tag=!100kTaggedX] run teleport @s ~100000 ~ ~
execute as @s[tag=QI,tag=QIV,tag=!100kTaggedX] run tag @s add 100kTaggedX

execute as @s[tag=QI,tag=100kTaggedX,tag=!10kTaggedX] run teleport @s ~-10000 ~ ~
execute as @s[tag=QI,tag=!10kTaggedX] run scoreboard players add @s xPos 10000
execute as @s[tag=QI,tag=QIV,tag=!10kTaggedX] run teleport @s ~1000000 ~ ~
execute as @s[tag=QI,tag=QIV,tag=!10kTaggedX] run tag @s add 10kTaggedX

execute as @s[tag=QI,tag=10kTaggedX,tag=!1kTaggedX] run teleport @s ~-1000 ~ ~
execute as @s[tag=QI,tag=!1kTaggedX] run scoreboard players add @s xPos 1000
execute as @s[tag=QI,tag=QIV,tag=!1kTaggedX] run teleport @s ~1000 ~ ~
execute as @s[tag=QI,tag=QIV,tag=!1kTaggedX] run tag @s add 1kTaggedX

execute as @s[tag=QI,tag=1kTaggedX,tag=!100TaggedX] run teleport @s ~-100 ~ ~
execute as @s[tag=QI,tag=!100TaggedX] run scoreboard players add @s xPos 100
execute as @s[tag=QI,tag=QIV,tag=!100TaggedX] run teleport @s ~100 ~ ~
execute as @s[tag=QI,tag=QIV,tag=!100TaggedX] run tag @s add 100TaggedX

execute as @s[tag=QI,tag=100TaggedX,tag=!10TaggedX] run teleport @s ~-10 ~ ~
execute as @s[tag=QI,tag=!10TaggedX] run scoreboard players add @s xPos 10
execute as @s[tag=QI,tag=QIV,tag=!10TaggedX] run teleport @s ~10 ~ ~
execute as @s[tag=QI,tag=QIV,tag=!10TaggedX] run tag @s add 10TaggedX

execute as @s[tag=QI,tag=10TaggedX,tag=!1TaggedX] run teleport @s ~-1 ~ ~
execute as @s[tag=QI,tag=!1TaggedX] run scoreboard players add @s xPos 1
execute as @s[tag=QI,tag=!1TaggedX,x=0] run tag @s add 1TaggedX
# Z
execute as @s[tag=QI,tag=!10milTaggedZ,tag=1TaggedX] run teleport @s ~ ~ ~-10000000
execute as @s[tag=QI,tag=!10milTaggedZ] run scoreboard players add @s zPos 10000000
execute as @s[tag=QI,tag=QII,tag=!10milTaggedZ] run teleport @s ~ ~ ~10000000
execute as @s[tag=QI,tag=QII,tag=!10milTaggedZ] run tag @s add 10milTaggedZ

execute as @s[tag=QI,tag=10milTaggedZ,tag=!1milTaggedZ] run teleport @s ~ ~ ~-1000000
execute as @s[tag=QI,tag=!1milTaggedZ] run scoreboard players add @s zPos 1000000 
execute as @s[tag=QI,tag=QII,tag=!1milTaggedZ] run teleport @s ~ ~ ~1000000
execute as @s[tag=QI,tag=QII,tag=!1milTaggedZ] run tag @s add 1milTaggedZ

execute as @s[tag=QI,tag=1milTaggedZ,tag=!100kTaggedZ] run teleport @s ~ ~ ~-100000
execute as @s[tag=QI,tag=!100kTaggedZ] run scoreboard players add @s zPos 100000
execute as @s[tag=QI,tag=QII,tag=!100kTaggedZ] run teleport @s ~ ~ ~100000
execute as @s[tag=QI,tag=QII,tag=!100kTaggedZ] run tag @s add 100kTaggedZ

execute as @s[tag=QI,tag=100kTaggedZ,tag=!10kTaggedZ] run teleport @s ~ ~ ~-10000
execute as @s[tag=QI,tag=!10kTaggedZ] run scoreboard players add @s zPos 10000  
execute as @s[tag=QI,tag=QII,tag=!10kTaggedZ] run teleport @s ~ ~ ~10000
execute as @s[tag=QI,tag=QII,tag=!10kTaggedZ] run tag @s add 10kTaggedZ

execute as @s[tag=QI,tag=10kTaggedZ,tag=!1kTaggedZ] run teleport @s ~ ~ ~-1000
execute as @s[tag=QI,tag=!1kTaggedZ] run scoreboard players add @s zPos 1000 
execute as @s[tag=QI,tag=QII,tag=!1kTaggedZ] run teleport @s ~ ~ ~1000
execute as @s[tag=QI,tag=QII,tag=!1kTaggedZ] run tag @s add 1kTaggedZ

execute as @s[tag=QI,tag=1kTaggedZ,tag=!100TaggedZ] run teleport @s ~ ~ ~-100
execute as @s[tag=QI,tag=!100TaggedZ] run scoreboard players add @s zPos 100    
execute as @s[tag=QI,tag=QII,tag=!100TaggedZ] run teleport @s ~ ~ ~100
execute as @s[tag=QI,tag=QII,tag=!100TaggedZ] run tag @s add 100TaggedZ

execute as @s[tag=QI,tag=100TaggedZ,tag=!10TaggedZ] run teleport @s ~ ~ ~-10
execute as @s[tag=QI,tag=!10TaggedZ] run scoreboard players add @s zPos 10     
execute as @s[tag=QI,tag=QII,tag=!10TaggedZ] run teleport @s ~ ~ ~10
execute as @s[tag=QI,tag=QII,tag=!10TaggedZ] run tag @s add 10TaggedZ

execute as @s[tag=QI,tag=10TaggedZ,tag=!1TaggedZ] run teleport @s ~ ~ ~-1
execute as @s[tag=QI,tag=!1TaggedZ] run scoreboard players add @s zPos 1 
execute as @s[tag=QI,tag=!1TaggedZ,z=0] run tag @s add 1TaggedZ
# Y
execute as @s[tag=QI,tag=!100TaggedY,tag=1TaggedZ] run teleport @s ~ ~-100 ~
execute as @s[tag=QI,tag=!100TaggedY] run scoreboard players add @s yPos 100
execute as @s[tag=QI,tag=BelowZero,tag=!100TaggedZ] run teleport @s ~ ~ ~100
execute as @s[tag=QI,tag=BelowZero,tag=!100TaggedZ] run tag @s add 100TaggedY

execute as @s[tag=QI,tag=100TaggedZ,tag=!10TaggedZ] run teleport @s ~ ~ ~-10
execute as @s[tag=QI,tag=!10TaggedZ] run scoreboard players add @s yPos 10
execute as @s[tag=QI,tag=BelowZero,tag=!10TaggedZ] run teleport @s ~ ~ ~10
execute as @s[tag=QI,tag=BelowZero,tag=!10TaggedZ] run tag @s add 10TaggedY

execute as @s[tag=QI,tag=10TaggedZ,tag=!1TaggedZ] run teleport @s ~ ~ ~-1
execute as @s[tag=QI,tag=!1TaggedZ] run scoreboard players add @s zPos 1
execute as @s[tag=QI,tag=!1TaggedZ,y=0] run tag @s add 1TaggedY

#

# Removing tags.
execute as @s[tag=QI,tag=QIV] run tag @s remove QIV
execute as @s[tag=QI,tag=QII] run tag @s remove QII
execute as @s[tag=BelowZero] run tag @s remove BelowZero
