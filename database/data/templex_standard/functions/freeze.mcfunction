# Timer.
execute as @e[name=Freezer,type=armor_stand] run scoreboard players add @s Database 1
# Finding mail box through subtraction comparing.
execute as @s[tag=!Freezing] run title @s actionbar [{"text":"Searching for player to freeze...","color":"aqua"}]
execute as @s[tag=!Freezing] run scoreboard players operation @e[name=Proxy3,type=armor_stand] Database = @p[tag=!FreezingTried,limit=1,sort=nearest] UUID
execute as @s[tag=!Freezing] run scoreboard players operation @e[name=Proxy4,type=armor_stand] Database = @s Freeze
execute as @s[tag=!Freezing] run scoreboard players operation @e[name=Proxy4,type=armor_stand] Database -= @e[name=Proxy3,type=armor_stand] Database
execute as @s[tag=!Freezing] if entity @e[name=Proxy4,type=armor_stand,scores={Database=0},limit=1] run tag @s add Freezing
execute as @s[tag=!Freezing] run tag @p[tag=!FreezingTried,limit=1,sort=nearest] add FreezingTried
execute as @s[tag=!Freezing] run tag @s add FreezingNoReset
execute as @s[tag=!Freezing] run scoreboard players reset @a[tag=!FreezingNoReset] Freeze
execute as @s[tag=!Freezing] run tag @s remove FreezingNoReset
scoreboard players set @e[name=Proxy3,type=armor_stand] Database 0
scoreboard players set @e[name=Proxy4,type=armor_stand] Database 0
# Teleporting to mailbox.
execute as @s[tag=Freezing] run tag @e[tag=!FreezingTried,limit=1,sort=nearest] add GetFreeze
execute as @s[tag=Freezing] run title @s actionbar [{"text":"Player to freeze found! Freezing ","color":"aqua"},{"selector":"@p[tag=GetFreeze]"},{"text":"...","color":"aqua"}]
execute as @s[tag=Freezing] run tellraw @s [{"text":"Player found! Freezing ","color":"aqua","italic":"true"},{"selector":"@p[tag=GetFreeze]"}]
execute as @s[tag=Freezing] run tellraw @a[tag=OP] [{"text":"Freeze System","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":" just froze ","color":"red"},{"selector":"@p[tag=GetFreeze]","color":"green"},{"text":".","color":"red"}]
execute as @s[tag=Freezing] run tag @s[tag=GetFreeze] add Frozen
execute as @s[tag=Freezing] run scoreboard players set @e[name=Proxy3,type=armor_stand] Database 0
execute as @s[tag=Freezing] run scoreboard players set @e[name=Proxy4,type=armor_stand] Database 0
execute as @s[tag=Freezing] run tag @a remove FreezingTried
execute as @s[tag=Freezing] run tag @a remove GetFreeze
execute as @s[tag=Freezing] run scoreboard players reset @a Freeze
execute as @s[tag=Freezing] run scoreboard players enable @a Freeze
execute as @s[tag=Freezing] run scoreboard players set @e[name=Freezer,type=armor_stand] Database 0
execute as @s[tag=Freezing] run tag @s remove Freezing
# Resets.
execute as @s if entity @e[limit=1,sort=nearest,name=Freezer,type=armor_stand,scores={Database=200}] run function templex_standard:freezefind_fail
