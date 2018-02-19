# Tellers
tellraw @s [{"text":"You currently have ","color":"green"},{"score":{"name":"@s","objective":"TC"},"color":"gold"},{"text":" \u00A74Templex \u00A74Credits\u00A7a.","color":"green"}]
tellraw @a[tag=OP] [{"text":"View TC System","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Showed ","color":"red"},{"selector":"@s","color":"green"},{"text":" their Templex Credit amount. It read \u00A78\"","color":"red"},{"score":{"name":"@s","objective":"TC"},"color":"gold"},{"text":" \u00A74Templex \u00A74Credits\u00A78\".","color":"red"}]
# Reset
scoreboard players enable @a ViewTC
scoreboard players set @s ViewTC 0
