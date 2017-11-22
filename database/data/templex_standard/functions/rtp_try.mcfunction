execute as @s[scores={RTPs=1..}] run spreadplayers ~ ~ 100000 1000000 false @s
execute as @s[scores={RTPs=1..}] run tellraw @s [{"text":"RTPed successfully!","color":"blue","italic":"true"}]
execute as @s[scores={RTPs=1..}] run tellraw @a[tag=OP] [{"text":"RTP System","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Just successfully RTPed ","color":"red"},{"selector":"@s"},{"text":"!","color":"red"}]
execute as @s[scores={RTPs=1..}] run scoreboard players remove @s RTPs 1

execute as @s[score_RTPs=0] run tellraw @a[tag=OP] [{"text":"RTP System","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s"},{"text":" just tried to RTP, but did not have enough RTPs...\n","color":"red"},{"text":"Thier Karma: ","color":"gray"},{"score":{"name":"@s","object":"Karma"},"color":"gold"},{"text":"\nThier RTPs: ","color":"gray"},{"score":{"name":"@s","objective":"RTPs"},"color":"gold"}]
execute as @s[score_RTPs=0] run tellraw @s [{"text":"You do not have enough RTPs for this...\n","color":"red"},{"text":"You can buy more by typing \"/trigger BuyRTP set 1\"!","color":"gray"}]

scoreboard players set @s RTP 0
scoreboard players enable @a RTP
