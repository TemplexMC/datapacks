# Setting of scores.
execute as @s[tag=!PosEqualized] run scoreboard players operation @e[name=Proxy1,type=armor_stand] xPos = @s xPos
execute as @s[tag=!PosEqualized] run scoreboard players operation @e[name=Proxy1,type=armor_stand] zPos = @s zPos
execute as @s[tag=!PosEqualized] run scoreboard players operation @e[name=Proxy1,type=armor_stand] yPos = @s yPos
execute as @s[tag=!PosEqualized] run tag @s add PosEqualized
## Coordinates ##
# X
execute if entity @e[name=Proxy1,type=armor_stand,scores={xPos=1..}] at @s run function position:xgreater
execute if entity @e[name=Proxy1,type=armor_stand,scores={xPos=..-1}] at @s run function position:xlesser
execute if entity @e[name=Proxy1,type=armor_stand,scores={xPos=0}] at @s run tag @s add xPosComplete
# Z
execute if entity @e[name=Proxy1,type=armor_stand,scores={zPos=1..}] at @s run function position:zgreater
execute if entity @e[name=Proxy1,type=armor_stand,scores={zPos=..-1}] at @s run function position:zlesser
execute if entity @e[name=Proxy1,type=armor_stand,scores={zPos=0}] at @s run tag @s add zPosComplete
# Y
execute if entity @e[name=Proxy1,type=armor_stand,scores={yPos=1..}] at @s run function position:ygreater
execute if entity @e[name=Proxy1,type=armor_stand,scores={yPos=0}] at @s run tag @s add yPosComplete
# Completed.
execute as @s[tag=xPosComplete,tag=zPosComplete,tag=yPosComplete] run tellraw @s [{"text":"Position Stored!","color":"green"}]
execute as @s[tag=xPosComplete,tag=zPosComplete,tag=yPosComplete] run tellraw @s [{"text":"\u00A7bX\u00A78: "},{"score":{"name":"@s","objective":"xPos"},"color":"gold"},{"text":" \u00A7bY\u00A78: "},{"score":{"name":"@s","objective":"yPos"},"color":"gold"},{"text":" \u00A7bZ\u00A78: "},{"score":{"name":"@s","objective":"zPos"},"color":"gold"}]
execute as @s[tag=xPosComplete,tag=zPosComplete,tag=yPosComplete] run tag @s remove PosEqualized
execute as @s[tag=xPosComplete,tag=zPosComplete,tag=yPosComplete] run tag @s remove 10milTaggedX
execute as @s[tag=xPosComplete,tag=zPosComplete,tag=yPosComplete] run tag @s remove 1milTaggedX
execute as @s[tag=xPosComplete,tag=zPosComplete,tag=yPosComplete] run tag @s remove 100kTaggedX
execute as @s[tag=xPosComplete,tag=zPosComplete,tag=yPosComplete] run tag @s remove 10kTaggedX
execute as @s[tag=xPosComplete,tag=zPosComplete,tag=yPosComplete] run tag @s remove 1kTaggedX
execute as @s[tag=xPosComplete,tag=zPosComplete,tag=yPosComplete] run tag @s remove 100TaggedX
execute as @s[tag=xPosComplete,tag=zPosComplete,tag=yPosComplete] run tag @s remove 10TaggedX
execute as @s[tag=xPosComplete,tag=zPosComplete,tag=yPosComplete] run tag @s remove 1TaggedX
execute as @s[tag=xPosComplete,tag=zPosComplete,tag=yPosComplete] run tag @s remove 10milTaggedZ
execute as @s[tag=xPosComplete,tag=zPosComplete,tag=yPosComplete] run tag @s remove 1milTaggedZ
execute as @s[tag=xPosComplete,tag=zPosComplete,tag=yPosComplete] run tag @s remove 100kTaggedZ
execute as @s[tag=xPosComplete,tag=zPosComplete,tag=yPosComplete] run tag @s remove 10kTaggedZ
execute as @s[tag=xPosComplete,tag=zPosComplete,tag=yPosComplete] run tag @s remove 1kTaggedZ
execute as @s[tag=xPosComplete,tag=zPosComplete,tag=yPosComplete] run tag @s remove 100TaggedZ
execute as @s[tag=xPosComplete,tag=zPosComplete,tag=yPosComplete] run tag @s remove 10TaggedZ
execute as @s[tag=xPosComplete,tag=zPosComplete,tag=yPosComplete] run tag @s remove 1TaggedZ
execute as @s[tag=xPosComplete,tag=zPosComplete,tag=yPosComplete] run tag @s remove 100TaggedY
execute as @s[tag=xPosComplete,tag=zPosComplete,tag=yPosComplete] run tag @s remove 10TaggedY
execute as @s[tag=xPosComplete,tag=zPosComplete,tag=yPosComplete] run tag @s remove 1TaggedY
execute as @s[tag=xPosComplete,tag=zPosComplete,tag=yPosComplete] run tag @s add PosRemoval
execute as @s[tag=PosRemoval] run scoreboard players set StorePos 0
execute as @s[tag=PosRemoval] run tag @s remove yPosComplete
execute as @s[tag=PosRemoval] run tag @s remove zPosComplete
execute as @s[tag=PosRemoval] run tag @s remove xPosComplete
execute as @s[tag=PosRemoval] run tag @s remove PosRemoval
