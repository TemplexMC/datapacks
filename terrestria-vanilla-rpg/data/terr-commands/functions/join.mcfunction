## No Saves.
#  Doers.
execute as @s[tag=t.notnewS1] as @s[tag=!t.hassaves] run teleport @s 838530 64 135745
#  Tellers.
execute as @s[tag=t.notnewS1] as @s[tag=!t.hassaves] run tellraw @s [{"text":"\u00A76Terrestria \u00A78: \u00A7bTeleported you to Aester.","color":"aqua"}]
execute as @s[tag=t.notnewS1] as @s[tag=!t.hassaves] run tellraw @a[tag=t.perm.admin] [{"text":"\u00A76Terrestria \u00A78: "},{"selector":"@s","color":"yellow"},{"text":" \u00A7ajust joined at Aester.","color":"green"}]
### SAVES ###
## Default.
#
## Reset.
#  Taggers.
tag @s add t.ingame
#  Setters.
gamemode adventure @s[tag=!t.perm.admin,gamemode=!adventure]
#  Resetters.
scoreboard players reset @s t.join
scoreboard players enable @a t.join
## Newbie. --> Must be at bottom.
#  Doers.
execute as @s[tag=!t.notnewS1] run function terr-main:newbie
