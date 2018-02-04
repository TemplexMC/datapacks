tellraw @s [{"text":"We didn't find that your mailbox... Either you haven't bought one yet, or our system failed... Sorry.","color":"red"}]
tellraw @a[tag=OP] [{"text":"Mail System","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@p[scores={MailRead=1..}]","color":"green"},{"text":" just tried to get their mailbox with a UUID of ","color":"red"},{"score":{"name":"@p[scores={MailRead=1..}]","objective":"UUID"}},{"text":", but either that player hasn't bought a mailbox or our system failed...","color":"red"}]
scoreboard players set @e[name=Proxy3,type=armor_stand] Database 0
scoreboard players set @e[name=Proxy4,type=armor_stand] Database 0
tag @e[tag=MailReadStand] remove ReadTried
tag @e[tag=MailReadStand] remove CloneTo
tag @a remove Reading
scoreboard players set @a MailRead 0
scoreboard players enable @a MailRead
scoreboard players enable @a Mail
scoreboard players set @e[name=ReadFind,type=armor_stand] Database 0
