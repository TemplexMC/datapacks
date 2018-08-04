# Begin see all online uuids.
# Players Online.
scoreboard players set PLAYON Database 0
execute as @a at @s run scoreboard players add PLAYON Database 1
# Tellers and taggers.
execute as @p[tag=!seeuuid.done] at @s run tellraw @a[scores={SeeAllUUIDs=1..}] [{"text":"\u00A76See UUIDs \u00A78: "},{"selector":"@s","color":"green"},{"text":"'s UUID is ","color":"dark_green"},{"score":{"name":"@s","objective":"UUID","color":"gold"}}]
execute as @p[tag=!seeuuid.done] at @s run scoreboard players add P3 Database 1
execute as @p[tag=!seeuuid.done] at @s run tag @s add seeuuid.done
# Subtraction Checking.
scoreboard players operation PLAYON Database -= P3 Database
execute if score PLAYON Database matches 0 run tag @s add SeeAllUUIDs.done
# Done.
execute as @s[tag=SeeAllUUIDs.done] at @s run scoreboard players reset PLAYON Database
execute as @s[tag=SeeAllUUIDs.done] at @s run scoreboard players reset P3 Database
execute as @s[tag=SeeAllUUIDs.done] at @s run tellraw @a[tag=OP] [{"text":"\u00A76See UUIDs \u00A78: "},{"selector":"@s","color":"dark_green"},{"text":" has just seen all uuids.","color":"dark_green"}]
execute as @s[tag=SeeAllUUIDs.done] at @s run tag @a remove seeuuid.done
execute as @s[tag=SeeAllUUIDs.done] at @s run scoreboard players reset @s SeeAllUUIDs
execute as @s[tag=SeeAllUUIDs.done] at @s run scoreboard players enable @a SeeAllUUIDs
execute as @s[tag=SeeAllUUIDs.done] at @s run tag @s remove SeeAllUUIDs.done
