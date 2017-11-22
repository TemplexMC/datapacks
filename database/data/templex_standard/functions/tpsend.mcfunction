scoreboard players add @s TPSR 1
execute as @s[score={TPSR=1}] run tellraw @s [{"text":"TPSend request sent.","color":"green"},{"text":"\nNow tell the other person to type ","color":"gray"},{"text":"\"","color":"dark_gray"},{"text":"/","color":"aqua"},{"text":"trigger TPHere set 1","color":"gold"},{"text":"\"","color":"dark_gray"},{"text":".","color":"gray"},{"text":"\nThey have ten seconds to send their request.","color":"red"}]
execute @s[scores={TPSR=200..}] ~ ~ ~ function templex_standard:tpa_fail
