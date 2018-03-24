# Tagging and outputing.
execute if entity @s[tag=!Zeroed] run scoreboard players set @s UUID 0
execute as @e[name=CurrentUUID,type=armor_stand] run scoreboard players add @s Database 1
execute if entity @e[name=CurrentUUID,type=armor_stand] run scoreboard players add Current-UUID Stats 1
execute if entity @e[name=CurrentUUID,type=armor_stand] run scoreboard players operation @s UUID = @e[name=CurrentUUID,type=armor_stand] Database
execute if entity @e[name=CurrentUUID,type=armor_stand] run tellraw @a[tag=OP] [{"text":"Tagger","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Just tagged ","color":"red"},{"selector":"@s"},{"text":" with UUID: ","color":"red"},{"score":{"name":"@e[name=CurrentUUID,type=armor_stand]","objective":"Database"}}]
execute if entity @s[tag=!Zeroed] run tag @s add Zeroed
# Tagging.
execute if entity @e[name=CurrentUUID,type=armor_stand] run tag @s add GotMyUUID
