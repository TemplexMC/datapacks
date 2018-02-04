tellraw @s [{"text":"We didn't find that person's mailbox... Either they haven't bought one yet, or you didn't supply the correct UUID number... Sorry.","color":"red"}]
tellraw @a[tag=OP] [{"text":"Mail System","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@p[scores={Mail=1..}]","color":"green"},{"text":" just tried to go to someone's mailbox with a UUID of ","color":"red"},{"score":{"name":"@p[scores={Mail=1..}]","objective":"Mail"}},{"text":", but either that player hasn't bought a mailbox or ","color":"red"},{"selector":"@p[scores={Mail=1..}]","color":"green"},{"text":" didn't supply the correct UUID...","color":"red"}]
scoreboard players set @e[name=Proxy3,type=armor_stand] Database 0
scoreboard players set @e[name=Proxy4,type=armor_stand] Database 0
tag @e[tag=MailTPStand] remove MailTried
tag @e[tag=MailTPStand] remove TPto
tag @a remove Mailing
scoreboard players set @a Mail 0
scoreboard players enable @a Mail
scoreboard players set @e[name=MailFind,type=armor_stand] Database 0
