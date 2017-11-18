execute @s[score_Karma_min=1000] ~ ~ ~ scoreboard players add @s RTPs 1
execute @s[score_Karma_min=1000] ~ ~ ~ scoreboard players remove @s Karma 1000
execute @s[score_Karma_min=1000] ~ ~ ~ tellraw @a[tag=OP] [{"text":"BuyRTP System","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Just added 1 RTP to ","color":"red"},{"selector":"@s"},{"text":"'s profile.","color":"red"}]
execute @s[score_Karma_min=1000] ~ ~ ~ tellraw @s [{"text":"Successfully bought one RTP!","color":"blue","italic":"true"}]

execute @s[score_Karma=999] ~ ~ ~ tellraw @a[tag=OP] [{"text":"BuyRTP System","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s"},{"text":" just tried to buy another RTP, but didn't have enough Karma...\n","color":"red"},{"text":"Thier Karma: ","color":"gray"},{"score":{"name":"@s","objective":"Karma"},"color":"gold"},{"text":"\nTheir RTPs: ","color":"gray"},{"score":{"name":"@s","objective":"RTPs"},"color":"gold"}]
execute @s[score_Karma=999] ~ ~ ~ tellraw @s [{"text":"You don't have enough Karma to buy this!","color":"red"},{"text":"\nIf you want to know your Karma, hit the TAB button on your keyboard and look at the number next to your name.","color":"gray"}]

scoreboard players set @s BuyRTP 0
scoreboard players enable @a BuyRTP
