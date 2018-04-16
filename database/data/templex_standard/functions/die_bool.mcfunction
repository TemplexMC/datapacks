# Setters.
execute as @s store result score @s die.xpos run data get entity @s Pos[0]
execute as @s store result score @s die.ypos run data get entity @s Pos[1]
execute as @s store result score @s die.zpos run data get entity @s Pos[2]
# Tellers.
tellraw @s [{"text":"Successfully set your last death coords to X: ","color":"green"},{"score":{"name":"@s","objective":"die.xpos"},"color":"gold"},{"text":" Y: ","color":"green"},{"score":{"name":"@s","objective":"die.ypos"},"color":"gold"},{"text":" Z: ","color":"green"},{"score":{"name":"@s","objective":"die.zpos"},"color":"gold"},{"text":"!","color":"green"}]
tellraw @s [{"text":"If this made you lose your home, please screenshot these and give it to a Staff Member. Thanks!","color":"gold"}]
# Resetters.
scoreboard players reset @s die.bool
