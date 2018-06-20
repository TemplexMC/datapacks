execute as @s[scores={TC=..0}] run tellraw @a[tag=OP] [{"text":"BuyTPA System","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s"},{"text":" just tried to buy another TPA, but didn't have enough TC...\n","color":"red"},{"text":"Thier TC: ","color":"gray"},{"score":{"name":"@s","objective":"TC"},"color":"gold"},{"text":"\nTheir TPAs: ","color":"gray"},{"score":{"name":"@s","objective":"TPAs"},"color":"gold"}]
execute as @s[scores={TC=..0}] run tellraw @s [{"text":"You don't have enough TC to buy this!","color":"red"},{"text":"\n\u00A77Current \u00A74TPAs\u00A78: "},{"score":{"name":"@s","objective":"TPAs"},"color":"gold"},{"text":"\n\u00A77Current \u00A74TC\u00A78: "},{"score":{"name":"@s","objective":"TC"},"color":"gold"}]

execute as @s[scores={TC=1..}] run scoreboard players add @s TPAs 1
execute as @s[scores={TC=1..}] run tellraw @a[tag=OP] [{"text":"BuyTPA System","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Just added 1 TPA to ","color":"red"},{"selector":"@s"},{"text":"'s profile.","color":"red"}]
execute as @s[scores={TC=1..}] run tellraw @s [{"text":"Successfully bought one TPA!","color":"green","italic":"true"},{"text":"\n\u00A77Current \u00A74TPAs\u00A78: "},{"score":{"name":"@s","objective":"TPAs"},"color":"gold"},{"text":"\n\u00A77Current \u00A74TC\u00A78: "},{"score":{"name":"@s","objective":"TC"},"color":"gold"}]
execute as @s[scores={TC=1..}] run scoreboard players remove @s TC 25

scoreboard players reset @s BuyTPA
scoreboard players enable @a BuyTPA
