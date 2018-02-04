# Timer.
execute as @e[name=MailFind,type=armor_stand] run scoreboard players add @s Database 1
# Finding mail box through subtraction comparing.
execute as @s[tag=!Mailing] positioned 0 100 0 run title @s actionbar [{"text":"Searching for mailbox...","color":"aqua"}]
execute as @s[tag=!Mailing] positioned 0 100 0 run scoreboard players operation @e[name=Proxy3,type=armor_stand] Database = @e[tag=!MailTried,type=armor_stand,limit=1,sort=nearest,tag=MailTPStand] UUID
execute as @s[tag=!Mailing] positioned 0 100 0 run scoreboard players operation @e[name=Proxy4,type=armor_stand] Database = @s Mail
execute as @s[tag=!Mailing] positioned 0 100 0 run scoreboard players operation @e[name=Proxy4,type=armor_stand] Database -= @e[name=Proxy3,type=armor_stand] Database
execute as @s[tag=!Mailing] positioned 0 100 0 as @e[name=Proxy4,type=armor_stand,scores={Database=0}] run tag @p[scores={Mail=1..}] add Mailing
execute as @s[tag=!Mailing] positioned 0 100 0 run tag @e[tag=!MailTried,type=armor_stand,tag=MailTPStand,limit=1,sort=nearest] add MailTried
execute as @s[tag=!Mailing] positioned 0 100 0 run tag @s add MailNoReset
execute as @s[tag=!Mailing] positioned 0 100 0 run scoreboard players reset @a[tag=!MailNoReset] Mail
execute as @s[tag=!Mailing] positioned 0 100 0 run tag @s remove MailNoReset
scoreboard players set @e[name=Proxy3,type=armor_stand] Database 0
scoreboard players set @e[name=Proxy4,type=armor_stand] Database 0
# Teleporting to mailbox.
execute as @s[tag=Mailing] positioned 0 100 0 run tag @e[tag=!MailTried,type=armor_stand,tag=MailTPStand,limit=1,sort=nearest] add TPto
execute as @s[tag=Mailing] positioned 0 100 0 run title @s actionbar [{"text":"Mailbox found! Teleporting to... ","color":"aqua"},{"selector":"@e[tag=TPto]"}]
execute as @s[tag=Mailing] positioned 0 100 0 run tellraw @s [{"text":"Mailbox found! Teleporting to... ","color":"aqua","italic":"true"},{"selector":"@e[tag=TPto]"}]
execute as @s[tag=Mailing] positioned 0 100 0 run tellraw @a[tag=OP] [{"text":"Mail System","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":" just got teleported to ","color":"red"},{"selector":"@e[tag=TPto]","color":"green"},{"text":".","color":"red"}]
execute as @s[tag=Mailing] positioned 0 100 0 run scoreboard players set @e[name=MailFind,type=armor_stand] Database 0
execute as @s[tag=Mailing] positioned 0 100 0 run teleport @s @e[tag=!MailTried,type=armor_stand,tag=MailTPStand,tag=TPto,limit=1,sort=nearest]
execute as @s[tag=Mailing] positioned 0 100 0 run scoreboard players set @e[name=Proxy3,type=armor_stand] Database 0
execute as @s[tag=Mailing] positioned 0 100 0 run scoreboard players set @e[name=Proxy4,type=armor_stand] Database 0
execute as @s[tag=Mailing] positioned 0 100 0 run tag @e[tag=MailTPStand] remove MailTried
execute as @s[tag=Mailing] positioned 0 100 0 run tag @e[tag=MailTPStand] remove TPto
execute as @s[tag=Mailing] positioned 0 100 0 run scoreboard players set @a Mail 0
execute as @s[tag=Reading] positioned 0 100 0 run scoreboard players enable @a MailRead
execute as @s[tag=Mailing] positioned 0 100 0 run scoreboard players enable @a Mail
execute as @s[tag=Mailing] positioned 0 100 0 run scoreboard players set @e[name=MailFind,type=armor_stand] Database 0
execute as @s[tag=Mailing] positioned 0 100 0 run tag @s remove Mailing
# Resets.
execute as @e[name=MailFind,type=armor_stand,scores={Database=200}] run function templex_standard:mailfind_fail
