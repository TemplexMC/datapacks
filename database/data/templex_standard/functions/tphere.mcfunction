execute as @p[scores={TPSend=1..}] run function templex_standard:tpa_success

scoreboard players add @s TPHR 1
execute as @s[scores={TPHR=1}] run tellraw @s [{"text":"TPHere request sent.","color":"green"},{"text":"\nNow tell the other person to type ","color":"gray"},{"text":"\"","color":"dark_gray"},{"text":"/","color":"aqua"},{"text":"trigger TPSend set 1","color":"gold"},{"text":"\"","color":"dark_gray"},{"text":".","color":"gray"},{"text":"\nThey have ten seconds to send their request.","color":"red"}]
execute as @s[scores={TPHR=200..}] run function templex_standard:tpa_fail
