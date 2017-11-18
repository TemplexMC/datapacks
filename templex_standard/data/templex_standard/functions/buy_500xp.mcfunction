execute @s[score_Karma_min=1500] ~ ~ ~ xp 500 @s
execute @s[score_Karma_min=1500] ~ ~ ~ tellraw @a[tag=OP] [{"text":"BuyXP System","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Successfully gave ","color":"red"},{"selector":"@s"},{"text":" 500","color":"gold"},{"text":" XP in exchange for ","color":"red"},{"text":"1500","color":"gold"},{"text":" Karma!","color":"red"}]
execute @s[score_Karma_min=1500] ~ ~ ~ tellraw @s [{"text":"Successfully bought ","color":"green"},{"text":"500","color":"gold"},{"text":" XP for ","color":"green"},{"text":"1500","color":"gold"},{"text":" Karma!","color":"green"}]
execute @s[score_Karma_min=1500] ~ ~ ~ scoreboard players remove @s Karma 1500

execute @s[score_Karma=149] ~ ~ ~ tellraw @a[tag=OP] [{"text":"BuyXP System","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s"},{"text":" just tried to buy ","color":"red"},{"text":"500","color":"gold"},{"text":" XP, but didn't have enough Karma!","color":"red"}]
execute @s[score_Karma=149] ~ ~ ~ tellraw @s [{"text":"You don't have enough Karma to do this! You must have at least ","color":"red"},{"text":"1500","color":"gold"},{"text":" Karma!","color":"red"}]

scoreboard players enable @a Buy10XP
scoreboard players set @s Buy10XP 0
