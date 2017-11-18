execute @s[score_Buy=100] ~ ~ ~ tellraw @s [{"text":"If you don't see any other text besides this, stand closer to the sign.","color":"red"}]
scoreboard players set @s[score_Buy=100] Buy 101
scoreboard players add @s Buy 1
execute @s[score_Buy_min=102] ~ ~ ~ scoreboard players set @s Score 1
execute @s[score_Buy_min=102] ~ ~ ~ scoreboard players reset @s Buy
execute @s[score_Buy_min=102] ~ ~ ~ scoreboard players enable @a Buy
