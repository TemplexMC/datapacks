# Tagging and outputing.
scoreboard players add @e[name=CurrentUUID,type=armor_stand] Database 1
scoreboard players operation @s UUID = @e[name=CurrentUUID,type=armor_stand] Database
tellraw @a[tag=OP] [{"text":"Tagger","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Just tagged ","color":"red"},{"selector":"@s"},{"text":" with UUID: ","color":"red"},{"score":{"name":"@e[name=CurrentUUID,type=armor_stand]","objective":"Database"}}]

# Tagging.
tag @s add UUIDAdded
