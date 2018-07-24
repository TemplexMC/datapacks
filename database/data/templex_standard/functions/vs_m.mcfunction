## First.
execute if block -226 1 -116 grass run scoreboard players set PLAYO Database 0
execute if block -226 1 -116 grass as @a run scoreboard players add PLAYO Database 1
execute if block -226 1 -116 grass run scoreboard players set SVDIV Database 2
execute if block -226 1 -116 grass run scoreboard players operation PLAYO Database /= SVDIV Database
execute if block -226 1 -116 grass run tellraw @a [{"text":"Vote to turn it to day \u00A75[\u00A7bA \u00A7bscore \u00A7bof ","color":"gold"},{"score":{"name":"PLAYO","objective":"Database"},"color":"gold"},{"text":" \u00A7bis \u00A7bneeded \u00A7bfor \u00A7bday\u00A75]\u00A76:","color":"gold"}]
execute if block -226 1 -116 grass run tellraw @a [{"text":"[Turn to Day]","color":"green","hoverEvent":{"action":"show_text","value":"\u00A77Vote to turn it to day?"},"clickEvent":{"action":"run_command","value":"/trigger VoteDay"}},{"text":" "},{"text":"[Keep it Night]","color":"red","hoverEvent":{"action":"show_text","value":"\u00A77Want to keep it night?"},"clickEvent":{"action":"run_command","value":"/trigger VoteNight"}}]
execute if block -226 1 -116 grass run scoreboard players enable @a VoteDay
execute if block -226 1 -116 grass run scoreboard players enable @a VoteNight
execute if block -226 1 -116 grass run setblock -226 1 -116 glass
## During Night.
#  Timer.
#execute if block -226 1 -116 glass run scoreboard players set PLAYO Database 0
#execute if block -226 1 -116 glass as @a run scoreboard players add PLAYO Database 1
execute if block -226 1 -116 glass run scoreboard players operation PLAYO Database = Players-Online Stats
execute if block -226 1 -116 glass run scoreboard players set SVDIV Database 2
execute if block -226 1 -116 glass run scoreboard players operation PLAYO Database /= SVDIV Database
execute if block -226 1 -116 glass run scoreboard players add VSTIMER Database 1
#  YES.
execute if block -226 1 -116 glass if score VSLEEP Database = PLAYO Database run tellraw @a [{"text":"Players have voted to change to day! Changing to day...","color":"gray"}]
execute if block -226 1 -116 glass if score VSLEEP Database = PLAYO Database run weather clear 10000
execute if block -226 1 -116 glass if score VSLEEP Database = PLAYO Database run time set 2147448005
execute if block -226 1 -116 glass if score VSLEEP Database = PLAYO Database run tag @a remove SleepVoted
execute if block -226 1 -116 glass if score VSLEEP Database = PLAYO Database run scoreboard players reset @a VoteDay
execute if block -226 1 -116 glass if score VSLEEP Database = PLAYO Database run scoreboard players reset @a VoteNight
execute if block -226 1 -116 glass if score VSLEEP Database = PLAYO Database run scoreboard players enable @a VoteDay
execute if block -226 1 -116 glass if score VSLEEP Database = PLAYO Database run scoreboard players enable @a VoteNight
execute if block -226 1 -116 glass if score VSLEEP Database = PLAYO Database run scoreboard players reset VSTIMER Database
execute if block -226 1 -116 glass if score VSLEEP Database = PLAYO Database run scoreboard players set VSLEEP Database 10000
execute if block -226 1 -116 glass if score VSLEEP Database matches 10000 run scoreboard players reset PLAYO Database
execute if block -226 1 -116 glass if score VSLEEP Database matches 10000 run scoreboard players reset VSLEEP Database
#  NO.
execute if block -226 1 -116 glass if score VSTIMER Database matches 6000 run tellraw @a [{"text":"The majority of players do not want day right now... Keeping night...","color":"gray"}]
execute if block -226 1 -116 glass if score VSTIMER Database matches 6000 run tag @a remove SleepVoted
execute if block -226 1 -116 glass if score VSTIMER Database matches 6000 run scoreboard players reset @a VoteDay
execute if block -226 1 -116 glass if score VSTIMER Database matches 6000 run scoreboard players reset @a VoteNight
execute if block -226 1 -116 glass if score VSTIMER Database matches 6000 run scoreboard players enable @a VoteDay
execute if block -226 1 -116 glass if score VSTIMER Database matches 6000 run scoreboard players enable @a VoteNight
execute if block -226 1 -116 glass if score VSTIMER Database matches 6000 run scoreboard players reset VSTIMER Database
