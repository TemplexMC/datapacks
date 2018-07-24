# Already voted.
execute as @s[tag=SleepVoted] run tellraw @s [{"text":"You have already voted!","color":"red"}]
# Voting.
execute as @s[tag=!SleepVoted] run tellraw @s [{"text":"Voting for day...!","color":"aqua"}]
execute as @s[tag=!SleepVoted] run scoreboard players add VSLEEP Database 1
execute as @s[tag=!SleepVoted] run tellraw @a [{"selector":"@s","color":"green"},{"text":" just voted for \u00A7eday\u00A78! \u00A75[\u00A7bScore\u00A78: ","color":"gold"},{"score":{"name":"VSLEEP","objective":"Database"},"color":"gold"},{"text":" out of ","color":"aqua"},{"score":{"name":"PLAYO","objective":"Database"},"color":"gold"},{"text":"\u00A7b.\u00A75]"}]
execute as @s[tag=!SleepVoted] run tag @s add SleepVoted
# Reset.
scoreboard players set @s VoteDay 0
scoreboard players enable @a VoteDay
scoreboard players enable @a VoteNight
