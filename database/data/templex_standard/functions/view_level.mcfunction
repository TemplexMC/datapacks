# Tellers
tellraw @s [{"text":"You currently have a \u00A73Templex \u00A7alevel of ","color":"green"},{"score":{"name":"@s","objective":"tplx.lvl"},"color":"gold"},{"text":"\u00A7a!","color":"green"}]
tellraw @a[tag=OP] [{"text":"View Level System","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Showed ","color":"red"},{"selector":"@s","color":"green"},{"text":" their \u00A73Templex \u00A7clevel. It read \u00A78\"","color":"red"},{"score":{"name":"@s","objective":"tplx.lvl"},"color":"gold"},{"text":"\u00A78\".","color":"red"}]
# Reset
scoreboard players reset @s ViewLevel
scoreboard players enable @a ViewLevel
