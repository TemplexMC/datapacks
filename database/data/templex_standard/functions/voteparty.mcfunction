# Tellraw.
tellraw @a [{"text":"VoteParty","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"We have reached \u00A7650\u00A78/\u00A7650 \u00A7bvotes!","color":"aqua"}]
tellraw @a [{"text":"VoteParty","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Party time! Everybody gets x2 TC and KP for the next hour.","color":"aqua"}]
# Setup.
scoreboard players add @a Karma 500
scoreboard players add @a TC 300
tag @a add VoteParty
# Resets.
scoreboard players set VP Database 0
