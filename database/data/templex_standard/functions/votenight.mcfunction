# Already voted.
execute as @s[tag=SleepVoted] run tellraw @s [{"text":"You have already voted!","color":"red"}]
# Voting.
execute as @s[tag=!SleepVoted] run tellraw @s [{"text":"Voting for night...!","color":"aqua"}]
execute as @s[tag=!SleepVoted] run scoreboard players remove VSLEEP Database 1
execute as @s[tag=!SleepVoted] run tellraw @a [{"selector":"@s","color":"green"},{"text":" just voted for \u00A77night\u00A78! \u00A75[\u00A7bScore\u00A78: ","color":"gold"},{"score":{"name":"VSLEEP","objective":"Database"},"color":"gold"},{"text":" out of ","color":"aqua"},{"score":{"name":"PLAYO","objective":"Database"},"color":"gold"},{"text":"\u00A7b.\u00A75]"}]
execute as @s[tag=!SleepVoted] run tag @s add SleepVoted
# Reset.
scoreboard players set @s VoteNight 0
scoreboard players enable @a VoteNight
scoreboard players enable @a VoteDay
