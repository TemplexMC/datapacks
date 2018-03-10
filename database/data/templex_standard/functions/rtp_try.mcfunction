execute as @s[scores={RTPs=1..}] run tag @s add BuyingRTP
execute as @s[tag=BuyingRTP] run spreadplayers ~ ~ 100000 1000000 false @s
execute as @s[tag=BuyingRTP] run scoreboard players remove @s RTPs 1
execute as @s[tag=BuyingRTP,tag=!OP] run scoreboard players set @s Survival 1
execute as @s[tag=BuyingRTP] run tellraw @s [{"text":"RTPed successfully!","color":"green","italic":"true"},{"text":"\n\u00A77Current \u00A74RTPs\u00A78: "},{"score":{"name":"@s","objective":"RTPs"}},{"text":"\n\u00A77Current \u00A74Karma\u00A78: "},{"score":{"name":"@s","objective":"Karma"}}]
execute as @s[tag=BuyingRTP] run tellraw @a[tag=OP] [{"text":"RTP System","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Just successfully RTPed ","color":"red"},{"selector":"@s","color":"green"},{"text":"!","color":"red"}]
execute as @s[tag=BuyingRTP] run tag @s remove BuyingRTP

execute as @s[scores={RTPs=..0}] run tellraw @a[tag=OP] [{"text":"RTP System","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s"},{"text":" just tried to RTP, but did not have enough RTPs...\n","color":"red"},{"text":"Thier Karma: ","color":"gray"},{"score":{"name":"@s","objective":"Karma"},"color":"gold"},{"text":"\nThier RTPs: ","color":"gray"},{"score":{"name":"@s","objective":"RTPs"},"color":"gold"}]
execute as @s[scores={RTPs=..0}] run tellraw @s [{"text":"You do not have enough RTPs for this as you have \u00A760 \u00A7cRTPs left...\n","color":"red"},{"text":"You can buy more by typing \"/trigger BuyRTP set 1\"!","color":"gray"},{"text":"\n\u00A77Current \u00A74Karma\u00A78: "},{"score":{"name":"@s","objective":"Karma"}}]

scoreboard players set @s RTP 0
scoreboard players enable @a RTP
