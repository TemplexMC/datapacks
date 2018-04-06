# Tellraw.
tellraw @a [{"text":"Vote Party","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"We have reached \u00A7650\u00A78/\u00A7650 \u00A7cvotes!","color":"aqua"}]
tellraw @a [{"text":"Vote Party","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Party time\u00A78!","color":"aqua"}]
# Setup.
scoreboard players add @a Karma 200
scoreboard players add @a TC 100
tag @a add VoteParty
# Resets.
scoreboard players set @s Database 0
