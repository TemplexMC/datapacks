# Teleport.
teleport @s -920854 40 277317
# Tell.
tellraw @s [{"text":"Successfully teleported to the Battle Arena!","color":"green","italic":"true"}]
tellraw @s [{"text":"\u00A72Arena Version\u00A78: \u00A75[\u00A7ev\u00A7b1\u00A78.\u00A7b0\u00A78.\u00A7b5\u00A75]"}]
tellraw @a[tag=OP] [{"text":"Battle Arena Goto","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":" was just teleported to the Battle Arena!","color":"red"}]
# Reset.
scoreboard players reset @s TPArena
scoreboard players enable @a TPArena
