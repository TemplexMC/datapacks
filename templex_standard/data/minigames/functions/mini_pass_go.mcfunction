scoreboard players operation @s Inputter = Z Run

execute @s[score_Inputter=5,score_RunTick_min=1,tag=!InRun] ~ ~ ~ tp @s -580424 18 -1421573 -90 0
execute @s[score_Inputter=5,score_RunTick_min=1,tag=!InRun] ~ ~ ~ tellraw @s [{"text":"Successfully paid 1 ticket to play the Run Parkour Minigame! Wait for at least 3 players to join in order to play!","color":"green"}]
execute @s[score_Inputter=5,score_RunTick_min=1,tag=!InRun] ~ ~ ~ tellraw @a[tag=OP] [{"text":"Run TP System","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s"},{"text":" was just TPed to the Run Minigame! There are ","color":"red"},{"score":{"name":"Z","objective":"Run"},"color":"gold"},{"text":" players currently in the minigame!","color":"red"}]
execute @s[score_Inputter=5,score_RunTick_min=1,tag=!InRun] ~ ~ ~ scoreboard players remove @s[tag=!betaTester] RunTick 1
execute @s[score_Inputter=5,score_RunTick_min=1,tag=!InRun] ~ ~ ~ scoreboard players set @s Run 0
execute @s[score_Inputter=5,score_RunTick_min=1,tag=!InRun] ~ ~ ~ scoreboard players enable @a Run

execute @s[score_Inputter=5,tag=betaTester] ~ ~ ~ tp @s -580424 18 -1421573 -90 0
execute @s[score_Inputter=5,tag=betaTester] ~ ~ ~ tellraw @s [{"text":"Successfully paid 1 ticket to play the Run Parkour Minigame! Wait for at least 3 players to join in order to play!","color":"green"}]
execute @s[score_Inputter=5,tag=betaTester] ~ ~ ~ tellraw @a[tag=OP] [{"text":"Run TP System","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s"},{"text":" was just TPed to the Run Minigame! There are ","color":"red"},{"score":{"name":"Z","objective":"Run"},"color":"gold"},{"text":" players currently in the minigame!","color":"red"}]
execute @s[score_Inputter=5,tag=betaTester] ~ ~ ~ scoreboard players set @s Run 0
execute @s[score_Inputter=5,tag=betaTester] ~ ~ ~ scoreboard players enable @a Run

execute @s[score_Inputter_min=6,score_RunTick_min=1,tag=!InRun] ~ ~ ~ tellraw @s [{"text":"This game is already in session... Sorry. Try again once someone wins.","color":"red"}]
execute @s[score_Inputter_min=6,score_RunTick_min=1,tag=!InRun] ~ ~ ~ scoreboard players set @s Run 0
execute @s[score_Inputter_min=6,score_RunTick_min=1,tag=!InRun] ~ ~ ~ scoreboard players enable @a Run

execute @s[score_RunTick=0,tag=!InRun] ~ ~ ~ tellraw @s [{"text":"You don't have enough tickets to do this. Buy more at the store! (/trigger Store set 1)","color":"red"}]
execute @s[score_RunTick=0,tag=!InRun] ~ ~ ~ scoreboard players set @s Run 0
execute @s[score_RunTick=0,tag=!InRun] ~ ~ ~ scoreboard players enable @a Run

execute @s[tag=InRun] ~ ~ ~ tellraw @s [{"text":"You are already playing!","color":"red"}]
execute @s[tag=InRun] ~ ~ ~ scoreboard players set @s Run 0
execute @s[tag=InRun] ~ ~ ~ scoreboard players enable @a Run
