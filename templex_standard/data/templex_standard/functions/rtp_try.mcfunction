execute @s[score_RTPs_min=1] ~ ~ ~ spreadplayers ~ ~ 100000 1000000 false @s
execute @s[score_RTPs_min=1] ~ ~ ~ tellraw @s [{"text":"RTPed successfully!","color":"blue","italic":"true"}]
execute @s[score_RTPs_min=1] ~ ~ ~ tellraw @a[tag=OP] [{"text":"RTP System","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Just successfully RTPed ","color":"red"},{"selector":"@s"},{"text":"!","color":"red"}]
execute @s[score_RTPs_min=1] ~ ~ ~ scoreboard players remove @s RTPs 1

execute @s[score_RTPs=0] ~ ~ ~ tellraw @a[tag=OP] [{"text":"RTP System","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s"},{"text":" just tried to RTP, but did not have enough RTPs...\n","color":"red"},{"text":"Thier Karma: ","color":"gray"},{"score":{"name":"@s","object":"Karma"},"color":"gold"},{"text":"\nThier RTPs: ","color":"gray"},{"score":{"name":"@s","objective":"RTPs"},"color":"gold"}]
execute @s[score_RTPs=0] ~ ~ ~ tellraw @s [{"text":"You do not have enough RTPs for this...\n","color":"red"},{"text":"You can buy more by typing \"/trigger BuyRTP set 1\"!","color":"gray"}]

scoreboard players set @s RTP 0
scoreboard players enable @a RTP
