# Figuring out which quadrant they are in.
execute as @s at @s run teleport @s ~ ~ ~ facing 0 1 0
execute as @s at @s if entity @s[y_rotation=0..90,tag=!QII] run tag @s add QII
execute as @s at @s if entity @s[y_rotation=90..179.9,tag=!QI] run tag @s add QI
execute as @s at @s if entity @s[y_rotation=-90..0,tag=!QIII] run tag @s add QIII
execute as @s at @s if entity @s[y_rotation=-180..-90,tag=!QIV] run tag @s add QIV
execute as @s at @s if entity @s[x_rotation=-90..0,tag=!BelowZero] run tag @s add BelowZero
## Quadrants - Invert Checking ##
# Quad I.
execute as @s[tag=QI] at @s run function position:qi
# Quad II.
execute as @s[tag=QII] at @s run function position:qii
# Quad III.
execute as @s[tag=QIII] at @s run function position:qiii
# Quad IV.
execute as @s[tag=QIV] at @s run function position:qiv
## Quadrants - Replacing ##
# Replacing.
execute as @s[tag=1TaggedY] at @s run function position:tpback
# Removing tags.
execute as @s[tag=QI,tag=QIV] run tag @s remove QIV
execute as @s[tag=QI,tag=QII] run tag @s remove QII
execute as @s[tag=QII,tag=QIII] run tag @s remove QIII
execute as @s[tag=QII,tag=QI] run tag @s remove QI
execute as @s[tag=QIII,tag=QII] run tag @s remove QII
execute as @s[tag=QIII,tag=QIV] run tag @s remove QIV
execute as @s[tag=QIV,tag=QI] run tag @s remove QI
execute as @s[tag=QIV,tag=QIII] run tag @s remove QIII
execute as @s[x=0,y=0,z=0] run tag @s remove QI
execute as @s[x=0,y=0,z=0] run tag @s remove QII
execute as @s[x=0,y=0,z=0] run tag @s remove QIII
execute as @s[x=0,y=0,z=0] run tag @s remove QIV
execute as @s[tag=BelowZero] run tag @s remove BelowZero
# Enabling
scoreboard players enable @s StorePos
