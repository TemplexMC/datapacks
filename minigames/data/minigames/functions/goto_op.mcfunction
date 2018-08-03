# Teleport.
teleport @s -75630 123 -304967
# Tell.
tellraw @s [{"text":"Successfully teleported to Opportunity!","color":"green","italic":"true"}]
tellraw @s [{"text":"\u00A72Opportunity Version\u00A78: \u00A75[\u00A7ev\u00A7b0\u00A78.\u00A7b0\u00A78.\u00A7b1\u00A75]"}]
tellraw @a[tag=OP] [{"text":"Opportunity Goto","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":" was just teleported to Opportunity!","color":"red"}]
# Reset.
scoreboard players reset @s TPOP
scoreboard players enable @a TPOP
