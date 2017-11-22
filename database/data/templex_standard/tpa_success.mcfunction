tp @a[score_TPSend_min=1] @a[score_TPHere_min=1]
execute @a[score_TPSend_min=1] ~ ~ ~ tellraw @s [{"text":"Successfully TPed you to ","color":"red"},{"selector":"@a[score_TPHere_min=1]"},{"text":"!","color":"red"}]
execute @a[score_TPHere_min=1] ~ ~ ~ tellraw @s [{"text":"Successfully TPed ","color":"red"},{"selector":"@a[score_TPSend_min=1]"},{"text":" to you!","color":"red"}]
scoreboard players set @a[score_TPSend_min=1] TPSend 0
scoreboard players set @a[score_TPHere_min=1] TPHere 0
scoreboard players enable @a TPSend
scoreboard players enable @a TPHere
scoreboard players set @a TPSR 0
scoreboard players set @a TPHR 0
