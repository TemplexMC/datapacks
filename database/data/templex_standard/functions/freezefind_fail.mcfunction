tellraw @s [{"text":"We didn't find that person... Either they aren't online, or you didn't supply the correct UUID number... Sorry.","color":"red"}]
tellraw @a[tag=OP] [{"text":"Freezing System","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":" just tried to someone with a UUID of ","color":"red"},{"score":{"name":"@s","objective":"Freeze"}},{"text":", but either that player online or ","color":"red"},{"selector":"@s","color":"green"},{"text":" didn't supply the correct UUID...","color":"red"}]
scoreboard players set @e[name=Proxy3,type=armor_stand] Database 0
scoreboard players set @e[name=Proxy4,type=armor_stand] Database 0
tag @a remove FreezingTried
tag @a remove GetFreeze
tag @a remove Freezing
scoreboard players reset @a Freeze
scoreboard players enable @a Freeze
scoreboard players set @e[name=Freezer,type=armor_stand] Database 0
