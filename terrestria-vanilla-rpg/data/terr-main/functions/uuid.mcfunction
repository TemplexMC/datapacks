# Doers.
scoreboard players add @e[tag=t.stand,name=t.main] t.uuid 1
scoreboard players operation @s t.uuid = @e[tag=t.stand,name=t.main] t.uuid
# Tellers.
tellraw @s [{"text":"\u00A76Terrestria \u00A78: \u00A7bYour Terrestria UUID is: ","color":"aqua"},{"score":{"name":"@s","objective":"t.uuid"}}]
tellraw @a[tag=t.perm.admin] [{"text":"\u00A76Terrestria \u00A78: "},{"selector":"@s","color":"yellow"},{"text":" has been tagged with UUID of ","color":"green"},{"score":{"name":"@s","objective":"t.uuid"}}]
# Taggers.
tag @s add t.uuided
