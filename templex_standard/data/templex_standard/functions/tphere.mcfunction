execute @a[score_TPSend_min=1] ~ ~ ~ function templex_standard:tpa_success

scoreboard players add @s TPHR 1
execute @s[score_TPHR=1] ~ ~ ~ tellraw @s [{"text":"TPHere request sent.","color":"green"},{"text":"\nNow tell the other person to type ","color":"gray"},{"text":"\"","color":"dark_gray"},{"text":"/","color":"aqua"},{"text":"trigger TPSend set 1","color":"gold"},{"text":"\"","color":"dark_gray"},{"text":".","color":"gray"},{"text":"\nThey have ten seconds to send their request.","color":"red"}]
execute @s[score_TPHR_min=200] ~ ~ ~ function templex_standard:tpa_fail
