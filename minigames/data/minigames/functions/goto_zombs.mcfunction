# Teleport.
teleport @s -923151 17 -300161
# Tell.
tellraw @s [{"text":"Successfully teleported to Zombs!","color":"green","italic":"true"}]
tellraw @s [{"text":"\u00A72Zombs Version\u00A78: \u00A75[\u00A7ev\u00A7b0\u00A78.\u00A7b0\u00A78.\u00A7b1\u00A75]"}]
tellraw @a[tag=OP] [{"text":"Zombs Goto","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":" was just teleported to Zombs!","color":"red"}]
# Reset.
scoreboard players reset @s TPZombs
scoreboard players enable @a TPZombs
