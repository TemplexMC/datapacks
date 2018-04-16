tellraw @s [{"text":"We didn't find that player... Either they aren't online or you didn't supply the correct UUID number... Sorry.","color":"red"}]
tellraw @a[tag=OP] [{"text":"Gifter","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":" just tried to TPA to a UUID of ","color":"red"},{"score":{"name":"@s","objective":"TPA"}},{"text":", but the system couldn't find them.","color":"red"}]
scoreboard players set @e[name=Proxy3,type=armor_stand] Database 0
scoreboard players set @e[name=Proxy4,type=armor_stand] Database 0
tag @a remove gifting.tried
tag @a remove gifting
scoreboard players reset @a Gift
scoreboard players enable @a Gift
scoreboard players reset @e[type=armor_stand,name=Gifter] Database
