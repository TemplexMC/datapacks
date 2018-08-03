# Setters.
execute as @s store result score @s xPos run data get entity @s Pos[0]
execute as @s store result score @s yPos run data get entity @s Pos[1]
execute as @s store result score @s zPos run data get entity @s Pos[2]
# Tellers.
tellraw @s [{"text":"Successfully set your home to X: ","color":"green"},{"score":{"name":"@s","objective":"xPos"},"color":"gold"},{"text":" Y: ","color":"green"},{"score":{"name":"@s","objective":"yPos"},"color":"gold"},{"text":" Z: ","color":"green"},{"score":{"name":"@s","objective":"zPos"},"color":"gold"},{"text":"!","color":"green"}]
tellraw @a[tag=OP] [{"text":"Set Home","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":" has just set their home!","color":"red"}]
# Doers.
execute at @s run summon armor_stand ~ ~ ~ {CustomName:"{\"text\":\"Home\",\"color\":\"aqua\"}",CustomNameVisible:1b,Invisible:1b,Invulnerable:1b}
execute at @s run scoreboard players operation @e[type=armor_stand,limit=1,sort=nearest] UUID = @s UUID
tag @s add tplx.home.true1
# Resetters.
scoreboard players reset @s SetHome
scoreboard players enable @a SetHome
