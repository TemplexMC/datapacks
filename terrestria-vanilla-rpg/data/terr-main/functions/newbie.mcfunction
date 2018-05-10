# Doers.
scoreboard players add @e[tag=t.stand,name=t.totalusers] t.db 1
scoreboard players set @s t.gold 100
scoreboard players set @s t.xp 0
scoreboard players set @s t.lvl 0
teleport @s 838530 64 135745
# Tellers.
tellraw @s [{"text":"\u00A76Terrestria \u00A78: \u00A7bRegistered you as player ","color":"aqua"},{"score":{"name":"@e[tag=t.stand,name=t.totalusers]","objective":"t.db"}},{"text":"! Welcome to Terrestria!","color":"aqua"}]
tellraw @s [{"text":"\u00A76Terrestria \u00A78: \u00A7bTeleported you to Aester.","color":"aqua"}]
tellraw @a[tag=t.perm.admin] [{"text":"\u00A76Terrestria \u00A78: "},{"selector":"@s","color":"yellow"},{"text":" \u00A7ajust joined at Aester.","color":"green"}]
# Taggers.
tag @s add t.newbieS1
tag @s add t.notnewS1
