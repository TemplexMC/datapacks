# Timer.
execute as @e[name=MailFind,type=armor_stand] run scoreboard players add @s Database 1
# Finding mail box through subtraction comparing.
execute as @s[tag=!Mailing] run title @a actionbar [{"text":"Searching for mailbox...","color":"aqua"}]
execute as @s[tag=!Mailing] run scoreboard players operation @e[name=Proxy3,type=armor_stand] Database = @e[tag=!MailTried,type=armor_stand,tag=MailTPStand] UUID
execute as @s[tag=!Mailing] run scoreboard players operation @e[name=Proxy4,type=armor_stand] Database = @s Mail
execute as @s[tag=!Mailing] run scoreboard players operation @e[name=Proxy3,type=armor_stand] Database -= @e[name=Proxy4,type=armor_stand] Database
execute as @s[tag=!Mailing] as @e[name=Proxy3,type=armor_stand,scores={Database=0}] run tag @p[scores={Mail=1..}] add Mailing
execute as @s[tag=!Mailing] run tag @e[tag=!MailTried,type=armor_stand,tag=MailTPStand] add MailTried
execute as @s[tag=!Mailing] run tag @s add MailNoReset
execute as @s[tag=!Mailing] run scoreboard players reset @a[tag=!MailNoReset] Mail
execute as @s[tag=!Mailing] run tag @s remove MailNoReset
scoreboard players set @e[name=Proxy3,type=armor_stand] Database 0
scoreboard players set @e[name=Proxy4,type=armor_stand] Database 0
# Teleporting to mailbox.
execute as @s[tag=Mailing] run tag @e[tag=!MailTried,type=armor_stand,tag=MailTPStand] add TPto
execute as @s[tag=Mailing] run title @a actionbar [{"text":"Mailbox found! Teleporting to... ","color":"aqua"},{"selector":"@e[tag=!MailTried,type=armor_stand,tag=MailTPStand,tag=TPto]"}]
execute as @s[tag=Mailing] run tellraw @s [{"text":"Mailbox found! Teleporting to... ","color":"aqua","italic":"true"},{"selector":"@e[tag=!MailTried,type=armor_stand,tag=MailTPStand,tag=TPto]"}]
execute as @s[tag=Mailing] run tellraw @a[tag=OP] [{"text":"Mail System","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":" just got teleported to ","color":"red"},{"selector":"@e[tag=!MailTried,type=armor_stand,tag=MailTPStand,tag=TPto]","color":"green"},{"text":".","color":"red"}]
execute as @s[tag=Mailing] run scoreboard players set @e[name=MailFind,type=armor_stand] Database 0
execute as @s[tag=Mailing] run teleport @s @e[tag=!MailTried,type=armor_stand,tag=MailTPStand,tag=TPto,limit=1,sort=nearest]
execute as @s[tag=Mailing] run tag @e[tag=!MailTried,type=armor_stand,tag=MailTPStand,tag=TPto] remove TPto
execute as @s[tag=Mailing] run tag @e[tag=MailTried,type=armor_stand,tag=MailTPStand] remove MailTried
# Resets.
execute as @e[name=MailFind,type=armor_stand,scores={Database=60}] run function templex_standard:mailfind_fail
