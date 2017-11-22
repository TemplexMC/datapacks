execute as @s[scores={Karma=1000..}] run scoreboard players add @s RTPs 1
execute as @s[scores={Karma=1000..}] run scoreboard players remove @s Karma 1000
execute as @s[scores={Karma=1000..}] run tellraw @a[tag=OP] [{"text":"BuyRTP System","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Just added 1 RTP to ","color":"red"},{"selector":"@s"},{"text":"'s profile.","color":"red"}]
execute as @s[scores={Karma=1000..}] run tellraw @s [{"text":"Successfully bought one RTP!","color":"blue","italic":"true"}]

execute as @s[scores={Karma=..999}] run tellraw @a[tag=OP] [{"text":"BuyRTP System","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s"},{"text":" just tried to buy another RTP, but didn't have enough Karma...\n","color":"red"},{"text":"Thier Karma: ","color":"gray"},{"score":{"name":"@s","objective":"Karma"},"color":"gold"},{"text":"\nTheir RTPs: ","color":"gray"},{"score":{"name":"@s","objective":"RTPs"},"color":"gold"}]
execute as @s[scores={Karma=..999}] run tellraw @s [{"text":"You don't have enough Karma to buy this!","color":"red"},{"text":"\nIf you want to know your Karma, hit the TAB button on your keyboard and look at the number next to your name.","color":"gray"}]

scoreboard players set @s BuyRTP 0
scoreboard players enable @a BuyRTP
