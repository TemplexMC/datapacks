# Timer.
execute as @e[name=ReadFind,type=armor_stand] run scoreboard players add @s Database 1
# Finding mail box through subtraction comparing.
execute as @s[tag=!Reading] positioned 0 100 0 run title @s actionbar [{"text":"Searching for mailbox...","color":"aqua"}]
execute as @s[tag=!Reading] positioned 0 100 0 run scoreboard players operation @e[name=Proxy3,type=armor_stand] Database = @e[tag=!ReadTried,type=armor_stand,limit=1,sort=nearest,tag=MailReadStand] UUID
execute as @s[tag=!Reading] positioned 0 100 0 run scoreboard players operation @e[name=Proxy4,type=armor_stand] Database = @s UUID
execute as @s[tag=!Reading] positioned 0 100 0 run scoreboard players operation @e[name=Proxy4,type=armor_stand] Database -= @e[name=Proxy3,type=armor_stand] Database
execute as @s[tag=!Reading] positioned 0 100 0 as @e[name=Proxy4,type=armor_stand,scores={Database=0}] run tag @p[scores={MailRead=1..}] add Reading
execute as @s[tag=!Reading] positioned 0 100 0 run tag @e[tag=!ReadTried,type=armor_stand,tag=MailReadStand,limit=1,sort=nearest] add ReadTried
execute as @s[tag=!Reading] positioned 0 100 0 run tag @s add ReadNoReset
execute as @s[tag=!Reading] positioned 0 100 0 run scoreboard players reset @a[tag=!ReadNoReset] MailRead
execute as @s[tag=!Reading] positioned 0 100 0 run tag @s remove ReadNoReset
scoreboard players set @e[name=Proxy3,type=armor_stand] Database 0
scoreboard players set @e[name=Proxy4,type=armor_stand] Database 0
# Teleporting to mailbox.
execute as @s[tag=Reading] positioned 0 100 0 run tag @e[tag=!ReadTried,type=armor_stand,tag=MailReadStand,limit=1,sort=nearest] add CloneTo
execute as @s[tag=Reading] positioned 0 100 0 run title @s actionbar [{"text":"Mailbox found! Getting... ","color":"aqua"},{"selector":"@e[tag=CloneTo]","color":"green"}]
execute as @s[tag=Reading] positioned 0 100 0 run tellraw @s [{"text":"Mailbox found! Getting... ","color":"aqua","italic":"true"},{"selector":"@e[tag=CloneTo]","color":"green","italic":"false"}]
execute as @s[tag=Reading] positioned 0 100 0 run tellraw @a[tag=OP] [{"text":"Mail System","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":" just got mailbox ","color":"red"},{"selector":"@e[tag=CloneTo]","color":"green"},{"text":".","color":"red"}]
execute as @s[tag=Reading] positioned 0 100 0 run scoreboard players set @e[name=ReadFind,type=armor_stand] Database 0
execute as @s[tag=Reading] as @e[tag=CloneTo,limit=1] at @s run clone ~ ~ ~ ~ ~ ~ -1761700 17 865289 replace move
execute as @s[tag=Reading] at @s run clone -1761700 17 865289 -1761700 17 865289 ~ ~ ~ replace move
execute as @s[tag=Reading] as @e[tag=CloneTo,limit=1] at @s run setblock ~ ~ ~ chest
execute as @s[tag=Reading] positioned 0 100 0 run scoreboard players set @e[name=Proxy3,type=armor_stand] Database 0
execute as @s[tag=Reading] positioned 0 100 0 run scoreboard players set @e[name=Proxy4,type=armor_stand] Database 0
execute as @s[tag=Reading] positioned 0 100 0 run tag @e[tag=MailReadStand] remove ReadTried
execute as @s[tag=Reading] positioned 0 100 0 run tag @e[tag=MailReadStand] remove CloneTo
execute as @s[tag=Reading] positioned 0 100 0 run scoreboard players set @a MailRead 0
execute as @s[tag=Reading] positioned 0 100 0 run scoreboard players enable @a Mail
execute as @s[tag=Reading] positioned 0 100 0 run scoreboard players enable @a MailRead
execute as @s[tag=Reading] positioned 0 100 0 run scoreboard players set @e[name=ReadFind,type=armor_stand] Database 0
execute as @s[tag=Reading] positioned 0 100 0 run tag @s remove Reading
# Resets.
execute as @e[name=ReadFind,type=armor_stand,scores={Database=200}] run function templex_standard:readfind_fail
