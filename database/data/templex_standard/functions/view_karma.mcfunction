# Tellers
tellraw @s [{"text":"You currently have ","color":"green"},{"score":{"name":"@s","objective":"Karma"},"color":"gold"},{"text":" \u00A74Karma \u00A74Points\u00A7a.","color":"green"}]
tellraw @a[tag=OP] [{"text":"View Karma System","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Showed ","color":"red"},{"selector":"@s","color":"green"},{"text":" their Karma Point amount. It read \u00A78\"","color":"red"},{"score":{"name":"@s","objective":"Karma"},"color":"gold"},{"text":" \u00A74Karma \u00A74Points\u00A78\".","color":"red"}]
# Reset
scoreboard players enable @a ViewKarma
scoreboard players set @s ViewKarma 0
