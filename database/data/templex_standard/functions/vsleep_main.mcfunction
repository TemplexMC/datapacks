# Counting.
scoreboard players add @e[name=Proxy1,type=armor_stand] Database 1
# Tellraw.
execute as @e[name=Proxy1,type=armor_stand,scores={Database=1}] run tellraw @a [{"selector":"@p[nbt={Sleeping:1b}]","color":"green"},{"text":" is now sleeping... Vote to turn it to day:","color":"gold"}]
execute as @e[name=Proxy1,type=armor_stand,scores={Database=1}] run tellraw @a [{"text":"[Turn to Day]","color":"green","hoverEvent":{"action":"show_text","value":"\u00A77Vote to turn it to day?"},"clickEvent":{"action":"run_command","value":"/trigger VoteDay"}},{"text":" "},{"text":"[Keep it Night]","color":"red","hoverEvent":{"action":"show_text","value":"\u00A77Want to keep it night?"},"clickEvent":{"action":"run_command","value":"/trigger VoteNight"}}]
# Enabling.
execute as @e[name=Proxy1,type=armor_stand,scores={Database=1}] run scoreboard players enable @a VoteDay
execute as @e[name=Proxy1,type=armor_stand,scores={Database=1}] run scoreboard players enable @a VoteNight
# Subtraction checking.
scoreboard players set @e[name=Proxy1,type=armor_stand] VoteDay 2
scoreboard players operation @e[name=Proxy2,type=armor_stand] Database = Players-Online Stats
scoreboard players operation @e[name=Proxy2,type=armor_stand] Database /= @e[name=Proxy1,type=armor_stand] VoteDay
scoreboard players operation @e[name=Proxy2,type=armor_stand] Database -= @e[name=Proxy2,type=armor_stand] VoteDay
# Complete.
execute as @e[name=Proxy2,type=armor_stand,scores={Database=0}] run tellraw @a [{"text":"Players have voted to change to day! Changing to day...","color":"gray"}]
execute as @e[name=Proxy2,type=armor_stand,scores={Database=0}] run scoreboard players set @e[name=Proxy1,type=armor_stand] Database 0
execute as @e[name=Proxy2,type=armor_stand,scores={Database=0}] run weather clear 10000
execute as @e[name=Proxy2,type=armor_stand,scores={Database=0}] run time set 2147448000
execute as @e[name=Proxy2,type=armor_stand,scores={Database=0}] run tag @a remove VSLEEP
execute as @e[name=Proxy2,type=armor_stand,scores={Database=0}] run tag @a remove SleepVoted
execute as @e[name=Proxy2,type=armor_stand,scores={Database=0}] run scoreboard players reset @a VoteDay
execute as @e[name=Proxy2,type=armor_stand,scores={Database=0}] run scoreboard players reset @a VoteNight
execute as @e[name=Proxy2,type=armor_stand,scores={Database=0}] run scoreboard players reset @s VoteDay
execute as @e[name=Proxy2,type=armor_stand,scores={Database=0}] run scoreboard players reset @e[name=Proxy3,type=armor_stand] VoteDay
# Timer done.
execute as @e[name=Proxy1,type=armor_stand,scores={Database=300..}] run tag @a remove VSLEEP
execute as @e[name=Proxy1,type=armor_stand,scores={Database=300..}] run tag @a remove SleepVoted
execute as @e[name=Proxy1,type=armor_stand,scores={Database=300..}] run scoreboard players reset @a VoteDay
execute as @e[name=Proxy1,type=armor_stand,scores={Database=300..}] run scoreboard players reset @a VoteNight
execute as @e[name=Proxy1,type=armor_stand,scores={Database=300..}] run scoreboard players reset @e[name=Proxy2,type=armor_stand] VoteDay
execute as @e[name=Proxy1,type=armor_stand,scores={Database=300..}] run scoreboard players reset @e[name=Proxy3,type=armor_stand] VoteDay
execute as @e[name=Proxy1,type=armor_stand,scores={Database=300..}] run tellraw @a [{"text":"The majority of players do not want day right now... Keeping night.","color":"gray"}]
execute as @e[name=Proxy1,type=armor_stand,scores={Database=300..}] run scoreboard players set @s Database 0
