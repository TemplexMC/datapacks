tellraw @s [{"text":"TP request timed out after ten seconds...","color":"red"}]
execute @a[score_TPSend_min=1] ~ ~ ~ scoreboard players set @s TPSR 0
scoreboard players enable @a TPSend
scoreboard players set @s TPSend 0
execute @a[score_TPHere_min=1] ~ ~ ~ scoreboard players set @s TPHR 0
scoreboard playes enable @a TPHere
scoreboard players set @s TPHere 0
