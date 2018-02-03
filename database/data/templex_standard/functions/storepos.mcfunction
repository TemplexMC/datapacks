# Figuring out which quadrant they are in.
execute as @s at @s run teleport @s ~ ~ ~ facing 0 1 0
execute as @s at @s if entity @s[y_rotation=0..90,tag=!QII] run tag @s add QII
execute as @s at @s if entity @s[y_rotation=90..179.9,tag=!QI] run tag @s add QI
execute as @s at @s if entity @s[y_rotation=-90..0,tag=!QIII] run tag @s add QIII
execute as @s at @s if entity @s[y_rotation=-180..-90,tag=!QIV] run tag @s add QIV
execute as @s at @s if entity @s[x_rotation=-1..-90,tag=!BelowZero] run tag @s add BelowZero
## Quad I
# X
execute as @s[tag=QI,tag=!10milTagged] run teleport @s ~-10000000 ~ ~
execute as @s[tag=QI,tag=!10milTagged] run scoreboard players add @s xPos 10000000
execute as @s[tag=QI,tag=QIV,tag=!10milTagged] run teleport @s ~10000000 ~ ~
execute as @s[tag=QI,tag=QIV,tag=!10milTagged] run tag @s add 10milTagged

execute as @s[tag=QI,tag=10milTagged,tag=!1milTagged] run teleport @s ~-1000000 ~ ~
execute as @s[tag=QI,tag=!1milTagged] run scoreboard players add @s xPos 1000000
execute as @s[tag=QI,tag=QIV,tag=!1milTagged] run teleport @s ~1000000 ~ ~
execute as @s[tag=QI,tag=QIV,tag=!1milTagged] run tag @s add 1milTagged

execute as @s[tag=QI,tag=1milTagged,tag=!100kTagged] run teleport @s ~-100000 ~ ~
execute as @s[tag=QI,tag=!100kTagged] run scoreboard players add @s xPos 100000
execute as @s[tag=QI,tag=QIV,tag=!100kTagged] run teleport @s ~100000 ~ ~
execute as @s[tag=QI,tag=QIV,tag=!100kTagged] run tag @s add 100kTagged

execute as @s[tag=QI,tag=100kTagged,tag=!10kTagged] run teleport @s ~-10000 ~ ~
execute as @s[tag=QI,tag=!10kTagged] run scoreboard players add @s xPos 10000
execute as @s[tag=QI,tag=QIV,tag=!10kTagged] run teleport @s ~1000000 ~ ~
execute as @s[tag=QI,tag=QIV,tag=!10kTagged] run tag @s add 10kTagged

execute as @s[tag=QI,tag=10kTagged,tag=!1kTagged] run teleport @s ~-1000 ~ ~
execute as @s[tag=QI,tag=!1kTagged] run scoreboard players add @s xPos 1000
execute as @s[tag=QI,tag=QIV,tag=!1kTagged] run teleport @s ~1000 ~ ~
execute as @s[tag=QI,tag=QIV,tag=!1kTagged] run tag @s add 1kTagged

execute as @s[tag=QI,tag=1kTagged,tag=!100Tagged] run teleport @s ~-100 ~ ~
execute as @s[tag=QI,tag=!100Tagged] run scoreboard players add @s xPos 100
execute as @s[tag=QI,tag=QIV,tag=!100Tagged] run teleport @s ~100 ~ ~
execute as @s[tag=QI,tag=QIV,tag=!100Tagged] run tag @s add 100Tagged

execute as @s[tag=QI,tag=100Tagged,tag=!10Tagged] run teleport @s ~-10 ~ ~
execute as @s[tag=QI,tag=!10Tagged] run scoreboard players add @s xPos 10
execute as @s[tag=QI,tag=QIV,tag=!10Tagged] run teleport @s ~10 ~ ~
execute as @s[tag=QI,tag=QIV,tag=!10Tagged] run tag @s add 10Tagged

execute as @s[tag=QI,tag=10Tagged,tag=!1Tagged] run teleport @s ~-1 ~ ~
execute as @s[tag=QI,tag=!1Tagged] run scoreboard players add @s xPos 1
execute as @s[tag=QI,tag=!1Tagged,x=0] run tag @s add 1Tagged
# Z
execute as @s[tag=QI,tag=!10milTaggedZ] run teleport @s ~ ~ ~-10000000
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
execute as @s[tag=QI,tag=1kTaggedZ,tag=!100TaggedZ] run teleport @s ~ ~-100 ~
execute as @s[tag=QI,tag=!100TaggedZ] run scoreboard players add @s zPos 100
execute as @s[tag=QI,tag=BelowZero,tag=!100TaggedZ] run teleport @s ~ ~ ~100
execute as @s[tag=QI,tag=BelowZero,tag=!100TaggedZ] run tag @s add 100TaggedY

execute as @s[tag=QI,tag=100TaggedZ,tag=!10TaggedZ] run teleport @s ~ ~ ~-10
execute as @s[tag=QI,tag=!10TaggedZ] run scoreboard players add @s zPos 10
execute as @s[tag=QI,tag=BelowZero,tag=!10TaggedZ] run teleport @s ~ ~ ~10
execute as @s[tag=QI,tag=BelowZero,tag=!10TaggedZ] run tag @s add 10TaggedY

execute as @s[tag=QI,tag=10TaggedZ,tag=!1TaggedZ] run teleport @s ~ ~ ~-1
execute as @s[tag=QI,tag=!1TaggedZ] run scoreboard players add @s zPos 1
execute as @s[tag=QI,tag=!1TaggedZ,z=0] run tag @s add 1TaggedY


# Removing tags.
execute as @s[tag=QI,tag=QIV] run tag @s remove QIV
execute as @s[tag=QI,tag=QII] run tag @s remove QII
execute as @s[tag=BelowZero] run tag @s remove BelowZero
